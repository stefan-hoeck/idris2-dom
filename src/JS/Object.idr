||| A Javascript `Object` is primarily a mapping from string
||| to values, and we can use them exactly as such. However,
||| objects can also be used as an intermediary representation
||| for encoding data from and to JSON.
|||
||| This module therefore provides additional functionality:
|||
||| A linear `LinObject` data type for encoding nested datastructure
||| into an intermediary object representation, and an immutable
||| `IObject` data type, mainly for decoding data, but also as an efficient
||| means for having an immutable string to data mapping.
module JS.Object

import JS.Any
import JS.Array
import JS.Boolean
import JS.Inheritance
import JS.Marshall
import JS.Nullable
import JS.Util

%default total

export
data Object : Type where [external]

export
ToFFI Object Object where toFFI = id

export
FromFFI Object Object where fromFFI = Just

public export
JSType Object where
  parents = []
  mixins = []

--------------------------------------------------------------------------------
--          Linear Objects
--------------------------------------------------------------------------------

%foreign "javascript:lambda:() => {return {}}"
prim__new : () -> Object

%foreign "javascript:lambda:(o,str) => o[str]"
prim__get : Object -> String -> AnyPtr

%foreign "javascript:lambda:(u,o,str,v) => { o[str] = v; return o }"
prim__set : forall a . Object -> String -> a -> Object

%foreign "javascript:lambda:(u,o) => JSON.stringify(o)"
prim__stringify : forall a . a -> String

%foreign "javascript:lambda:s => JSON.parse(s)"
prim__parse : String -> AnyPtr

||| Objects, mutable in a linear context. Useful for
||| efficient, non-monadic encoding of Idris2 values,
||| for instance to be used in an FFI call to an external
||| function, or when encoding Idris2 values to JSON through
||| the Javascript `JSON.stringify` function.
export
record LinObject where
  constructor MkLinObject
  obj : Object

export
newObj : (1 f : (1 _ : LinObject) -> a) -> a
newObj f = f (MkLinObject (prim__new ()))

export
thaw : (1 _ : LinObject) -> IO Object
thaw (MkLinObject obj) = pure obj

export
lset : (1 _ : LinObject) -> (fld : String) -> a -> LinObject
lset (MkLinObject o) f a = MkLinObject $ prim__set o f a

export
lget : (1 _ : LinObject) -> (fld : String) -> Res AnyPtr (const $ LinObject)
lget (MkLinObject obj) fld = prim__get obj fld # MkLinObject obj

--------------------------------------------------------------------------------
--          Immutable Objects
--------------------------------------------------------------------------------

export
record IObject where
  constructor MkIObject
  obj : Object

export
freeze : (1 _ : LinObject) -> IObject
freeze (MkLinObject obj) = MkIObject obj

export
get : SafeCast a => IObject -> String -> Maybe a
get (MkIObject obj) str = safeCast $ prim__get obj str

--------------------------------------------------------------------------------
--          JSON Values
--------------------------------------------------------------------------------

public export
data Value : Type where
  Arr     : IArray Value -> Value
  Boolean : Bool         -> Value
  Null    : Value
  Num     : Double       -> Value
  Obj     : IObject      -> Value
  Str     : String       -> Value

toAny : Value -> Any
toAny (Obj     x) = MkAny x
toAny (Boolean x) = MkAny $ toFFI x
toAny (Arr     x) = MkAny $ assert_total (map toAny x)
toAny (Str     x) = MkAny x
toAny (Num     x) = MkAny x
toAny Null        = MkAny (null {a = ()})

--------------------------------------------------------------------------------
--          JSON Encoding
--------------------------------------------------------------------------------

export
stringify : Value -> String
stringify = prim__stringify . toFFI . toAny

export
obj : (1 _ : LinObject) -> Value
obj (MkLinObject o) = Obj $ MkIObject o

export
lsetVal : (1 _ : LinObject) -> (fld : String) -> Value -> LinObject
lsetVal o f v = lset o f (toFFI $ toAny v)

export
withPairs : List (String,Value) -> ((1 _ : LinObject) -> a) -> a
withPairs ps f = newObj (run ps)
  where run : List (String,Value) -> (1 _ : LinObject) -> a
        run []            o = f o
        run ((s,v) :: ps) o = run ps (lsetVal o s v)

export
pairs : List (String,Value) -> Value
pairs ps = withPairs ps obj

export
vals : List Value -> Value
vals = Arr . fromList

--------------------------------------------------------------------------------
--          JSON decoding
--------------------------------------------------------------------------------

toVal : Any -> Maybe Value
toVal (MkAny ptr) =   (Str <$> safeCast ptr)
                  <|> (Boolean <$> (safeCast ptr >>= fromFFI))
                  <|> (if isArray ptr then array ptr else Nothing)
                  <|> (if isNull ptr then Just Null else Nothing)
                  <|> (Num <$> safeCast ptr)
                  <|> (Obj . MkIObject <$> unsafeCastOnTypeof "object" ptr)

  where array : a -> Maybe Value
        array a = let arr = the (IArray Any) (believe_me a)
                   in assert_total $ Arr <$> traverse toVal arr

export
parse : String -> Either JSErr Value
parse s = do ptr <- try prim__parse s
             maybe (Left $ Caught #"Unable to decode JSON: \#{s}"#)
                   Right
                   (toVal (MkAny ptr))

export
parseMaybe : String -> Maybe Value
parseMaybe = either (const Nothing) Just . parse

export
getObject : Value -> Maybe IObject
getObject (Obj x) = Just x
getObject _       = Nothing

export
getBool : Value -> Maybe Bool
getBool (Boolean x) = Just x
getBool _       = Nothing

export
getStr : Value -> Maybe String
getStr (Str x) = Just x
getStr _       = Nothing

export
getNum : Value -> Maybe Double
getNum (Num x) = Just x
getNum _       = Nothing

export
getArray : Value -> Maybe (IArray Value)
getArray (Arr x) = Just x
getArray _       = Nothing

export
valueAt : IObject -> String -> Maybe Value
valueAt (MkIObject obj) = toVal . MkAny . prim__get obj
