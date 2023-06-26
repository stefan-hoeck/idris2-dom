module Web.Raw.ReadableStreamBYOBReader

import JS
import Web.Types.ReadableStream
import Web.Types.ReadableStreamBYOBReadResult
import Web.Types.ReadableStreamBYOBReader
import Web.Types.ReadableStreamGenericReader


%default total


export
%foreign "browser:lambda:(a)=> new ReadableStreamBYOBReader(a)"
prim__new : ReadableStream -> PrimIO ReadableStreamBYOBReader


export
%foreign "browser:lambda:(x,a)=>x.read(a)"
prim__read :
     ReadableStreamBYOBReader
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
  -> PrimIO (Promise ReadableStreamBYOBReadResult)


export
%foreign "browser:lambda:x=>x.releaseLock()"
prim__releaseLock : ReadableStreamBYOBReader -> PrimIO ()


export
new : (stream : ReadableStream) -> JSIO ReadableStreamBYOBReader
new a = primJS $ ReadableStreamBYOBReader.prim__new a


export
read :
     (obj : ReadableStreamBYOBReader)
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
  -> JSIO (Promise ReadableStreamBYOBReadResult)
read a b = primJS $ ReadableStreamBYOBReader.prim__read a (toFFI b)


export
releaseLock : (obj : ReadableStreamBYOBReader) -> JSIO ()
releaseLock a = primJS $ ReadableStreamBYOBReader.prim__releaseLock a
