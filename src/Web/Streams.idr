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
  highWaterMark a =   primToJSIO "highWaterMark" $ prim__highWaterMark (toJS a)
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : ByteLengthQueuingStrategy) -> JSIO Function
  size a =   primToJSIO "size" $ prim__size (toJS a)

namespace CountQueuingStrategy
  
  public export
  JSType CountQueuingStrategy where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : CountQueuingStrategy) -> JSIO Double
  highWaterMark a =   primToJSIO "highWaterMark" $ prim__highWaterMark (toJS a)
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : CountQueuingStrategy) -> JSIO Function
  size a =   primToJSIO "size" $ prim__size (toJS a)

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
  byobRequest a =   primToJSIO "byobRequest" $ prim__byobRequest (toJS a)
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : ReadableByteStreamController) -> JSIO (Maybe Double)
  desiredSize a =   primToJSIO "desiredSize" $ prim__desiredSize (toJS a)

namespace ReadableStream
  
  public export
  JSType ReadableStream where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr

  export
  locked : (obj : ReadableStream) -> JSIO Bool
  locked a =   primToJSIO "locked" $ prim__locked (toJS a)

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
  view a =   primToJSIO "view" $ prim__view (toJS a)

namespace ReadableStreamDefaultController
  
  public export
  JSType ReadableStreamDefaultController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : ReadableStreamDefaultController) -> JSIO (Maybe Double)
  desiredSize a =   primToJSIO "desiredSize" $ prim__desiredSize (toJS a)

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
  readable a =   primToJSIO "readable" $ prim__readable (toJS a)
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : TransformStream) -> JSIO WritableStream
  writable a =   primToJSIO "writable" $ prim__writable (toJS a)

namespace TransformStreamDefaultController
  
  public export
  JSType TransformStreamDefaultController where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : TransformStreamDefaultController) -> JSIO (Maybe Double)
  desiredSize a =   primToJSIO "desiredSize" $ prim__desiredSize (toJS a)

namespace WritableStream
  
  public export
  JSType WritableStream where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr

  export
  locked : (obj : WritableStream) -> JSIO Bool
  locked a =   primToJSIO "locked" $ prim__locked (toJS a)

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
  closed a =   primToJSIO "closed" $ prim__closed (toJS a)
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr

  export
  desiredSize : (obj : WritableStreamDefaultWriter) -> JSIO (Maybe Double)
  desiredSize a =   primToJSIO "desiredSize" $ prim__desiredSize (toJS a)
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr

  export
  ready : (obj : WritableStreamDefaultWriter) -> JSIO (JSPromise Undefined)
  ready a =   primToJSIO "ready" $ prim__ready (toJS a)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GenericTransformStream
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  export
  readable : (obj : GenericTransformStream) -> JSIO ReadableStream
  readable a =   primToJSIO "readable" $ prim__readable (toJS a)
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : GenericTransformStream) -> JSIO WritableStream
  writable a =   primToJSIO "writable" $ prim__writable (toJS a)

