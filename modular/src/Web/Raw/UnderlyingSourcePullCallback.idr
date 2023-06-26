module Web.Raw.UnderlyingSourcePullCallback

import JS
import Web.Types.ReadableByteStreamController
import Web.Types.ReadableStreamDefaultController
import Web.Types.UnderlyingSourcePullCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toUnderlyingSourcePullCallback :
     (  Union2 ReadableStreamDefaultController ReadableByteStreamController
     -> IO (Promise Undefined)
     )
  -> PrimIO UnderlyingSourcePullCallback


export
toUnderlyingSourcePullCallback :
     (  Union2 ReadableStreamDefaultController ReadableByteStreamController
     -> IO (Promise Undefined)
     )
  -> JSIO UnderlyingSourcePullCallback
toUnderlyingSourcePullCallback cb = primJS $ prim__toUnderlyingSourcePullCallback cb
