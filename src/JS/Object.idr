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
import JS.Inheritance
import JS.Marshall
import JS.Nullable

export
data Object : Type where [external]

export
ToFFI Object Object where toFFI = id

export
FromFFI Object Object where fromFFI = Just

export
SafeCast Object where
  safeCast = unsafeCastOnPrototypeName "object"

public export
JSType Object where
  parents = []
  mixins = []

--------------------------------------------------------------------------------
--          Linear Objects
--------------------------------------------------------------------------------

%foreign "javascript:lambda:() => {}"
prim__new : () -> Object

%foreign "javascript:lambda:(o,str) => o[str]"
prim__get : Object -> String -> AnyPtr

%foreign "javascript:lambda:(u,o,str,v) => { o[str] = v; return o }"
prim__set : forall a . Object -> String -> a -> Object

export
record LinObject where
  constructor MkLinObject
  obj : Object

export
data LinVal : Type where
  LObj  : Object     -> LinVal
  LArr  : IArray Any -> LinVal
  LStr  : String     -> LinVal
  LNum  : Double     -> LinVal
  LNull : LinVal

toAny : LinVal -> Any
toAny (LObj x) = MkAny x
toAny (LArr x) = MkAny x
toAny (LStr x) = MkAny x
toAny (LNum x) = MkAny x
toAny LNull    = MkAny (null {a = ()})

export
obj : (1 _ : LinObject) -> LinVal
obj (MkLinObject o) = LObj o

export
str : String -> LinVal
str = LStr

export
num : Double -> LinVal
num = LNum

export
null : LinVal
null = LNull

export
array : IArray LinVal -> LinVal
array = LArr . map toAny

export
newObj : (1 f : (1 _ : LinObject) -> a) -> a 
newObj f = f (MkLinObject (prim__new ()))

export
thaw : (1 _ : LinObject) -> IO Object
thaw (MkLinObject obj) = pure obj

export
lset : (1 _ : LinObject) -> (fld : String) -> (1 _ : LinVal) -> LinObject
lset (MkLinObject o) f (LObj x) = MkLinObject $ prim__set o f x
lset (MkLinObject o) f (LArr x) = MkLinObject $ prim__set o f x
lset (MkLinObject o) f (LStr x) = MkLinObject $ prim__set o f x
lset (MkLinObject o) f (LNum x) = MkLinObject $ prim__set o f x
lset (MkLinObject o) f LNull    = MkLinObject $ prim__set o f (null {a = ()})

export
lget : (1 _ : LinObject) -> (fld : String) -> Res AnyPtr (const $ LinObject)
lget (MkLinObject obj) fld = prim__get obj fld # MkLinObject obj

export
pairs : ((1 _ : LinObject) -> a) -> List (String,LinVal) -> a
pairs f ps = newObj (run ps)
  where run : List (String,LinVal) -> (1 _ : LinObject) -> a
        run []            o = f o
        run ((s,v) :: ps) o = run ps (lset o s v)

export
vals : List LinVal -> LinVal
vals = array . fromList


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
