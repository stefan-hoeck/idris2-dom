module JS.Object

import JS.Inheritance
import JS.Marshall

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
newObj : (1 f : (1 _ : LinObject) -> a) -> a 
newObj f = f (MkLinObject (prim__new ()))

export
thaw : (1 _ : LinObject) -> IO Object
thaw (MkLinObject obj) = pure obj

export
lset : (1 _ : LinObject) -> (fld : String) -> a -> LinObject
lset (MkLinObject obj) fld v = MkLinObject (prim__set obj fld v)

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
