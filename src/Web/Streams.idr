module Web.Streams
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy
  
  public export
  JSVal ByteLengthQueuingStrategy where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : ByteLengthQueuingStrategy) -> IO Double
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : ByteLengthQueuingStrategy) -> IO Function

namespace CountQueuingStrategy
  
  public export
  JSVal CountQueuingStrategy where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : CountQueuingStrategy) -> IO Double
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : CountQueuingStrategy) -> IO Function

namespace ReadableByteStreamController
  
  public export
  JSVal ReadableByteStreamController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.byobRequest"
  prim__byobRequest : AnyPtr -> PrimIO AnyPtr

  export
  byobRequest :  (obj : ReadableByteStreamController)
              -> IO (Maybe ReadableStreamBYOBRequest)
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : ReadableByteStreamController) -> IO (Maybe Double)

namespace ReadableStream
  
  public export
  JSVal ReadableStream where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr

  export
  locked : (obj : ReadableStream) -> IO Bool

namespace ReadableStreamBYOBReader
  
  public export
  JSVal ReadableStreamBYOBReader where
    parents =  [ JSObject ]

    mixins =  [ ReadableStreamGenericReader ]

namespace ReadableStreamBYOBRequest
  
  public export
  JSVal ReadableStreamBYOBRequest where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr

  export
  view : (obj : ReadableStreamBYOBRequest) -> IO (Maybe ArrayBufferView)

namespace ReadableStreamDefaultController
  
  public export
  JSVal ReadableStreamDefaultController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : ReadableStreamDefaultController) -> IO (Maybe Double)

namespace ReadableStreamDefaultReader
  
  public export
  JSVal ReadableStreamDefaultReader where
    parents =  [ JSObject ]

    mixins =  [ ReadableStreamGenericReader ]

namespace TransformStream
  
  public export
  JSVal TransformStream where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  export
  readable : (obj : TransformStream) -> IO ReadableStream
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : TransformStream) -> IO WritableStream

namespace TransformStreamDefaultController
  
  public export
  JSVal TransformStreamDefaultController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : TransformStreamDefaultController) -> IO (Maybe Double)

namespace WritableStream
  
  public export
  JSVal WritableStream where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr

  export
  locked : (obj : WritableStream) -> IO Bool

namespace WritableStreamDefaultController
  
  public export
  JSVal WritableStreamDefaultController where
    parents =  [ JSObject ]

    mixins =  []

namespace WritableStreamDefaultWriter
  
  public export
  JSVal WritableStreamDefaultWriter where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr

  export
  closed : (obj : WritableStreamDefaultWriter) -> IO (JSPromise Undefined)
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : WritableStreamDefaultWriter) -> IO (Maybe Double)
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr

  export
  ready : (obj : WritableStreamDefaultWriter) -> IO (JSPromise Undefined)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GenericTransformStream
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  export
  readable : (obj : GenericTransformStream) -> IO ReadableStream
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : GenericTransformStream) -> IO WritableStream

namespace ReadableStreamGenericReader
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr

  export
  closed : (obj : ReadableStreamGenericReader) -> IO (JSPromise Undefined)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy
  
  public export
  JSVal QueuingStrategy where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : QueuingStrategy) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.highWaterMark  = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHighWaterMark : (obj : QueuingStrategy) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : QueuingStrategy) -> IO QueuingStrategySize

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : QueuingStrategy) -> (v : QueuingStrategySize) -> IO ()

namespace QueuingStrategyInit
  
  public export
  JSVal QueuingStrategyInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : QueuingStrategyInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.highWaterMark  = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHighWaterMark : (obj : QueuingStrategyInit) -> (v : Double) -> IO ()

namespace ReadableStreamBYOBReadResult
  
  public export
  JSVal ReadableStreamBYOBReadResult where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr

  export
  done : (obj : ReadableStreamBYOBReadResult) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.done  = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDone : (obj : ReadableStreamBYOBReadResult) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : ReadableStreamBYOBReadResult) -> IO ArrayBufferView

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue :  (obj : ReadableStreamBYOBReadResult)
           -> (v : ArrayBufferView)
           -> IO ()

namespace ReadableStreamDefaultReadResult
  
  public export
  JSVal ReadableStreamDefaultReadResult where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr

  export
  done : (obj : ReadableStreamDefaultReadResult) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.done  = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDone : (obj : ReadableStreamDefaultReadResult) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : ReadableStreamDefaultReadResult) -> IO JSAny

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : ReadableStreamDefaultReadResult) -> (v : JSAny) -> IO ()

namespace ReadableStreamGetReaderOptions
  
  public export
  JSVal ReadableStreamGetReaderOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : ReadableStreamGetReaderOptions) -> IO ReadableStreamReaderMode

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode :  (obj : ReadableStreamGetReaderOptions)
          -> (v : ReadableStreamReaderMode)
          -> IO ()

namespace ReadableStreamIteratorOptions
  
  public export
  JSVal ReadableStreamIteratorOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr

  export
  preventCancel : (obj : ReadableStreamIteratorOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventCancel  = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventCancel :  (obj : ReadableStreamIteratorOptions)
                   -> (v : Bool)
                   -> IO ()

namespace ReadableWritablePair
  
  public export
  JSVal ReadableWritablePair where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  export
  readable : (obj : ReadableWritablePair) -> IO ReadableStream

  %foreign "browser:lambda:(x,v)=>{x.readable  = v}"
  prim__setReadable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadable : (obj : ReadableWritablePair) -> (v : ReadableStream) -> IO ()
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : ReadableWritablePair) -> IO WritableStream

  %foreign "browser:lambda:(x,v)=>{x.writable  = v}"
  prim__setWritable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWritable : (obj : ReadableWritablePair) -> (v : WritableStream) -> IO ()

