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

export
data Value : Type where
  Arr  : IArray Any -> Value
  Boo  : Boolean    -> Value
  Null : Value
  Num  : Double     -> Value
  Obj  : IObject    -> Value
  Str  : String     -> Value

toAny : Value -> Any
toAny (Obj x) = MkAny x
toAny (Boo x) = MkAny x
toAny (Arr x) = MkAny x
toAny (Str x) = MkAny x
toAny (Num x) = MkAny x
toAny Null    = MkAny (null {a = ()})

--------------------------------------------------------------------------------
--          JSON Encoding
--------------------------------------------------------------------------------

export
stringify : (1 _ : Value) -> String
stringify (Boo x) = prim__stringify x
stringify (Obj x) = prim__stringify x
stringify (Arr x) = prim__stringify x
stringify (Str x) = prim__stringify x
stringify (Num x) = prim__stringify x
stringify Null    = prim__stringify (null {a = ()})

export
obj : (1 _ : LinObject) -> Value
obj (MkLinObject o) = Obj $ MkIObject o

export
str : String -> Value
str = Str

export
bool : Bool -> Value
bool = Boo . toFFI

export
num : Double -> Value
num = Num

export
null : Value
null = Null

export
array : IArray Value -> Value
array = Arr . map toAny

export
lsetVal : (1 _ : LinObject) -> (fld : String) -> (1 _ : Value) -> LinObject
lsetVal o f (Boo x) = lset o f x
lsetVal o f (Obj x) = lset o f x
lsetVal o f (Arr x) = lset o f x
lsetVal o f (Str x) = lset o f x
lsetVal o f (Num x) = lset o f x
lsetVal o f Null    = lset o f (null {a = ()})

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
vals = array . fromList

--------------------------------------------------------------------------------
--          JSON decoding
--------------------------------------------------------------------------------

toVal : Any -> Maybe Value
toVal (MkAny ptr) =   (Str <$> safeCast ptr)
                  <|> (Boo <$> safeCast ptr)
                  <|> (if isArray ptr then Just $ believe_me ptr else Nothing)
                  <|> (if isNull ptr then Just Null else Nothing)
                  <|> (Num <$> safeCast ptr)
                  <|> (Obj . MkIObject <$> unsafeCastOnTypeof "object" ptr)

export
decode : String -> Either JSErr Value
decode s = do ptr <- try prim__parse s
              maybe (Left $ Caught #"Unable to decode JSON: \#{s}"#)
                    Right 
                    (toVal (MkAny ptr))

export
decodeMaybe : String -> Maybe Value
decodeMaybe = either (const Nothing) Just . decode

export
getObject : Value -> Maybe IObject
getObject (Obj x) = Just x
getObject _       = Nothing

export
getBool : Value -> Maybe Bool
getBool (Boo x) = fromFFI x
getBool _       = Nothing

export
getStr : Value -> Maybe String
getStr (Str x) = Just x
getStr _       = Nothing

export
getNum : Value -> Maybe Double
getNum (Num x) = Just x
getNum _       = Nothing

-- `traverse` for `IArray` goes via `List` anyway, so we
-- can just as well return a `List`
export
getArray : Value -> Maybe (List Value)
getArray (Arr x) = traverse toVal $ arrayToList x
getArray _       = Nothing

export
valueAt : IObject -> String -> Maybe Value
valueAt (MkIObject obj) = toVal . MkAny . prim__get obj 
