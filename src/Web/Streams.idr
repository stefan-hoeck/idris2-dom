module Web.Streams

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr
  
  export
  highWaterMark :  Cast byteLengthQueuingStrategy ByteLengthQueuingStrategy
                => ToJS ByteLengthQueuingStrategy
                => (obj : byteLengthQueuingStrategy)
                -> IO Double
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  export
  size :  Cast byteLengthQueuingStrategy ByteLengthQueuingStrategy
       => ToJS ByteLengthQueuingStrategy
       => (obj : byteLengthQueuingStrategy)
       -> IO Function

namespace CountQueuingStrategy
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr
  
  export
  highWaterMark :  Cast countQueuingStrategy CountQueuingStrategy
                => ToJS CountQueuingStrategy
                => (obj : countQueuingStrategy)
                -> IO Double
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  export
  size :  Cast countQueuingStrategy CountQueuingStrategy
       => ToJS CountQueuingStrategy
       => (obj : countQueuingStrategy)
       -> IO Function

namespace ReadableByteStreamController
  
  %foreign "browser:lambda:x=>x.byobRequest"
  prim__byobRequest : AnyPtr -> PrimIO AnyPtr
  
  export
  byobRequest :  Cast readableByteStreamController ReadableByteStreamController
              => ToJS ReadableByteStreamController
              => (obj : readableByteStreamController)
              -> IO (Maybe ReadableStreamBYOBRequest)
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr
  
  export
  desiredSize :  Cast readableByteStreamController ReadableByteStreamController
              => ToJS ReadableByteStreamController
              => (obj : readableByteStreamController)
              -> IO (Maybe Double)

namespace ReadableStream
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr
  
  export
  locked :  Cast readableStream ReadableStream
         => ToJS ReadableStream
         => (obj : readableStream)
         -> IO Bool

namespace ReadableStreamBYOBRequest
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr
  
  export
  view :  Cast readableStreamBYOBRequest ReadableStreamBYOBRequest
       => ToJS ReadableStreamBYOBRequest
       => (obj : readableStreamBYOBRequest)
       -> IO (Maybe ArrayBufferView)

namespace ReadableStreamDefaultController
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr
  
  export
  desiredSize :  Cast readableStreamDefaultController ReadableStreamDefaultController
              => ToJS ReadableStreamDefaultController
              => (obj : readableStreamDefaultController)
              -> IO (Maybe Double)

namespace TransformStream
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr
  
  export
  readable :  Cast transformStream TransformStream
           => ToJS TransformStream
           => (obj : transformStream)
           -> IO ReadableStream
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr
  
  export
  writable :  Cast transformStream TransformStream
           => ToJS TransformStream
           => (obj : transformStream)
           -> IO WritableStream

namespace TransformStreamDefaultController
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr
  
  export
  desiredSize :  Cast transformStreamDefaultController TransformStreamDefaultController
              => ToJS TransformStreamDefaultController
              => (obj : transformStreamDefaultController)
              -> IO (Maybe Double)

namespace WritableStream
  
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : AnyPtr -> PrimIO AnyPtr
  
  export
  locked :  Cast writableStream WritableStream
         => ToJS WritableStream
         => (obj : writableStream)
         -> IO Bool

namespace WritableStreamDefaultWriter
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr
  
  export
  closed :  Cast writableStreamDefaultWriter WritableStreamDefaultWriter
         => ToJS WritableStreamDefaultWriter
         => (obj : writableStreamDefaultWriter)
         -> IO (JSPromise Undefined)
  
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : AnyPtr -> PrimIO AnyPtr
  
  export
  desiredSize :  Cast writableStreamDefaultWriter WritableStreamDefaultWriter
              => ToJS WritableStreamDefaultWriter
              => (obj : writableStreamDefaultWriter)
              -> IO (Maybe Double)
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr
  
  export
  ready :  Cast writableStreamDefaultWriter WritableStreamDefaultWriter
        => ToJS WritableStreamDefaultWriter
        => (obj : writableStreamDefaultWriter)
        -> IO (JSPromise Undefined)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GenericTransformStream
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr
  
  export
  readable :  Cast genericTransformStream GenericTransformStream
           => ToJS GenericTransformStream
           => (obj : genericTransformStream)
           -> IO ReadableStream
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr
  
  export
  writable :  Cast genericTransformStream GenericTransformStream
           => ToJS GenericTransformStream
           => (obj : genericTransformStream)
           -> IO WritableStream

