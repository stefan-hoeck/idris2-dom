module JS.JSON

import JS.Array
import JS.Number
import JS.Object
import JS.Undefined

import Generics.Derive

%language ElabReflection

--------------------------------------------------------------------------------
--          ToJSON
--------------------------------------------------------------------------------

public export
interface ToJSON a where
  toJSON : a -> Value

infixr 8 .=

export
(.=) : ToJSON a => String -> a -> (String,Value)
s .= v = (s, toJSON v)

export
encode : ToJSON a => a -> String
encode v = stringify $ toJSON v

export
ToJSON Void where
  toJSON x impossible

export
ToJSON Value where toJSON = id

export
ToJSON String where toJSON = str

export
ToJSON Double where toJSON = num

export
ToJSON Bits8 where toJSON = num . fromInteger . cast

export
ToJSON Bits16 where toJSON = num . fromInteger . cast

export
ToJSON Bits32 where toJSON = num . fromInteger . cast

export
ToJSON Bits64 where toJSON = toJSON . show

export
ToJSON Int where toJSON = toJSON . show

export
ToJSON Integer where toJSON = toJSON . show

export
ToJSON Nat where toJSON = toJSON . show

export
ToJSON Bool where toJSON = bool

export
ToJSON Int8 where toJSON = toJSON . fromInt8

export
ToJSON Int16 where toJSON = toJSON . fromInt16

export
ToJSON Int32 where toJSON = toJSON . fromInt32

export
ToJSON Int64 where toJSON = toJSON . fromInt64

export
ToJSON UInt8 where toJSON = toJSON . fromUInt8

export
ToJSON UInt16 where toJSON = toJSON . fromUInt16

export
ToJSON UInt32 where toJSON = toJSON . fromUInt32

export
ToJSON UInt64 where toJSON = toJSON . fromUInt64

export
ToJSON a => ToJSON (Maybe a) where
  toJSON Nothing  = null
  toJSON (Just a) = toJSON a

export
ToJSON a => ToJSON (Optional a) where
  toJSON Undef  = null
  toJSON (Def a) = toJSON a

export
ToJSON a => ToJSON (IArray a) where
  toJSON = array . map toJSON

export
ToJSON a => ToJSON (List a) where
  toJSON = toJSON . JS.Array.fromList

export
ToJSON () where
  toJSON () = array neutral

np : NP (ToJSON . f) ks => NP f ks -> List Value
np = collapseNP . hcmap (ToJSON . f) toJSON

export
NP (ToJSON . f) ks => ToJSON (NP f ks) where
  toJSON = toJSON . np

export
(ToJSON a, ToJSON b) => ToJSON (a,b) where
  toJSON (a,b) = toJSON $ the (NP I _) [a,b]

export
(ToJSON a, ToJSON b) => ToJSON (Either a b) where
  toJSON (Left a)  = pairs ["Left"  .= a]
  toJSON (Right b) = pairs ["Right" .= b]

unfoldNP : {ks : _} -> (a -> a) -> a -> NP (K a) ks
unfoldNP {ks = []}     _ _ = []
unfoldNP {ks = _ :: _} f x = x :: unfoldNP f (f x)

indices : {ks : _} ->  NP (K Bits32) ks
indices = unfoldNP (+1) (the Bits32 0)

ns : {ks : _} -> NP (ToJSON . f) ks => NS f ks -> Value
ns = collapseNS . hcliftA2 (ToJSON . f) enc (indices {ks})
  where enc : ToJSON (f a) => Bits32 -> f a -> Value
        enc ix v = pairs [show ix .= v]

export
{ks : _} -> NP (ToJSON . f) ks => ToJSON (NS f ks) where
  toJSON = ns

--------------------------------------------------------------------------------
--          FromJSON
--------------------------------------------------------------------------------

public export
data JSONPathElement = Key String | Index Bits32

%runElab derive "JSONPathElement" [Generic,Meta,Show,Eq]

public export
JSONPath : Type
JSONPath = List JSONPathElement

public export
IResult : Type -> Type
IResult = Either (JSONPath,String)

public export
interface FromJSON a  where
  fromJSON : Value -> IResult a

export
withObject : (IObject -> IResult a) -> Value -> IResult a

export
withBool : (Bool -> IResult a) -> Value -> IResult a

export
withString : (String -> IResult a) -> Value -> IResult a

export
withNumber : (Double -> IResult a) -> Value -> IResult a

export
withArray : (IArray Value -> IResult a) -> Value -> IResult a

||| Format a <http://goessner.net/articles/JsonPath/ JSONPath> as a 'String'
||| which represents the path relative to some root object.
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
formatPath : JSONPath -> String
formatPath path = "$" ++ formatRelativePath path

||| Annotate an error message with a
||| <http://goessner.net/articles/JsonPath/ JSONPath> error location.
formatError : JSONPath -> String -> String
formatError path msg = "Error in " ++ formatPath path ++ ": " ++ msg

--------------------------------------------------------------------------------
--          Elab Deriving
--------------------------------------------------------------------------------

-- Converts a single applied constructor, without pairing it
-- with its name.
toJSONC1 : NP (ToJSON . f) ks => ConInfo ks -> NP f ks -> Value
toJSONC1 info args = maybe (toJSON args) encRecord (argNames info)

  where encRecord : NP (K String) ks -> Value
        encRecord ns = pairs (collapseNP $ hcliftA2 (ToJSON . f) (.=) ns args)

toJSONSOP1 : NP (ToJSON . f) ks => TypeInfo [ks] -> SOP f [ks] -> Value
toJSONSOP1 (MkTypeInfo _ _ (v :: [])) (MkSOP (Z x)) = toJSONC1 v x
toJSONSOP1 (MkTypeInfo _ _ (v :: [])) (MkSOP (S x)) impossible

-- Converts a single applied constructor, pairing it with its name
toJSONC : NP (ToJSON . f) ks => ConInfo ks -> NP f ks -> Value
toJSONC i@(MkConInfo _ n _) np = pairs [(n, toJSONC1 i np)]

toJSONSOP :  (all : POP (ToJSON . f) kss)
        => TypeInfo kss -> SOP f kss -> Value
toJSONSOP {all = MkPOP _} (MkTypeInfo _ _ cons) =
  collapseNS . hcliftA2 (NP $ ToJSON . f) toJSONC cons . unSOP

export
genToJSON1 : Meta a [ks] => NP ToJSON ks => a -> Value
genToJSON1 = toJSONSOP1 (metaFor a) . from

export
genToJSON : Meta a code => POP ToJSON code => a -> Value
genToJSON = toJSONSOP (metaFor a) . from

public export
mkToJSON : (toJSON : a -> Value) -> ToJSON a
mkToJSON = %runElab check (var $ singleCon "ToJSON")

namespace Derive

  ||| Derives a `ToJSON` implementation for the given data type
  export
  ToJSON : DeriveUtil -> InterfaceImpl
  ToJSON g = MkInterfaceImpl "ToJSON" Export []
                    `(mkToJSON genToJSON)
                    (implementationType `(ToJSON) g)

  ||| Derives a `ToJSON` implementation for the given single-constructor
  ||| data type
  export
  ToJSON1 : DeriveUtil -> InterfaceImpl
  ToJSON1 g = MkInterfaceImpl "ToJSON" Export []
                    `(mkToJSON genToJSON1)
                    (implementationType `(ToJSON) g)
