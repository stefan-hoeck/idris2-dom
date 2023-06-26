module Web.Raw.WritableStream

import JS
import Web.Types.QueuingStrategy
import Web.Types.WritableStream
import Web.Types.WritableStreamDefaultWriter


%default total


export
%foreign "browser:lambda:(a,b)=> new WritableStream(a,b)"
prim__new : UndefOr Object -> UndefOr QueuingStrategy -> PrimIO WritableStream


export
%foreign "browser:lambda:x=>x.locked"
prim__locked : WritableStream -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.abort(a)"
prim__abort : WritableStream -> UndefOr AnyPtr -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.close()"
prim__close : WritableStream -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.getWriter()"
prim__getWriter : WritableStream -> PrimIO WritableStreamDefaultWriter


export
new' :
     {auto _ : Cast t1 Object}
  -> {auto _ : Cast t2 QueuingStrategy}
  -> (underlyingSink : Optional t1)
  -> (strategy : Optional t2)
  -> JSIO WritableStream
new' a b = primJS $ WritableStream.prim__new (optUp a) (optUp b)

export
new : JSIO WritableStream
new = primJS $ WritableStream.prim__new undef undef


export
locked : (obj : WritableStream) -> JSIO Bool
locked a = tryJS "WritableStream.locked" $ WritableStream.prim__locked a


export
abort' :
     (obj : WritableStream)
  -> (reason : Optional Any)
  -> JSIO (Promise Undefined)
abort' a b = primJS $ WritableStream.prim__abort a (toFFI b)

export
abort : (obj : WritableStream) -> JSIO (Promise Undefined)
abort a = primJS $ WritableStream.prim__abort a undef


export
close : (obj : WritableStream) -> JSIO (Promise Undefined)
close a = primJS $ WritableStream.prim__close a


export
getWriter : (obj : WritableStream) -> JSIO WritableStreamDefaultWriter
getWriter a = primJS $ WritableStream.prim__getWriter a