namespace ReadableStreamGenericReader
  
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : AnyPtr -> PrimIO AnyPtr
  
  export
  closed :  Cast readableStreamGenericReader ReadableStreamGenericReader
         => ToJS ReadableStreamGenericReader
         => (obj : readableStreamGenericReader)
         -> IO (JSPromise Undefined)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr
  
  export
  highWaterMark :  Cast queuingStrategy QueuingStrategy
                => ToJS QueuingStrategy
                => (obj : queuingStrategy)
                -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.highWaterMark = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHighWaterMark :  Cast queuingStrategy QueuingStrategy
                   => ToJS QueuingStrategy
                   => (obj : queuingStrategy)
                   -> (v : Double)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  export
  size :  Cast queuingStrategy QueuingStrategy
       => ToJS QueuingStrategy
       => (obj : queuingStrategy)
       -> IO QueuingStrategySize
  
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSize :  Cast queuingStrategy QueuingStrategy
          => ToJS QueuingStrategy
          => Cast queuingStrategySize QueuingStrategySize
          => ToJS QueuingStrategySize
          => (obj : queuingStrategy)
          -> (v : queuingStrategySize)
          -> IO ()

namespace QueuingStrategyInit
  
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : AnyPtr -> PrimIO AnyPtr
  
  export
  highWaterMark :  Cast queuingStrategyInit QueuingStrategyInit
                => ToJS QueuingStrategyInit
                => (obj : queuingStrategyInit)
                -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.highWaterMark = v}"
  prim__setHighWaterMark : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHighWaterMark :  Cast queuingStrategyInit QueuingStrategyInit
                   => ToJS QueuingStrategyInit
                   => (obj : queuingStrategyInit)
                   -> (v : Double)
                   -> IO ()

namespace ReadableStreamBYOBReadResult
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr
  
  export
  done :  Cast readableStreamBYOBReadResult ReadableStreamBYOBReadResult
       => ToJS ReadableStreamBYOBReadResult
       => (obj : readableStreamBYOBReadResult)
       -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.done = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDone :  Cast readableStreamBYOBReadResult ReadableStreamBYOBReadResult
          => ToJS ReadableStreamBYOBReadResult
          => (obj : readableStreamBYOBReadResult)
          -> (v : Bool)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast readableStreamBYOBReadResult ReadableStreamBYOBReadResult
        => ToJS ReadableStreamBYOBReadResult
        => (obj : readableStreamBYOBReadResult)
        -> IO ArrayBufferView
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast arrayBufferView ArrayBufferView
           => ToJS ArrayBufferView
           => Cast readableStreamBYOBReadResult ReadableStreamBYOBReadResult
           => ToJS ReadableStreamBYOBReadResult
           => (obj : readableStreamBYOBReadResult)
           -> (v : arrayBufferView)
           -> IO ()

namespace ReadableStreamDefaultReadResult
  
  %foreign "browser:lambda:x=>x.done"
  prim__done : AnyPtr -> PrimIO AnyPtr
  
  export
  done :  Cast readableStreamDefaultReadResult ReadableStreamDefaultReadResult
       => ToJS ReadableStreamDefaultReadResult
       => (obj : readableStreamDefaultReadResult)
       -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.done = v}"
  prim__setDone : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDone :  Cast readableStreamDefaultReadResult ReadableStreamDefaultReadResult
          => ToJS ReadableStreamDefaultReadResult
          => (obj : readableStreamDefaultReadResult)
          -> (v : Bool)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast readableStreamDefaultReadResult ReadableStreamDefaultReadResult
        => ToJS ReadableStreamDefaultReadResult
        => (obj : readableStreamDefaultReadResult)
        -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast readableStreamDefaultReadResult ReadableStreamDefaultReadResult
           => ToJS ReadableStreamDefaultReadResult
           => (obj : readableStreamDefaultReadResult)
           -> (v : JSAny)
           -> IO ()

