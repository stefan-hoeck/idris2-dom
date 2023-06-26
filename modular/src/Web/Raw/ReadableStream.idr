module Web.Raw.ReadableStream

import JS
import Web.Types.QueuingStrategy
import Web.Types.ReadableStream
import Web.Types.ReadableStreamBYOBReader
import Web.Types.ReadableStreamDefaultReader
import Web.Types.ReadableStreamGetReaderOptions
import Web.Types.ReadableWritablePair
import Web.Types.StreamPipeOptions
import Web.Types.WritableStream


%default total


export
%foreign "browser:lambda:(a,b)=> new ReadableStream(a,b)"
prim__new : UndefOr Object -> UndefOr QueuingStrategy -> PrimIO ReadableStream


export
%foreign "browser:lambda:x=>x.locked"
prim__locked : ReadableStream -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.cancel(a)"
prim__cancel : ReadableStream -> UndefOr AnyPtr -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:(x,a)=>x.getReader(a)"
prim__getReader :
     ReadableStream
  -> UndefOr ReadableStreamGetReaderOptions
  -> PrimIO (Union2 ReadableStreamDefaultReader ReadableStreamBYOBReader)


export
%foreign "browser:lambda:(x,a,b)=>x.pipeThrough(a,b)"
prim__pipeThrough :
     ReadableStream
  -> ReadableWritablePair
  -> UndefOr StreamPipeOptions
  -> PrimIO ReadableStream


export
%foreign "browser:lambda:(x,a,b)=>x.pipeTo(a,b)"
prim__pipeTo :
     ReadableStream
  -> WritableStream
  -> UndefOr StreamPipeOptions
  -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.tee()"
prim__tee : ReadableStream -> PrimIO (Array ReadableStream)


export
new' :
     {auto _ : Cast t1 Object}
  -> {auto _ : Cast t2 QueuingStrategy}
  -> (underlyingSource : Optional t1)
  -> (strategy : Optional t2)
  -> JSIO ReadableStream
new' a b = primJS $ ReadableStream.prim__new (optUp a) (optUp b)

export
new : JSIO ReadableStream
new = primJS $ ReadableStream.prim__new undef undef


export
locked : (obj : ReadableStream) -> JSIO Bool
locked a = tryJS "ReadableStream.locked" $ ReadableStream.prim__locked a


export
cancel' :
     (obj : ReadableStream)
  -> (reason : Optional Any)
  -> JSIO (Promise Undefined)
cancel' a b = primJS $ ReadableStream.prim__cancel a (toFFI b)

export
cancel : (obj : ReadableStream) -> JSIO (Promise Undefined)
cancel a = primJS $ ReadableStream.prim__cancel a undef


export
getReader' :
     {auto _ : Cast t2 ReadableStreamGetReaderOptions}
  -> (obj : ReadableStream)
  -> (options : Optional t2)
  -> JSIO (HSum [ReadableStreamDefaultReader, ReadableStreamBYOBReader])
getReader' a b = tryJS "ReadableStream.getReader'" $
  ReadableStream.prim__getReader a (optUp b)

export
getReader :
     (obj : ReadableStream)
  -> JSIO (HSum [ReadableStreamDefaultReader, ReadableStreamBYOBReader])
getReader a = tryJS "ReadableStream.getReader" $
  ReadableStream.prim__getReader a undef


export
pipeThrough' :
     {auto _ : Cast t2 ReadableWritablePair}
  -> {auto _ : Cast t3 StreamPipeOptions}
  -> (obj : ReadableStream)
  -> (transform : t2)
  -> (options : Optional t3)
  -> JSIO ReadableStream
pipeThrough' a b c = primJS $
  ReadableStream.prim__pipeThrough a (cast b) (optUp c)

export
pipeThrough :
     {auto _ : Cast t2 ReadableWritablePair}
  -> (obj : ReadableStream)
  -> (transform : t2)
  -> JSIO ReadableStream
pipeThrough a b = primJS $ ReadableStream.prim__pipeThrough a (cast b) undef


export
pipeTo' :
     {auto _ : Cast t3 StreamPipeOptions}
  -> (obj : ReadableStream)
  -> (destination : WritableStream)
  -> (options : Optional t3)
  -> JSIO (Promise Undefined)
pipeTo' a b c = primJS $ ReadableStream.prim__pipeTo a b (optUp c)

export
pipeTo :
     (obj : ReadableStream)
  -> (destination : WritableStream)
  -> JSIO (Promise Undefined)
pipeTo a b = primJS $ ReadableStream.prim__pipeTo a b undef


export
tee : (obj : ReadableStream) -> JSIO (Array ReadableStream)
tee a = primJS $ ReadableStream.prim__tee a
