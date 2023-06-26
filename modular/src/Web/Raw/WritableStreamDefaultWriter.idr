module Web.Raw.WritableStreamDefaultWriter

import JS
import Web.Types.WritableStream
import Web.Types.WritableStreamDefaultWriter


%default total


export
%foreign "browser:lambda:(a)=> new WritableStreamDefaultWriter(a)"
prim__new : WritableStream -> PrimIO WritableStreamDefaultWriter


export
%foreign "browser:lambda:x=>x.closed"
prim__closed : WritableStreamDefaultWriter -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.desiredSize"
prim__desiredSize : WritableStreamDefaultWriter -> PrimIO (Nullable Double)


export
%foreign "browser:lambda:x=>x.ready"
prim__ready : WritableStreamDefaultWriter -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:(x,a)=>x.abort(a)"
prim__abort :
     WritableStreamDefaultWriter
  -> UndefOr AnyPtr
  -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.close()"
prim__close : WritableStreamDefaultWriter -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.releaseLock()"
prim__releaseLock : WritableStreamDefaultWriter -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.write(a)"
prim__write :
     WritableStreamDefaultWriter
  -> UndefOr AnyPtr
  -> PrimIO (Promise Undefined)


export
new : (stream : WritableStream) -> JSIO WritableStreamDefaultWriter
new a = primJS $ WritableStreamDefaultWriter.prim__new a


export
closed : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
closed a = primJS $ WritableStreamDefaultWriter.prim__closed a


export
desiredSize : (obj : WritableStreamDefaultWriter) -> JSIO (Maybe Double)
desiredSize a = tryJS "WritableStreamDefaultWriter.desiredSize" $
  WritableStreamDefaultWriter.prim__desiredSize a


export
ready : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
ready a = primJS $ WritableStreamDefaultWriter.prim__ready a


export
abort' :
     (obj : WritableStreamDefaultWriter)
  -> (reason : Optional Any)
  -> JSIO (Promise Undefined)
abort' a b = primJS $ WritableStreamDefaultWriter.prim__abort a (toFFI b)

export
abort : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
abort a = primJS $ WritableStreamDefaultWriter.prim__abort a undef


export
close : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
close a = primJS $ WritableStreamDefaultWriter.prim__close a


export
releaseLock : (obj : WritableStreamDefaultWriter) -> JSIO ()
releaseLock a = primJS $ WritableStreamDefaultWriter.prim__releaseLock a


export
write' :
     (obj : WritableStreamDefaultWriter)
  -> (chunk : Optional Any)
  -> JSIO (Promise Undefined)
write' a b = primJS $ WritableStreamDefaultWriter.prim__write a (toFFI b)

export
write : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
write a = primJS $ WritableStreamDefaultWriter.prim__write a undef
