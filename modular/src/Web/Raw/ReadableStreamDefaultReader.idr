module Web.Raw.ReadableStreamDefaultReader

import JS
import Web.Types.ReadableStream
import Web.Types.ReadableStreamDefaultReadResult
import Web.Types.ReadableStreamDefaultReader
import Web.Types.ReadableStreamGenericReader


%default total


export
%foreign "browser:lambda:(a)=> new ReadableStreamDefaultReader(a)"
prim__new : ReadableStream -> PrimIO ReadableStreamDefaultReader


export
%foreign "browser:lambda:x=>x.read()"
prim__read :
     ReadableStreamDefaultReader
  -> PrimIO (Promise ReadableStreamDefaultReadResult)


export
%foreign "browser:lambda:x=>x.releaseLock()"
prim__releaseLock : ReadableStreamDefaultReader -> PrimIO ()


export
new : (stream : ReadableStream) -> JSIO ReadableStreamDefaultReader
new a = primJS $ ReadableStreamDefaultReader.prim__new a


export
read :
     (obj : ReadableStreamDefaultReader)
  -> JSIO (Promise ReadableStreamDefaultReadResult)
read a = primJS $ ReadableStreamDefaultReader.prim__read a


export
releaseLock : (obj : ReadableStreamDefaultReader) -> JSIO ()
releaseLock a = primJS $ ReadableStreamDefaultReader.prim__releaseLock a

