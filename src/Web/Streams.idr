module Web.Streams
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy
  
  public export
  JSType ByteLengthQueuingStrategy where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : ByteLengthQueuingStrategy) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : ByteLengthQueuingStrategy) -> JSIO Function

namespace CountQueuingStrategy
  
  public export
  JSType CountQueuingStrategy where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : CountQueuingStrategy) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : CountQueuingStrategy) -> JSIO Function

namespace ReadableByteStreamController
  
  public export
  JSType ReadableByteStreamController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.byobRequest"
  prim__byobRequest : AnyPtr -> PrimIO AnyPtr

  export
  byobRequest :  (obj : ReadableByteStreamController)
              -> JSIO (Maybe ReadableStreamBYOBRequest)
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : ReadableByteStreamController) -> JSIO (Maybe Double)

namespace ReadableStream
  
  public export
  JSType ReadableStream where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr

  export
  locked : (obj : ReadableStream) -> JSIO Bool

namespace ReadableStreamBYOBReader
  
  public export
  JSType ReadableStreamBYOBReader where
    parents =  [ JSObject ]

    mixins =  [ ReadableStreamGenericReader ]

namespace ReadableStreamBYOBRequest
  
  public export
  JSType ReadableStreamBYOBRequest where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr

  export
  view : (obj : ReadableStreamBYOBRequest) -> JSIO (Maybe ArrayBufferView)

namespace ReadableStreamDefaultController
  
  public export
  JSType ReadableStreamDefaultController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : ReadableStreamDefaultController) -> JSIO (Maybe Double)

namespace ReadableStreamDefaultReader
  
  public export
  JSType ReadableStreamDefaultReader where
    parents =  [ JSObject ]

    mixins =  [ ReadableStreamGenericReader ]

namespace TransformStream
  
  public export
  JSType TransformStream where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  export
  readable : (obj : TransformStream) -> JSIO ReadableStream
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : TransformStream) -> JSIO WritableStream

namespace TransformStreamDefaultController
  
  public export
  JSType TransformStreamDefaultController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : TransformStreamDefaultController) -> JSIO (Maybe Double)

namespace WritableStream
  
  public export
  JSType WritableStream where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr

  export
  locked : (obj : WritableStream) -> JSIO Bool

namespace WritableStreamDefaultController
  
  public export
  JSType WritableStreamDefaultController where
    parents =  [ JSObject ]

    mixins =  []

namespace WritableStreamDefaultWriter
  
  public export
  JSType WritableStreamDefaultWriter where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr

  export
  closed : (obj : WritableStreamDefaultWriter) -> JSIO (JSPromise Undefined)
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : WritableStreamDefaultWriter) -> JSIO (Maybe Double)
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr

  export
  ready : (obj : WritableStreamDefaultWriter) -> JSIO (JSPromise Undefined)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GenericTransformStream
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  export
  readable : (obj : GenericTransformStream) -> JSIO ReadableStream
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : GenericTransformStream) -> JSIO WritableStream

namespace ReadableStreamGenericReader
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr

  export
  closed : (obj : ReadableStreamGenericReader) -> JSIO (JSPromise Undefined)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy
  
  public export
  JSType QueuingStrategy where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : QueuingStrategy) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.highWaterMark  = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHighWaterMark : (obj : QueuingStrategy) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : QueuingStrategy) -> JSIO QueuingStrategySize

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : QueuingStrategy) -> (v : QueuingStrategySize) -> JSIO ()

namespace QueuingStrategyInit
  
  public export
  JSType QueuingStrategyInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : QueuingStrategyInit) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.highWaterMark  = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHighWaterMark : (obj : QueuingStrategyInit) -> (v : Double) -> JSIO ()

namespace ReadableStreamBYOBReadResult
  
  public export
  JSType ReadableStreamBYOBReadResult where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr

  export
  done : (obj : ReadableStreamBYOBReadResult) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.done  = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDone : (obj : ReadableStreamBYOBReadResult) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : ReadableStreamBYOBReadResult) -> JSIO ArrayBufferView

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue :  (obj : ReadableStreamBYOBReadResult)
           -> (v : ArrayBufferView)
           -> JSIO ()

namespace ReadableStreamDefaultReadResult
  
  public export
  JSType ReadableStreamDefaultReadResult where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr

  export
  done : (obj : ReadableStreamDefaultReadResult) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.done  = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDone : (obj : ReadableStreamDefaultReadResult) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : ReadableStreamDefaultReadResult) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : ReadableStreamDefaultReadResult) -> (v : Any) -> JSIO ()

namespace ReadableStreamGetReaderOptions
  
  public export
  JSType ReadableStreamGetReaderOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : ReadableStreamGetReaderOptions) -> JSIO ReadableStreamReaderMode

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode :  (obj : ReadableStreamGetReaderOptions)
          -> (v : ReadableStreamReaderMode)
          -> JSIO ()

namespace ReadableStreamIteratorOptions
  
  public export
  JSType ReadableStreamIteratorOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr

  export
  preventCancel : (obj : ReadableStreamIteratorOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventCancel  = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventCancel :  (obj : ReadableStreamIteratorOptions)
                   -> (v : Bool)
                   -> JSIO ()

namespace ReadableWritablePair
  
  public export
  JSType ReadableWritablePair where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  export
  readable : (obj : ReadableWritablePair) -> JSIO ReadableStream

  %foreign "browser:lambda:(x,v)=>{x.readable  = v}"
  prim__setReadable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadable : (obj : ReadableWritablePair) -> (v : ReadableStream) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : ReadableWritablePair) -> JSIO WritableStream

  %foreign "browser:lambda:(x,v)=>{x.writable  = v}"
  prim__setWritable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWritable : (obj : ReadableWritablePair) -> (v : WritableStream) -> JSIO ()

