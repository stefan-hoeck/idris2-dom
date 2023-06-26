module Web.Raw.OverconstrainedError

import JS
import Web.Types.DOMException
import Web.Types.OverconstrainedError


%default total


export
%foreign "browser:lambda:(a,b)=> new OverconstrainedError(a,b)"
prim__new : String -> UndefOr String -> PrimIO OverconstrainedError


export
%foreign "browser:lambda:x=>x.constraint"
prim__constraint : OverconstrainedError -> PrimIO String


export
new' :
     (constraint : String)
  -> (message : Optional String)
  -> JSIO OverconstrainedError
new' a b = primJS $ OverconstrainedError.prim__new a (toFFI b)

export
new : (constraint : String) -> JSIO OverconstrainedError
new a = primJS $ OverconstrainedError.prim__new a undef


export
constraint : (obj : OverconstrainedError) -> JSIO String
constraint a = primJS $ OverconstrainedError.prim__constraint a

