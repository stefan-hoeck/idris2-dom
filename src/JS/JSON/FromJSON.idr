||| Interface and utilities for marshalling Idris2 values from JSON
||| by using the functionality from JS.Object and Javascript's
||| internal JSON parser.
|||
||| For regular algebraic data types, implementations can automatically
||| be derived using elaborator reflection.
|||
||| Operators and functionality strongly influenced by Haskell's aeson
||| library
|||
||| Note: This should eventually be generalized for different
||| `Value` types and be moved to its own library.
module JS.JSON.FromJSON

import Data.List1
import Data.Vect
import Control.Monad.Trans
import JS.Array
import JS.Number
import JS.JSON.ToJSON
import JS.Object
import JS.Undefined
import JS.Util

import Generics.Derive

%language ElabReflection

--------------------------------------------------------------------------------
--          Types
--------------------------------------------------------------------------------

public export
data JSONPathElement = Key String | Index Bits32

%runElab derive "JSONPathElement" [Generic,Meta,Show,Eq]

public export
JSONPath : Type
JSONPath = List JSONPathElement

public export
JSONErr : Type
JSONErr = (JSONPath,String)

public export
Result : Type -> Type
Result = Either JSONErr

public export
Parser : Type -> Type
Parser a = Value -> Either JSONErr a

public export
orElse : Either a b -> Lazy (Either a b) -> Either a b
orElse r@(Right _) _ = r
orElse _           v = v

--------------------------------------------------------------------------------
--          Error Formatting
--------------------------------------------------------------------------------

||| Format a <http://goessner.net/articles/JsonPath/ JSONPath> as a 'String'
||| which represents the path relative to some root object.
export
formatRelativePath : JSONPath -> String
formatRelativePath path = format "" path
  where
    isIdentifierKey : List Char -> Bool
    isIdentifierKey []      = False
    isIdentifierKey (x::xs) = isAlpha x && all isAlphaNum xs

    escapeChar : Char -> String
    escapeChar '\'' = "\\'"
    escapeChar '\\' = "\\\\"
    escapeChar c    = singleton c

    escapeKey : List Char -> String
    escapeKey = fastConcat . map escapeChar

    formatKey : String -> String
    formatKey key =
      let chars = fastUnpack key
       in if isIdentifierKey chars then fastPack $ '.' :: chars
          else "['" ++ escapeKey chars ++ "']"

    format : String -> JSONPath -> String
    format pfx []                = pfx
    format pfx (Index idx :: parts) = format (pfx ++ "[" ++ show idx ++ "]") parts
    format pfx (Key key :: parts)   = format (pfx ++ formatKey key) parts

||| Format a <http://goessner.net/articles/JsonPath/ JSONPath> as a 'String',
||| representing the root object as @$@.
export
formatPath : JSONPath -> String
formatPath path = "$" ++ formatRelativePath path

||| Annotate an error message with a
||| <http://goessner.net/articles/JsonPath/ JSONPath> error location.
export
formatError : JSONPath -> String -> String
formatError path msg = "Error in " ++ formatPath path ++ ": " ++ msg

--------------------------------------------------------------------------------
--          Interface
--------------------------------------------------------------------------------

public export
interface FromJSON a  where
  fromJSON : Parser a

export
decode : FromJSON a => String -> Result a
decode s = mapFst ((Nil,) . dispErr) (parse s) >>= fromJSON

export
decodeEither : FromJSON a => String -> Either String a
decodeEither = mapFst (uncurry formatError) . decode

export
decodeMaybe : FromJSON a => String -> Maybe a
decodeMaybe = either (const Nothing) Just . decode

--------------------------------------------------------------------------------
--          Parsing Utilities
--------------------------------------------------------------------------------

typeOf : Value -> String
typeOf (Arr _)     = "Array"
typeOf (Boolean _) = "Boolean"
typeOf Null        = "Null"
typeOf (Num _)     = "Number"
typeOf (Obj _)     = "Object"
typeOf (Str _)     = "String"

export
fail : String -> Result a
fail s = Left (Nil,s)

typeMismatch : String -> Parser a
typeMismatch expected actual =
  fail $ #"expected \#{expected}, but encountered \#{typeOf actual}"#

unexpected : Parser a
unexpected actual = fail $ #"unexpected \#{typeOf actual}"#

export
modifyFailure : (String -> String) -> Result a -> Result a
modifyFailure f = mapFst (map f)

||| If the inner 'Parser' failed, prepend the given string to the failure
||| message.
export
prependFailure : String -> Result a -> Result a
prependFailure = modifyFailure . (++)

export
prependContext : String -> Result a -> Result a
prependContext name = prependFailure #"parsing \#{name} failed, "#