namespace ReadableStreamGetReaderOptions
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  export
  mode :  Cast readableStreamGetReaderOptions ReadableStreamGetReaderOptions
       => ToJS ReadableStreamGetReaderOptions
       => (obj : readableStreamGetReaderOptions)
       -> IO ReadableStreamReaderMode
  
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMode :  Cast readableStreamGetReaderOptions ReadableStreamGetReaderOptions
          => ToJS ReadableStreamGetReaderOptions
          => Cast readableStreamReaderMode ReadableStreamReaderMode
          => ToJS ReadableStreamReaderMode
          => (obj : readableStreamGetReaderOptions)
          -> (v : readableStreamReaderMode)
          -> IO ()

namespace ReadableStreamIteratorOptions
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr
  
  export
  preventCancel :  Cast readableStreamIteratorOptions ReadableStreamIteratorOptions
                => ToJS ReadableStreamIteratorOptions
                => (obj : readableStreamIteratorOptions)
                -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.preventCancel = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPreventCancel :  Cast readableStreamIteratorOptions ReadableStreamIteratorOptions
                   => ToJS ReadableStreamIteratorOptions
                   => (obj : readableStreamIteratorOptions)
                   -> (v : Bool)
                   -> IO ()

namespace ReadableWritablePair
  
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : AnyPtr -> PrimIO AnyPtr
  
  export
  readable :  Cast readableWritablePair ReadableWritablePair
           => ToJS ReadableWritablePair
           => (obj : readableWritablePair)
           -> IO ReadableStream
  
  %foreign "browser:lambda:(x,v)=>{x.readable = v}"
  prim__setReadable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReadable :  Cast readableStream ReadableStream
              => ToJS ReadableStream
              => Cast readableWritablePair ReadableWritablePair
              => ToJS ReadableWritablePair
              => (obj : readableWritablePair)
              -> (v : readableStream)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : AnyPtr -> PrimIO AnyPtr
  
  export
  writable :  Cast readableWritablePair ReadableWritablePair
           => ToJS ReadableWritablePair
           => (obj : readableWritablePair)
           -> IO WritableStream
  
  %foreign "browser:lambda:(x,v)=>{x.writable = v}"
  prim__setWritable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWritable :  Cast readableWritablePair ReadableWritablePair
              => ToJS ReadableWritablePair
              => Cast writableStream WritableStream
              => ToJS WritableStream
              => (obj : readableWritablePair)
              -> (v : writableStream)
              -> IO ()

namespace StreamPipeOptions
  
  %foreign "browser:lambda:x=>x.preventAbort"
  prim__preventAbort : AnyPtr -> PrimIO AnyPtr
  
  export
  preventAbort :  Cast streamPipeOptions StreamPipeOptions
               => ToJS StreamPipeOptions
               => (obj : streamPipeOptions)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.preventAbort = v}"
  prim__setPreventAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPreventAbort :  Cast streamPipeOptions StreamPipeOptions
                  => ToJS StreamPipeOptions
                  => (obj : streamPipeOptions)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : AnyPtr -> PrimIO AnyPtr
  
  export
  preventCancel :  Cast streamPipeOptions StreamPipeOptions
                => ToJS StreamPipeOptions
                => (obj : streamPipeOptions)
                -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.preventCancel = v}"
  prim__setPreventCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPreventCancel :  Cast streamPipeOptions StreamPipeOptions
                   => ToJS StreamPipeOptions
                   => (obj : streamPipeOptions)
                   -> (v : Bool)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.preventClose"
  prim__preventClose : AnyPtr -> PrimIO AnyPtr
  
  export
  preventClose :  Cast streamPipeOptions StreamPipeOptions
               => ToJS StreamPipeOptions
               => (obj : streamPipeOptions)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.preventClose = v}"
  prim__setPreventClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPreventClose :  Cast streamPipeOptions StreamPipeOptions
                  => ToJS StreamPipeOptions
                  => (obj : streamPipeOptions)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr
  
  export
  signal :  Cast streamPipeOptions StreamPipeOptions
         => ToJS StreamPipeOptions
         => (obj : streamPipeOptions)
         -> IO AbortSignal
  
  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSignal :  Cast abortSignal AbortSignal
            => ToJS AbortSignal
            => Cast streamPipeOptions StreamPipeOptions
            => ToJS StreamPipeOptions
            => (obj : streamPipeOptions)
            -> (v : abortSignal)
            -> IO ()

