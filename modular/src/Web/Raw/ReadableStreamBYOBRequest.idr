module Web.Raw.ReadableStreamBYOBRequest

import JS
import Web.Types.ReadableStreamBYOBRequest


%default total


export
%foreign "browser:lambda:x=>x.view"
prim__view :
     ReadableStreamBYOBRequest
  -> PrimIO
       (Nullable
          (Union10
             Int8Array
             Int16Array
             Int32Array
             UInt8Array
             UInt8Array
             UInt8Array
             UInt8ClampedArray
             Float32Array
             Float64Array
             DataView))


export
%foreign "browser:lambda:(x,a)=>x.respond(a)"
prim__respond : ReadableStreamBYOBRequest -> JSBits64 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.respondWithNewView(a)"
prim__respondWithNewView :
     ReadableStreamBYOBRequest
  -> Union10
       Int8Array
       Int16Array
       Int32Array
       UInt8Array
       UInt8Array
       UInt8Array
       UInt8ClampedArray
       Float32Array
       Float64Array
       DataView
  -> PrimIO ()


export
view :
     (obj : ReadableStreamBYOBRequest)
  -> JSIO
       (Maybe
          (Union10
             Int8Array
             Int16Array
             Int32Array
             UInt8Array
             UInt8Array
             UInt8Array
             UInt8ClampedArray
             Float32Array
             Float64Array
             DataView))
view a = tryJS "ReadableStreamBYOBRequest.view" $
  ReadableStreamBYOBRequest.prim__view a


export
respond :
     (obj : ReadableStreamBYOBRequest)
  -> (bytesWritten : JSBits64)
  -> JSIO ()
respond a b = primJS $ ReadableStreamBYOBRequest.prim__respond a b


export
respondWithNewView :
     (obj : ReadableStreamBYOBRequest)
  -> (view : HSum
               [ Int8Array
               , Int16Array
               , Int32Array
               , UInt8Array
               , UInt8Array
               , UInt8Array
               , UInt8ClampedArray
               , Float32Array
               , Float64Array
               , DataView
               ])
  -> JSIO ()
respondWithNewView a b = primJS $
  ReadableStreamBYOBRequest.prim__respondWithNewView a (toFFI b)