infixr 3 <?>, .:, .:?, .:!

export
(<?>) : Result a -> JSONPathElement -> Result a
r <?> elem = mapFst (\(path,s) => (elem :: path,s)) r

withValue :  (type : String)
          -> (Value -> Maybe v)
          -> (name : Lazy String)
          -> (v -> Result a)
          -> Parser a
withValue s get n f val = case get val of
                            Just v  => f v
                            Nothing => prependContext n $ typeMismatch s val

export
withObject : Lazy String -> (IObject -> Result a) -> Parser a
withObject = withValue "Object" getObject

export
withBool : Lazy String -> (Bool -> Result a) -> Parser a
withBool = withValue "Boolean" getBool

export
withString : Lazy String -> (String -> Result a) -> Parser a
withString = withValue "String" getStr

export
withNumber : Lazy String -> (Double -> Result a) -> Parser a
withNumber = withValue "Number" getNum

export
withInteger : Lazy String -> (Integer -> Result a) -> Parser a
withInteger s f =
  withNumber s $ \d =>
    let n = the Integer (cast d)
    in if d == fromInteger n
          then f n
          else fail #"not an integer: \#{show d}"#

export
withLargeInteger : Lazy String -> (Integer -> Result a) -> Parser a
withLargeInteger s f =
  withString s $ \str =>
    case parseInteger {a = Integer} str of
         Nothing => fail #"not an integer: \#{show str}"#
         Just n  => f n

export
boundedIntegral :  Num a
                => Lazy String
                -> (lower : Integer)
                -> (upper : Integer)
                -> Parser a
boundedIntegral s lo up =
  withInteger s $ \n =>
    if n >= lo && n <= up
       then pure $ fromInteger n
       else fail #"integer out of bounds: \#{show n}"#

export
boundedLargeIntegral :  Num a
                     => Lazy String
                     -> (lower : Integer)
                     -> (upper : Integer)
                     -> Parser a
boundedLargeIntegral s lo up =
  withLargeInteger s $ \n =>
    if n >= lo && n <= up
       then pure $ fromInteger n
       else fail #"integer out of bounds: \#{show n}"#

export
withArray : Lazy String -> (IArray Value -> Result a) -> Parser a
withArray = withValue "Array" getArray

export
withList : Lazy String -> (List Value -> Result a) -> Parser a
withList s f = withArray s (f . arrayToList)

||| See `.:`
export
explicitParseField : Parser a -> IObject -> String -> Result a
explicitParseField p obj key =
  case valueAt obj key of
       Nothing => fail #"key \#{show key} not found"#
       Just v  => p v <?> Key key

||| See `.:?`
export
explicitParseFieldMaybe : Parser a -> IObject -> String -> Result (Maybe a)
explicitParseFieldMaybe p obj key =
  case valueAt obj key of
       Nothing   => Right Nothing
       Just Null => Right Nothing
       Just v    => Just <$> p v <?> Key key

||| See `.:!`
export
explicitParseFieldMaybe' : Parser a -> IObject -> String -> Result (Maybe a)
explicitParseFieldMaybe' p obj key =
  case valueAt obj key of
       Nothing   => Right Nothing
       Just v    => Just <$> p v <?> Key key

||| Retrieve the value associated with the given key of an `IObject`.
||| The result is `empty` if the key is not present or the value cannot
||| be converted to the desired type.
|||
||| This accessor is appropriate if the key and value /must/ be present
||| in an object for it to be valid.  If the key and value are
||| optional, use `.:?` instead.
export
(.:) : FromJSON a => IObject -> String -> Result a
(.:) = explicitParseField fromJSON

||| Retrieve the value associated with the given key of an `IObject`. The
||| result is `Nothing` if the key is not present or if its value is `Null`,
||| or `empty` if the value cannot be converted to the desired type.
|||
||| This accessor is most useful if the key and value can be absent
||| from an object without affecting its validity.  If the key and
||| value are mandatory, use `.:` instead.
export
(.:?) : FromJSON a => IObject -> String -> Result (Maybe a)
(.:?) = explicitParseFieldMaybe fromJSON

||| Retrieve the value associated with the given key of an `IObject`
||| The result is `Nothing` if the key is not present or 'empty' if the
||| value cannot be converted to the desired type.
|||
||| This differs from `.:?` by attempting to parse `Null` the same as any
||| other JSON value, instead of interpreting it as `Nothing`.
export
(.:!) : FromJSON a => IObject -> String -> Result (Maybe a)
(.:!) = explicitParseFieldMaybe' fromJSON