namespace Transformer
  
  %foreign "browser:lambda:x=>x.flush"
  prim__flush : AnyPtr -> PrimIO AnyPtr
  
  export
  flush :  Cast transformer Transformer
        => ToJS Transformer
        => (obj : transformer)
        -> IO TransformerFlushCallback
  
  %foreign "browser:lambda:(x,v)=>{x.flush = v}"
  prim__setFlush : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFlush :  Cast transformer Transformer
           => ToJS Transformer
           => Cast transformerFlushCallback TransformerFlushCallback
           => ToJS TransformerFlushCallback
           => (obj : transformer)
           -> (v : transformerFlushCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.readableType"
  prim__readableType : AnyPtr -> PrimIO AnyPtr
  
  export
  readableType :  Cast transformer Transformer
               => ToJS Transformer
               => (obj : transformer)
               -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.readableType = v}"
  prim__setReadableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReadableType :  Cast transformer Transformer
                  => ToJS Transformer
                  => (obj : transformer)
                  -> (v : JSAny)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr
  
  export
  start :  Cast transformer Transformer
        => ToJS Transformer
        => (obj : transformer)
        -> IO TransformerStartCallback
  
  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStart :  Cast transformer Transformer
           => ToJS Transformer
           => Cast transformerStartCallback TransformerStartCallback
           => ToJS TransformerStartCallback
           => (obj : transformer)
           -> (v : transformerStartCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : AnyPtr -> PrimIO AnyPtr
  
  export
  transform :  Cast transformer Transformer
            => ToJS Transformer
            => (obj : transformer)
            -> IO TransformerTransformCallback
  
  %foreign "browser:lambda:(x,v)=>{x.transform = v}"
  prim__setTransform : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTransform :  Cast transformer Transformer
               => ToJS Transformer
               => Cast transformerTransformCallback TransformerTransformCallback
               => ToJS TransformerTransformCallback
               => (obj : transformer)
               -> (v : transformerTransformCallback)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.writableType"
  prim__writableType : AnyPtr -> PrimIO AnyPtr
  
  export
  writableType :  Cast transformer Transformer
               => ToJS Transformer
               => (obj : transformer)
               -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.writableType = v}"
  prim__setWritableType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWritableType :  Cast transformer Transformer
                  => ToJS Transformer
                  => (obj : transformer)
                  -> (v : JSAny)
                  -> IO ()