namespace StreamPipeOptions
  
  public export
  JSVal StreamPipeOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.preventAbort"
  prim__preventAbort : AnyPtr -> PrimIO AnyPtr

  export
  preventAbort : (obj : StreamPipeOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventAbort  = v}"
  prim__setPreventAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventAbort : (obj : StreamPipeOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr

  export
  preventCancel : (obj : StreamPipeOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventCancel  = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventCancel : (obj : StreamPipeOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.preventClose"
  prim__preventClose : AnyPtr -> PrimIO AnyPtr

  export
  preventClose : (obj : StreamPipeOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.preventClose  = v}"
  prim__setPreventClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventClose : (obj : StreamPipeOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : StreamPipeOptions) -> IO AbortSignal

  %foreign "browser:lambda:(x,v)=>{x.signal  = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSignal : (obj : StreamPipeOptions) -> (v : AbortSignal) -> IO ()

namespace Transformer
  
  public export
  JSVal Transformer where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.flush"
  prim__flush : AnyPtr -> PrimIO AnyPtr

  export
  flush : (obj : Transformer) -> IO TransformerFlushCallback

  %foreign "browser:lambda:(x,v)=>{x.flush  = v}"
  prim__setFlush : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFlush : (obj : Transformer) -> (v : TransformerFlushCallback) -> IO ()
  
  %foreign "browser:lambda:x=>x.readableType"
  prim__readableType : AnyPtr -> PrimIO AnyPtr

  export
  readableType : (obj : Transformer) -> IO JSAny

  %foreign "browser:lambda:(x,v)=>{x.readableType  = v}"
  prim__setReadableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadableType : (obj : Transformer) -> (v : JSAny) -> IO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : Transformer) -> IO TransformerStartCallback

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart : (obj : Transformer) -> (v : TransformerStartCallback) -> IO ()
  
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : AnyPtr -> PrimIO AnyPtr

  export
  transform : (obj : Transformer) -> IO TransformerTransformCallback

  %foreign "browser:lambda:(x,v)=>{x.transform  = v}"
  prim__setTransform : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTransform :  (obj : Transformer)
               -> (v : TransformerTransformCallback)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.writableType"
  prim__writableType : AnyPtr -> PrimIO AnyPtr

  export
  writableType : (obj : Transformer) -> IO JSAny

  %foreign "browser:lambda:(x,v)=>{x.writableType  = v}"
  prim__setWritableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWritableType : (obj : Transformer) -> (v : JSAny) -> IO ()

namespace UnderlyingSink
  
  public export
  JSVal UnderlyingSink where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.abort"
  prim__abort : AnyPtr -> PrimIO AnyPtr

  export
  abort : (obj : UnderlyingSink) -> IO UnderlyingSinkAbortCallback

  %foreign "browser:lambda:(x,v)=>{x.abort  = v}"
  prim__setAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAbort :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkAbortCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.close"
  prim__close : AnyPtr -> PrimIO AnyPtr

  export
  close : (obj : UnderlyingSink) -> IO UnderlyingSinkCloseCallback

  %foreign "browser:lambda:(x,v)=>{x.close  = v}"
  prim__setClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClose :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkCloseCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : UnderlyingSink) -> IO UnderlyingSinkStartCallback

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkStartCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : UnderlyingSink) -> IO JSAny

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : UnderlyingSink) -> (v : JSAny) -> IO ()
  
  %foreign "browser:lambda:x=>x.write"
  prim__write : AnyPtr -> PrimIO AnyPtr

  export
  write : (obj : UnderlyingSink) -> IO UnderlyingSinkWriteCallback

  %foreign "browser:lambda:(x,v)=>{x.write  = v}"
  prim__setWrite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWrite :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkWriteCallback)
           -> IO ()

namespace UnderlyingSource
  
  public export
  JSVal UnderlyingSource where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.autoAllocateChunkSize"
  prim__autoAllocateChunkSize : AnyPtr -> PrimIO AnyPtr

  export
  autoAllocateChunkSize : (obj : UnderlyingSource) -> IO UInt64

  %foreign "browser:lambda:(x,v)=>{x.autoAllocateChunkSize  = v}"
  prim__setAutoAllocateChunkSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoAllocateChunkSize : (obj : UnderlyingSource) -> (v : UInt64) -> IO ()
  
  %foreign "browser:lambda:x=>x.cancel"
  prim__cancel : AnyPtr -> PrimIO AnyPtr

  export
  cancel : (obj : UnderlyingSource) -> IO UnderlyingSourceCancelCallback

  %foreign "browser:lambda:(x,v)=>{x.cancel  = v}"
  prim__setCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCancel :  (obj : UnderlyingSource)
            -> (v : UnderlyingSourceCancelCallback)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.pull"
  prim__pull : AnyPtr -> PrimIO AnyPtr

  export
  pull : (obj : UnderlyingSource) -> IO UnderlyingSourcePullCallback

  %foreign "browser:lambda:(x,v)=>{x.pull  = v}"
  prim__setPull : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPull :  (obj : UnderlyingSource)
          -> (v : UnderlyingSourcePullCallback)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : UnderlyingSource) -> IO UnderlyingSourceStartCallback

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart :  (obj : UnderlyingSource)
           -> (v : UnderlyingSourceStartCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : UnderlyingSource) -> IO ReadableStreamType

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : UnderlyingSource) -> (v : ReadableStreamType) -> IO ()

