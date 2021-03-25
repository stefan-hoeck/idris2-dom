module Web.Streams

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

namespace CountQueuingStrategy
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

namespace ReadableByteStreamController
  
  %foreign "browser:lambda:x=>x.byobRequest"
  prim__byobRequest : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

namespace ReadableStream
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr

namespace ReadableStreamBYOBRequest
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr

namespace ReadableStreamDefaultController
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

namespace TransformStream
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

namespace TransformStreamDefaultController
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

namespace WritableStream
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr

namespace WritableStreamDefaultWriter
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GenericTransformStream
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

namespace ReadableStreamGenericReader
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.highWaterMark = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace QueuingStrategyInit
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.highWaterMark = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ReadableStreamBYOBReadResult
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.done = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ReadableStreamDefaultReadResult
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.done = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ReadableStreamGetReaderOptions
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ReadableStreamIteratorOptions
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.preventCancel = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ReadableWritablePair
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.readable = v}"
  prim__setReadable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.writable = v}"
  prim__setWritable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace StreamPipeOptions
  
  %foreign "browser:lambda:x=>x.preventAbort"
  prim__preventAbort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.preventAbort = v}"
  prim__setPreventAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.preventCancel = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.preventClose"
  prim__preventClose : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.preventClose = v}"
  prim__setPreventClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace Transformer
  
  %foreign "browser:lambda:x=>x.flush"
  prim__flush : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.flush = v}"
  prim__setFlush : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readableType"
  prim__readableType : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.readableType = v}"
  prim__setReadableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.transform = v}"
  prim__setTransform : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.writableType"
  prim__writableType : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.writableType = v}"
  prim__setWritableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace UnderlyingSink
  
  %foreign "browser:lambda:x=>x.abort"
  prim__abort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.abort = v}"
  prim__setAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.close"
  prim__close : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.close = v}"
  prim__setClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.write"
  prim__write : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.write = v}"
  prim__setWrite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace UnderlyingSource
  
  %foreign "browser:lambda:x=>x.autoAllocateChunkSize"
  prim__autoAllocateChunkSize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autoAllocateChunkSize = v}"
  prim__setAutoAllocateChunkSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cancel"
  prim__cancel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cancel = v}"
  prim__setCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pull"
  prim__pull : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.pull = v}"
  prim__setPull : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ReadableStreamBYOBReader ReadableStreamGenericReader where
  cast = believe_me

export
Cast ReadableStreamDefaultReader ReadableStreamGenericReader where
  cast = believe_me