||| Function variant of `.:`.
export
parseField : FromJSON a => IObject -> String -> Result a
parseField = (.:)

||| Function variant of `.:?`.
export
parseFieldMaybe : FromJSON a => IObject -> String -> Result (Maybe a)
parseFieldMaybe = (.:?)

||| Function variant of `.:!`.
export
parseFieldMaybe' : FromJSON a => IObject -> String -> Result (Maybe a)
parseFieldMaybe' = (.:!)

--------------------------------------------------------------------------------
--          Implementations
--------------------------------------------------------------------------------

export
FromJSON Void where
  fromJSON v = fail "Cannot parse Void"

export
FromJSON () where
  fromJSON = withList "()" $
    \case Nil    => pure ()
          _ :: _ => fail "parsing () failed, expected empty list"

export
FromJSON Bool where
  fromJSON = withBool "Bool" pure

export
FromJSON Double where
  fromJSON = withNumber "Double" pure

export
FromJSON Bits8 where
  fromJSON = boundedIntegral "Bits8" 0 0xff

export
FromJSON Bits16 where
  fromJSON = boundedIntegral "Bits16" 0 0xffff

export
FromJSON Bits32 where
  fromJSON = boundedIntegral "Bits32" 0 0xffffffff

export
FromJSON Bits64 where
  fromJSON = boundedLargeIntegral "Bits64" 0 0xffffffffffffffff

export
FromJSON Int8 where
  fromJSON = boundedIntegral "Int8" (-0x80) 0x7f

export
FromJSON Int16 where
  fromJSON = boundedIntegral "Int16" (-0x8000) 0x7fff

export
FromJSON Int32 where
  fromJSON = boundedIntegral "Int32" (-0x80000000) 0x7fffffff

export
FromJSON Int64 where
  fromJSON = boundedIntegral "Int64" (-0x8000000000000000) 0x7fffffffffffffff

export
FromJSON Int where
  fromJSON = boundedLargeIntegral "Int" (-0x8000000000000000) 0x7fffffffffffffff

export
FromJSON Nat where
  fromJSON = withLargeInteger "Nat" $ \n =>
    if n >= 0 then pure $ fromInteger n
    else fail #"not a natural number: \#{show n}"#

export
FromJSON Integer where
  fromJSON = withLargeInteger "Integer" pure

export
FromJSON String where
  fromJSON = withString "String" pure

export
FromJSON Char where
  fromJSON = withString "Char" $
    \str => case strM str of
                 (StrCons c "") => pure c
                 _ => fail "expected a string of length 1"

export
FromJSON a => FromJSON (Maybe a) where
  fromJSON Null = pure Nothing
  fromJSON v    = Just <$> fromJSON v

export
FromJSON a => FromJSON (Optional a) where
  fromJSON = map maybeToOptional . fromJSON

export
FromJSON a => FromJSON (List a) where
  fromJSON = withList "List" $ traverse fromJSON

export
FromJSON a => FromJSON (IArray a) where
  fromJSON = withArray "IArray" $ traverse fromJSON

export
FromJSON a => FromJSON (List1 a) where
  fromJSON = withList "List1" $
    \case Nil    => fail #"expected non-empty list"#
          h :: t => traverse fromJSON (h ::: t)

export
{n : Nat} -> FromJSON a => FromJSON (Vect n a) where
  fromJSON = withList #"Vect \#{show n}"# $
    \vs => case toVect n vs of
                Just vect => traverse fromJSON vect
                Nothing   => fail #"expected list of length \#{show n}"#

export
(FromJSON a, FromJSON b) => FromJSON (Either a b) where
  fromJSON = withObject "Either" $ \o =>
               map Left (o .: "Left") `orElse` map Right (o .: "Right")

--------------------------------------------------------------------------------
--          SOP Implementations
--------------------------------------------------------------------------------

-- TODO: This should go as a utility to idris2-sop
size : NP f ks -> Nat
size []        = 0
size (_ :: vs) = size vs + 1

-- TODO: This should go (in sligthly modified form) as a utility to idris2-sop
values : Nat -> NP f ks -> List Value -> Result (NP (K Value) ks)
values n [] []              = pure []
values n [] (_ :: _)        = fail #"expected array of \#{show n} values"#
values n (_ :: _) []        = fail #"expected array of \#{show n} values"#
values n (_ :: t) (v :: vs) = (v ::) <$> values n t vs

np : (all : NP (FromJSON . f) ks) => List Value -> Result (NP f ks)
np vs = do npVS <- values (size all) all vs
           hctraverse (FromJSON . f) fromJSON npVS

export
NP (FromJSON . f) ks => FromJSON (NP f ks) where
  fromJSON = withList "NP" np