namespace ReadableStreamGenericReader
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr

  export
  closed : (obj : ReadableStreamGenericReader) -> JSIO (JSPromise Undefined)
  closed a =   primToJSIO "closed" $ prim__closed (toJS a)

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
  highWaterMark a =   primToJSIO "highWaterMark" $ prim__highWaterMark (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.highWaterMark  = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHighWaterMark : (obj : QueuingStrategy) -> (v : Double) -> JSIO ()
  setHighWaterMark a b =
    primToJSIO "setHighWaterMark" $ prim__setHighWaterMark (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : QueuingStrategy) -> JSIO QueuingStrategySize
  size a =   primToJSIO "size" $ prim__size (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.size  = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSize : (obj : QueuingStrategy) -> (v : QueuingStrategySize) -> JSIO ()
  setSize a b =   primToJSIO "setSize" $ prim__setSize (toJS a) (toJS b)

namespace QueuingStrategyInit
  
  public export
  JSType QueuingStrategyInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr

  export
  highWaterMark : (obj : QueuingStrategyInit) -> JSIO Double
  highWaterMark a =   primToJSIO "highWaterMark" $ prim__highWaterMark (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.highWaterMark  = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHighWaterMark : (obj : QueuingStrategyInit) -> (v : Double) -> JSIO ()
  setHighWaterMark a b =
    primToJSIO "setHighWaterMark" $ prim__setHighWaterMark (toJS a) (toJS b)

namespace ReadableStreamBYOBReadResult
  
  public export
  JSType ReadableStreamBYOBReadResult where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr

  export
  done : (obj : ReadableStreamBYOBReadResult) -> JSIO Bool
  done a =   primToJSIO "done" $ prim__done (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.done  = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDone : (obj : ReadableStreamBYOBReadResult) -> (v : Bool) -> JSIO ()
  setDone a b =   primToJSIO "setDone" $ prim__setDone (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : ReadableStreamBYOBReadResult) -> JSIO ArrayBufferView
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue :  (obj : ReadableStreamBYOBReadResult)
           -> (v : ArrayBufferView)
           -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace ReadableStreamDefaultReadResult
  
  public export
  JSType ReadableStreamDefaultReadResult where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr

  export
  done : (obj : ReadableStreamDefaultReadResult) -> JSIO Bool
  done a =   primToJSIO "done" $ prim__done (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.done  = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDone : (obj : ReadableStreamDefaultReadResult) -> (v : Bool) -> JSIO ()
  setDone a b =   primToJSIO "setDone" $ prim__setDone (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : ReadableStreamDefaultReadResult) -> JSIO Any
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : ReadableStreamDefaultReadResult) -> (v : Any) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace ReadableStreamGetReaderOptions
  
  public export
  JSType ReadableStreamGetReaderOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : ReadableStreamGetReaderOptions) -> JSIO ReadableStreamReaderMode
  mode a =   primToJSIO "mode" $ prim__mode (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode :  (obj : ReadableStreamGetReaderOptions)
          -> (v : ReadableStreamReaderMode)
          -> JSIO ()
  setMode a b =   primToJSIO "setMode" $ prim__setMode (toJS a) (toJS b)

namespace ReadableStreamIteratorOptions
  
  public export
  JSType ReadableStreamIteratorOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr

  export
  preventCancel : (obj : ReadableStreamIteratorOptions) -> JSIO Bool
  preventCancel a =   primToJSIO "preventCancel" $ prim__preventCancel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.preventCancel  = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventCancel :  (obj : ReadableStreamIteratorOptions)
                   -> (v : Bool)
                   -> JSIO ()
  setPreventCancel a b =
    primToJSIO "setPreventCancel" $ prim__setPreventCancel (toJS a) (toJS b)

namespace ReadableWritablePair
  
  public export
  JSType ReadableWritablePair where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr

  export
  readable : (obj : ReadableWritablePair) -> JSIO ReadableStream
  readable a =   primToJSIO "readable" $ prim__readable (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.readable  = v}"
  prim__setReadable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadable : (obj : ReadableWritablePair) -> (v : ReadableStream) -> JSIO ()
  setReadable a b =
    primToJSIO "setReadable" $ prim__setReadable (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr

  export
  writable : (obj : ReadableWritablePair) -> JSIO WritableStream
  writable a =   primToJSIO "writable" $ prim__writable (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.writable  = v}"
  prim__setWritable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWritable : (obj : ReadableWritablePair) -> (v : WritableStream) -> JSIO ()
  setWritable a b =
    primToJSIO "setWritable" $ prim__setWritable (toJS a) (toJS b)

namespace StreamPipeOptions
  
  public export
  JSType StreamPipeOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.preventAbort"
  prim__preventAbort : AnyPtr -> PrimIO AnyPtr

  export
  preventAbort : (obj : StreamPipeOptions) -> JSIO Bool
  preventAbort a =   primToJSIO "preventAbort" $ prim__preventAbort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.preventAbort  = v}"
  prim__setPreventAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventAbort : (obj : StreamPipeOptions) -> (v : Bool) -> JSIO ()
  setPreventAbort a b =
    primToJSIO "setPreventAbort" $ prim__setPreventAbort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr

  export
  preventCancel : (obj : StreamPipeOptions) -> JSIO Bool
  preventCancel a =   primToJSIO "preventCancel" $ prim__preventCancel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.preventCancel  = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventCancel : (obj : StreamPipeOptions) -> (v : Bool) -> JSIO ()
  setPreventCancel a b =
    primToJSIO "setPreventCancel" $ prim__setPreventCancel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.preventClose"
  prim__preventClose : AnyPtr -> PrimIO AnyPtr

  export
  preventClose : (obj : StreamPipeOptions) -> JSIO Bool
  preventClose a =   primToJSIO "preventClose" $ prim__preventClose (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.preventClose  = v}"
  prim__setPreventClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreventClose : (obj : StreamPipeOptions) -> (v : Bool) -> JSIO ()
  setPreventClose a b =
    primToJSIO "setPreventClose" $ prim__setPreventClose (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : StreamPipeOptions) -> JSIO AbortSignal
  signal a =   primToJSIO "signal" $ prim__signal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.signal  = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSignal : (obj : StreamPipeOptions) -> (v : AbortSignal) -> JSIO ()
  setSignal a b =   primToJSIO "setSignal" $ prim__setSignal (toJS a) (toJS b)

namespace Transformer
  
  public export
  JSType Transformer where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.flush"
  prim__flush : AnyPtr -> PrimIO AnyPtr

  export
  flush : (obj : Transformer) -> JSIO TransformerFlushCallback
  flush a =   primToJSIO "flush" $ prim__flush (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.flush  = v}"
  prim__setFlush : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFlush : (obj : Transformer) -> (v : TransformerFlushCallback) -> JSIO ()
  setFlush a b =   primToJSIO "setFlush" $ prim__setFlush (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.readableType"
  prim__readableType : AnyPtr -> PrimIO AnyPtr

  export
  readableType : (obj : Transformer) -> JSIO Any
  readableType a =   primToJSIO "readableType" $ prim__readableType (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.readableType  = v}"
  prim__setReadableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReadableType : (obj : Transformer) -> (v : Any) -> JSIO ()
  setReadableType a b =
    primToJSIO "setReadableType" $ prim__setReadableType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : Transformer) -> JSIO TransformerStartCallback
  start a =   primToJSIO "start" $ prim__start (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart : (obj : Transformer) -> (v : TransformerStartCallback) -> JSIO ()
  setStart a b =   primToJSIO "setStart" $ prim__setStart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : AnyPtr -> PrimIO AnyPtr

  export
  transform : (obj : Transformer) -> JSIO TransformerTransformCallback
  transform a =   primToJSIO "transform" $ prim__transform (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.transform  = v}"
  prim__setTransform : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTransform :  (obj : Transformer)
               -> (v : TransformerTransformCallback)
               -> JSIO ()
  setTransform a b =
    primToJSIO "setTransform" $ prim__setTransform (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.writableType"
  prim__writableType : AnyPtr -> PrimIO AnyPtr

  export
  writableType : (obj : Transformer) -> JSIO Any
  writableType a =   primToJSIO "writableType" $ prim__writableType (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.writableType  = v}"
  prim__setWritableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWritableType : (obj : Transformer) -> (v : Any) -> JSIO ()
  setWritableType a b =
    primToJSIO "setWritableType" $ prim__setWritableType (toJS a) (toJS b)

namespace UnderlyingSink
  
  public export
  JSType UnderlyingSink where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.abort"
  prim__abort : AnyPtr -> PrimIO AnyPtr

  export
  abort : (obj : UnderlyingSink) -> JSIO UnderlyingSinkAbortCallback
  abort a =   primToJSIO "abort" $ prim__abort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.abort  = v}"
  prim__setAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAbort :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkAbortCallback)
           -> JSIO ()
  setAbort a b =   primToJSIO "setAbort" $ prim__setAbort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.close"
  prim__close : AnyPtr -> PrimIO AnyPtr

  export
  close : (obj : UnderlyingSink) -> JSIO UnderlyingSinkCloseCallback
  close a =   primToJSIO "close" $ prim__close (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.close  = v}"
  prim__setClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClose :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkCloseCallback)
           -> JSIO ()
  setClose a b =   primToJSIO "setClose" $ prim__setClose (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : UnderlyingSink) -> JSIO UnderlyingSinkStartCallback
  start a =   primToJSIO "start" $ prim__start (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkStartCallback)
           -> JSIO ()
  setStart a b =   primToJSIO "setStart" $ prim__setStart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : UnderlyingSink) -> JSIO Any
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : UnderlyingSink) -> (v : Any) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.write"
  prim__write : AnyPtr -> PrimIO AnyPtr

  export
  write : (obj : UnderlyingSink) -> JSIO UnderlyingSinkWriteCallback
  write a =   primToJSIO "write" $ prim__write (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.write  = v}"
  prim__setWrite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWrite :  (obj : UnderlyingSink)
           -> (v : UnderlyingSinkWriteCallback)
           -> JSIO ()
  setWrite a b =   primToJSIO "setWrite" $ prim__setWrite (toJS a) (toJS b)

namespace UnderlyingSource
  
  public export
  JSType UnderlyingSource where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.autoAllocateChunkSize"
  prim__autoAllocateChunkSize : AnyPtr -> PrimIO AnyPtr

  export
  autoAllocateChunkSize : (obj : UnderlyingSource) -> JSIO UInt64
  autoAllocateChunkSize a =
    primToJSIO "autoAllocateChunkSize" $ prim__autoAllocateChunkSize (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.autoAllocateChunkSize  = v}"
  prim__setAutoAllocateChunkSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoAllocateChunkSize : (obj : UnderlyingSource) -> (v : UInt64) -> JSIO ()
  setAutoAllocateChunkSize a b =
    primToJSIO "setAutoAllocateChunkSize" $ prim__setAutoAllocateChunkSize (toJS a)
                                                                           (toJS b)
  
  %foreign "browser:lambda:x=>x.cancel"
  prim__cancel : AnyPtr -> PrimIO AnyPtr

  export
  cancel : (obj : UnderlyingSource) -> JSIO UnderlyingSourceCancelCallback
  cancel a =   primToJSIO "cancel" $ prim__cancel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cancel  = v}"
  prim__setCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCancel :  (obj : UnderlyingSource)
            -> (v : UnderlyingSourceCancelCallback)
            -> JSIO ()
  setCancel a b =   primToJSIO "setCancel" $ prim__setCancel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.pull"
  prim__pull : AnyPtr -> PrimIO AnyPtr

  export
  pull : (obj : UnderlyingSource) -> JSIO UnderlyingSourcePullCallback
  pull a =   primToJSIO "pull" $ prim__pull (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.pull  = v}"
  prim__setPull : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPull :  (obj : UnderlyingSource)
          -> (v : UnderlyingSourcePullCallback)
          -> JSIO ()
  setPull a b =   primToJSIO "setPull" $ prim__setPull (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr

  export
  start : (obj : UnderlyingSource) -> JSIO UnderlyingSourceStartCallback
  start a =   primToJSIO "start" $ prim__start (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.start  = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStart :  (obj : UnderlyingSource)
           -> (v : UnderlyingSourceStartCallback)
           -> JSIO ()
  setStart a b =   primToJSIO "setStart" $ prim__setStart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : UnderlyingSource) -> JSIO ReadableStreamType
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : UnderlyingSource) -> (v : ReadableStreamType) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

