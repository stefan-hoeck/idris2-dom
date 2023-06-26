module Web.Raw.ReadableByteStreamController

import JS
import Web.Types.ReadableByteStreamController
import Web.Types.ReadableStreamBYOBRequest


%default total


export
%foreign "browser:lambda:x=>x.byobRequest"
prim__byobRequest :
     ReadableByteStreamController
  -> PrimIO (Nullable ReadableStreamBYOBRequest)


export
%foreign "browser:lambda:x=>x.desiredSize"
prim__desiredSize : ReadableByteStreamController -> PrimIO (Nullable Double)


export
%foreign "browser:lambda:x=>x.close()"
prim__close : ReadableByteStreamController -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.enqueue(a)"
prim__enqueue :
     ReadableByteStreamController
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
%foreign "browser:lambda:(x,a)=>x.error(a)"
prim__error : ReadableByteStreamController -> UndefOr AnyPtr -> PrimIO ()


export
byobRequest :
     (obj : ReadableByteStreamController)
  -> JSIO (Maybe ReadableStreamBYOBRequest)
byobRequest a = tryJS "ReadableByteStreamController.byobRequest" $
  ReadableByteStreamController.prim__byobRequest a


export
desiredSize : (obj : ReadableByteStreamController) -> JSIO (Maybe Double)
desiredSize a = tryJS "ReadableByteStreamController.desiredSize" $
  ReadableByteStreamController.prim__desiredSize a


export
close : (obj : ReadableByteStreamController) -> JSIO ()
close a = primJS $ ReadableByteStreamController.prim__close a


export
enqueue :
     (obj : ReadableByteStreamController)
  -> (chunk : HSum
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
enqueue a b = primJS $ ReadableByteStreamController.prim__enqueue a (toFFI b)


export
error' : (obj : ReadableByteStreamController) -> (e : Optional Any) -> JSIO ()
error' a b = primJS $ ReadableByteStreamController.prim__error a (toFFI b)

export
error : (obj : ReadableByteStreamController) -> JSIO ()
error a = primJS $ ReadableByteStreamController.prim__error a undef
