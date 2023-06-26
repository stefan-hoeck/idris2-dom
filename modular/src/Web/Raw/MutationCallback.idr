module Web.Raw.MutationCallback

import JS
import Web.Types.MutationCallback
import Web.Types.MutationObserver
import Web.Types.MutationRecord


%default total


export
%foreign "browser:lambda:x=>(a,b)=>x(a,b)()"
prim__toMutationCallback :
     (Array MutationRecord -> MutationObserver -> IO ())
  -> PrimIO MutationCallback


export
toMutationCallback :
     (Array MutationRecord -> MutationObserver -> IO ())
  -> JSIO MutationCallback
toMutationCallback cb = primJS $ prim__toMutationCallback cb