namespace UnderlyingSink
  
  %foreign "browser:lambda:x=>x.abort"
  prim__abort : AnyPtr -> PrimIO AnyPtr
  
  export
  abort :  Cast underlyingSink UnderlyingSink
        => ToJS UnderlyingSink
        => (obj : underlyingSink)
        -> IO UnderlyingSinkAbortCallback
  
  %foreign "browser:lambda:(x,v)=>{x.abort = v}"
  prim__setAbort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAbort :  Cast underlyingSink UnderlyingSink
           => ToJS UnderlyingSink
           => Cast underlyingSinkAbortCallback UnderlyingSinkAbortCallback
           => ToJS UnderlyingSinkAbortCallback
           => (obj : underlyingSink)
           -> (v : underlyingSinkAbortCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.close"
  prim__close : AnyPtr -> PrimIO AnyPtr
  
  export
  close :  Cast underlyingSink UnderlyingSink
        => ToJS UnderlyingSink
        => (obj : underlyingSink)
        -> IO UnderlyingSinkCloseCallback
  
  %foreign "browser:lambda:(x,v)=>{x.close = v}"
  prim__setClose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setClose :  Cast underlyingSink UnderlyingSink
           => ToJS UnderlyingSink
           => Cast underlyingSinkCloseCallback UnderlyingSinkCloseCallback
           => ToJS UnderlyingSinkCloseCallback
           => (obj : underlyingSink)
           -> (v : underlyingSinkCloseCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr
  
  export
  start :  Cast underlyingSink UnderlyingSink
        => ToJS UnderlyingSink
        => (obj : underlyingSink)
        -> IO UnderlyingSinkStartCallback
  
  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStart :  Cast underlyingSink UnderlyingSink
           => ToJS UnderlyingSink
           => Cast underlyingSinkStartCallback UnderlyingSinkStartCallback
           => ToJS UnderlyingSinkStartCallback
           => (obj : underlyingSink)
           -> (v : underlyingSinkStartCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast underlyingSink UnderlyingSink
       => ToJS UnderlyingSink
       => (obj : underlyingSink)
       -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast underlyingSink UnderlyingSink
          => ToJS UnderlyingSink
          => (obj : underlyingSink)
          -> (v : JSAny)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.write"
  prim__write : AnyPtr -> PrimIO AnyPtr
  
  export
  write :  Cast underlyingSink UnderlyingSink
        => ToJS UnderlyingSink
        => (obj : underlyingSink)
        -> IO UnderlyingSinkWriteCallback
  
  %foreign "browser:lambda:(x,v)=>{x.write = v}"
  prim__setWrite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWrite :  Cast underlyingSink UnderlyingSink
           => ToJS UnderlyingSink
           => Cast underlyingSinkWriteCallback UnderlyingSinkWriteCallback
           => ToJS UnderlyingSinkWriteCallback
           => (obj : underlyingSink)
           -> (v : underlyingSinkWriteCallback)
           -> IO ()

namespace UnderlyingSource
  
  %foreign "browser:lambda:x=>x.autoAllocateChunkSize"
  prim__autoAllocateChunkSize : AnyPtr -> PrimIO AnyPtr
  
  export
  autoAllocateChunkSize :  Cast underlyingSource UnderlyingSource
                        => ToJS UnderlyingSource
                        => (obj : underlyingSource)
                        -> IO UInt64
  
  %foreign "browser:lambda:(x,v)=>{x.autoAllocateChunkSize = v}"
  prim__setAutoAllocateChunkSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutoAllocateChunkSize :  Cast underlyingSource UnderlyingSource
                           => ToJS UnderlyingSource
                           => (obj : underlyingSource)
                           -> (v : UInt64)
                           -> IO ()
  
  %foreign "browser:lambda:x=>x.cancel"
  prim__cancel : AnyPtr -> PrimIO AnyPtr
  
  export
  cancel :  Cast underlyingSource UnderlyingSource
         => ToJS UnderlyingSource
         => (obj : underlyingSource)
         -> IO UnderlyingSourceCancelCallback
  
  %foreign "browser:lambda:(x,v)=>{x.cancel = v}"
  prim__setCancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCancel :  Cast underlyingSource UnderlyingSource
            => ToJS UnderlyingSource
            => Cast underlyingSourceCancelCallback UnderlyingSourceCancelCallback
            => ToJS UnderlyingSourceCancelCallback
            => (obj : underlyingSource)
            -> (v : underlyingSourceCancelCallback)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.pull"
  prim__pull : AnyPtr -> PrimIO AnyPtr
  
  export
  pull :  Cast underlyingSource UnderlyingSource
       => ToJS UnderlyingSource
       => (obj : underlyingSource)
       -> IO UnderlyingSourcePullCallback
  
  %foreign "browser:lambda:(x,v)=>{x.pull = v}"
  prim__setPull : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPull :  Cast underlyingSource UnderlyingSource
          => ToJS UnderlyingSource
          => Cast underlyingSourcePullCallback UnderlyingSourcePullCallback
          => ToJS UnderlyingSourcePullCallback
          => (obj : underlyingSource)
          -> (v : underlyingSourcePullCallback)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.start"
  prim__start : AnyPtr -> PrimIO AnyPtr
  
  export
  start :  Cast underlyingSource UnderlyingSource
        => ToJS UnderlyingSource
        => (obj : underlyingSource)
        -> IO UnderlyingSourceStartCallback
  
  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStart :  Cast underlyingSource UnderlyingSource
           => ToJS UnderlyingSource
           => Cast underlyingSourceStartCallback UnderlyingSourceStartCallback
           => ToJS UnderlyingSourceStartCallback
           => (obj : underlyingSource)
           -> (v : underlyingSourceStartCallback)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast underlyingSource UnderlyingSource
       => ToJS UnderlyingSource
       => (obj : underlyingSource)
       -> IO ReadableStreamType
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast readableStreamType ReadableStreamType
          => ToJS ReadableStreamType
          => Cast underlyingSource UnderlyingSource
          => ToJS UnderlyingSource
          => (obj : underlyingSource)
          -> (v : readableStreamType)
          -> IO ()



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ReadableStreamBYOBReader ReadableStreamGenericReader where
  cast = believe_me

export
Cast ReadableStreamDefaultReader ReadableStreamGenericReader where
  cast = believe_me