export
(FromJSON a, FromJSON b) => FromJSON (a,b) where
  fromJSON = map (\[x,y] => (x,y)) . fromJSON {a = NP I [a,b] }

-- TODO: This should go as a utility to idris2-sop
inj : NP g ks -> NP (Injection f ks) ks
inj []       = []
inj (_ :: t) = Z :: mapNP (S .) (inj t)

ns : (all : NP (FromJSON . f) ks) => Parser (NS f ks)
ns = withObject "NS" $ getFirst
                     $ hcliftA2 (FromJSON . f) parse (inj all) (indices all)
  where getFirst :  NP (K (IObject -> Result (NS f ks))) ts
                 -> IObject
                 -> Result (NS f ks)
        getFirst []        _ = fail #"Can't parse nullary sum"#
        getFirst (f :: []) o = f o
        getFirst (f :: fs) o = f o `orElse` getFirst fs o

        parse : FromJSON (f a) =>
                (f a -> NS f ks) -> Bits32 -> IObject -> Result (NS f ks)
        parse f ix o = map f (o .: show ix)

export
NP (FromJSON . f) ks => FromJSON (NS f ks) where
  fromJSON = ns

--------------------------------------------------------------------------------
--          Elab Deriving
--------------------------------------------------------------------------------

fromJSONC1 : NP (FromJSON . f) ks => ConInfo ks -> Parser (NP f ks)
fromJSONC1 info = maybe fromJSON decRecord (argNames info)
  where decRecord : NP (K String) ks -> Parser (NP f ks)
        decRecord names = withObject info.conName $ \o =>
                            hctraverse (FromJSON . f) (parseField o) names

fromJSONSOP1 : NP (FromJSON . f) ks => TypeInfo [ks] -> Parser (SOP f [ks])
fromJSONSOP1 (MkTypeInfo _ n (i :: [])) v =
  map (MkSOP . Z) (fromJSONC1 i v) <?> Key n
fromJSONSOP1 (MkTypeInfo _ _ (_ :: _ :: _)) impossible
fromJSONSOP1 (MkTypeInfo _ _ []) impossible

fromJSONC :  NP (FromJSON . f) ks
          => (typeName : String)
          -> ConInfo ks
          -> Parser (NP f ks)
fromJSONC tn i@(MkConInfo _ n _) =
  withObject tn $ \o => explicitParseField (fromJSONC1 i) o n

fromJSONSOP :  (all : POP_ k (FromJSON . f) kss)
            => TypeInfo kss -> Parser (SOP_ k f kss)
fromJSONSOP {all = MkPOP nps} (MkTypeInfo _ tn cons) =
  getFirst $ hcliftA2 (NP $ FromJSON . f) parse (injSOP nps) cons
  where getFirst :  NP_ (List k) (K (Parser (SOP_ k f kss))) tss -> Parser (SOP_ k f kss)
        getFirst []        _ = fail #"Can't parse nullary sum"#
        getFirst (f :: []) v = f v
        getFirst (f :: fs) v = f v `orElse` getFirst fs v

        -- TODO: This should go as a utility to idris2-sop
        injSOP : NP_ (List k) g tss -> NP_ (List k) (InjectionSOP f tss) tss
        injSOP np = hmap (MkSOP .) $ inj {ks = tss} np

        parse :  NP_ k (FromJSON . f) ts
              => (NP_ k f ts -> SOP_ k f kss)
              -> ConInfo_ k ts
              -> Parser (SOP_ k f kss)
        parse f c = map f . fromJSONC tn c

export
genFromJSON1 : Meta a [ks] => NP FromJSON ks => Parser a
genFromJSON1 = map to . fromJSONSOP1 (metaFor a)

export
genFromJSON : Meta a code => POP FromJSON code => Parser a
genFromJSON = map to . fromJSONSOP (metaFor a)

public export
mkFromJSON : (fromJSON : Parser a) -> FromJSON a
mkFromJSON = %runElab check (var $ singleCon "FromJSON")

namespace Derive

  ||| Derives a `FromJSON` implementation for the given data type
  export
  FromJSON : DeriveUtil -> InterfaceImpl
  FromJSON g = MkInterfaceImpl "FromJSON" Export []
                    `(mkFromJSON genFromJSON)
                    (implementationType `(FromJSON) g)

  ||| Derives a `FromJSON` implementation for the given single-constructor
  ||| data type
  export
  FromJSON1 : DeriveUtil -> InterfaceImpl
  FromJSON1 g = MkInterfaceImpl "FromJSON" Export []
                    `(mkFromJSON genFromJSON1)
                    (implementationType `(FromJSON) g)
