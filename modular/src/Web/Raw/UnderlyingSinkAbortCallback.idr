module Web.Raw.UnderlyingSinkAbortCallback

import JS
import Web.Types.UnderlyingSinkAbortCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toUnderlyingSinkAbortCallback :
     (UndefOr AnyPtr -> IO (Promise Undefined))
  -> PrimIO UnderlyingSinkAbortCallback


export
toUnderlyingSinkAbortCallback :
     (UndefOr AnyPtr -> IO (Promise Undefined))
  -> JSIO UnderlyingSinkAbortCallback
toUnderlyingSinkAbortCallback cb = primJS $ prim__toUnderlyingSinkAbortCallback cb