namespace StreamPipeOptions
  
  public export
  JSType StreamPipeOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.preventAbort"
  prim__preventAbort : AnyPtr -> PrimIO AnyPtr

  export
  preventAbort : (obj : StreamPipeOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventAbort  = v}"
  prim__setPreventAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventAbort : (obj : StreamPipeOptions) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr

  export
  preventCancel : (obj : StreamPipeOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventCancel  = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventCancel : (obj : StreamPipeOptions) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.preventClose"
  prim__preventClose : AnyPtr -> PrimIO AnyPtr

  export
  preventClose : (obj : StreamPipeOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventClose  = v}"
  prim__setPreventClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventClose : (obj : StreamPipeOptions) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : StreamPipeOptions) -> JSIO AbortSignal

  %foreign "browser:lambda:(x,v)=>{x.signal  = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSignal : (obj : StreamPipeOptions) -> (v : AbortSignal) -> JSIO ()

namespace Transformer
  
  public export
  JSType Transformer where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.flush"
  prim__flush : AnyPtr -> PrimIO AnyPtr

  export
  flush : (obj : Transformer) -> JSIO TransformerFlushCallback

  %foreign "browser:lambda:(x,v)=>{x.flush  = v}"
  prim__setFlush : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFlush : (obj : Transformer) -> (v : TransformerFlushCallback) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.readableType"
  prim__readableType : AnyPtr -> PrimIO AnyPtr

  export
  readableType : (obj : Transformer) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.readableType  = v}"
  prim__setReadableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadableType : (obj : Transformer) -> (v : Any) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : Transformer) -> JSIO TransformerStartCallback

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart : (obj : Transformer) -> (v : TransformerStartCallback) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : AnyPtr -> PrimIO AnyPtr

  export
  transform : (obj : Transformer) -> JSIO TransformerTransformCallback

  %foreign "browser:lambda:(x,v)=>{x.transform  = v}"
  prim__setTransform : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTransform :  (obj : Transformer)
               -> (v : TransformerTransformCallback)
               -> JSIO ()
  
  %foreign "browser:lambda:x=>x.writableType"
  prim__writableType : AnyPtr -> PrimIO AnyPtr

  export
  writableType : (obj : Transformer) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.writableType  = v}"
  prim__setWritableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWritableType : (obj : Transformer) -> (v : Any) -> JSIO ()

namespace UnderlyingSink
  
  public export
  JSType UnderlyingSink where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.abort"
  prim__abort : AnyPtr -> PrimIO AnyPtr

  export
  abort : (obj : UnderlyingSink) -> JSIO UnderlyingSinkAbortCallback

  %foreign "browser:lambda:(x,v)=>{x.abort  = v}"
  prim__setAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAbort :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkAbortCallback)
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.close"
  prim__close : AnyPtr -> PrimIO AnyPtr

  export
  close : (obj : UnderlyingSink) -> JSIO UnderlyingSinkCloseCallback

  %foreign "browser:lambda:(x,v)=>{x.close  = v}"
  prim__setClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClose :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkCloseCallback)
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : UnderlyingSink) -> JSIO UnderlyingSinkStartCallback

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkStartCallback)
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : UnderlyingSink) -> JSIO Any

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : UnderlyingSink) -> (v : Any) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.write"
  prim__write : AnyPtr -> PrimIO AnyPtr

  export
  write : (obj : UnderlyingSink) -> JSIO UnderlyingSinkWriteCallback

  %foreign "browser:lambda:(x,v)=>{x.write  = v}"
  prim__setWrite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWrite :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkWriteCallback)
           -> JSIO ()

namespace UnderlyingSource
  
  public export
  JSType UnderlyingSource where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.autoAllocateChunkSize"
  prim__autoAllocateChunkSize : AnyPtr -> PrimIO AnyPtr

  export
  autoAllocateChunkSize : (obj : UnderlyingSource) -> JSIO UInt64

  %foreign "browser:lambda:(x,v)=>{x.autoAllocateChunkSize  = v}"
  prim__setAutoAllocateChunkSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoAllocateChunkSize : (obj : UnderlyingSource) -> (v : UInt64) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.cancel"
  prim__cancel : AnyPtr -> PrimIO AnyPtr

  export
  cancel : (obj : UnderlyingSource) -> JSIO UnderlyingSourceCancelCallback

  %foreign "browser:lambda:(x,v)=>{x.cancel  = v}"
  prim__setCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCancel :  (obj : UnderlyingSource)
            -> (v : UnderlyingSourceCancelCallback)
            -> JSIO ()
  
  %foreign "browser:lambda:x=>x.pull"
  prim__pull : AnyPtr -> PrimIO AnyPtr

  export
  pull : (obj : UnderlyingSource) -> JSIO UnderlyingSourcePullCallback

  %foreign "browser:lambda:(x,v)=>{x.pull  = v}"
  prim__setPull : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPull :  (obj : UnderlyingSource)
          -> (v : UnderlyingSourcePullCallback)
          -> JSIO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : UnderlyingSource) -> JSIO UnderlyingSourceStartCallback

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart :  (obj : UnderlyingSource)
           -> (v : UnderlyingSourceStartCallback)
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : UnderlyingSource) -> JSIO ReadableStreamType

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : UnderlyingSource) -> (v : ReadableStreamType) -> JSIO ()

