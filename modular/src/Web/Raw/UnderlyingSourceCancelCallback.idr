module Web.Raw.UnderlyingSourceCancelCallback

import JS
import Web.Types.UnderlyingSourceCancelCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toUnderlyingSourceCancelCallback :
     (UndefOr AnyPtr -> IO (Promise Undefined))
  -> PrimIO UnderlyingSourceCancelCallback


export
toUnderlyingSourceCancelCallback :
     (UndefOr AnyPtr -> IO (Promise Undefined))
  -> JSIO UnderlyingSourceCancelCallback
toUnderlyingSourceCancelCallback cb = primJS $ prim__toUnderlyingSourceCancelCallback cb

