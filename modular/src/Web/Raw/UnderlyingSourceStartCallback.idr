module Web.Raw.UnderlyingSourceStartCallback

import JS
import Web.Types.ReadableByteStreamController
import Web.Types.ReadableStreamDefaultController
import Web.Types.UnderlyingSourceStartCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toUnderlyingSourceStartCallback :
     (  Union2 ReadableStreamDefaultController ReadableByteStreamController
     -> IO AnyPtr
     )
  -> PrimIO UnderlyingSourceStartCallback


export
toUnderlyingSourceStartCallback :
     (  Union2 ReadableStreamDefaultController ReadableByteStreamController
     -> IO AnyPtr
     )
  -> JSIO UnderlyingSourceStartCallback
toUnderlyingSourceStartCallback cb = primJS $ prim__toUnderlyingSourceStartCallback cb
