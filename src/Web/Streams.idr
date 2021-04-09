module Web.Streams
 
import JS
import Web.Internal.StreamsPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy
  
  public export
  JSType ByteLengthQueuingStrategy where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (init : QueuingStrategyInit) -> JSIO ByteLengthQueuingStrategy
  new a = primJS $ ByteLengthQueuingStrategy.prim__new a
  
  export
  highWaterMark : (obj : ByteLengthQueuingStrategy) -> JSIO Double
  highWaterMark a = primJS $ ByteLengthQueuingStrategy.prim__highWaterMark a
  
  export
  size : (obj : ByteLengthQueuingStrategy) -> JSIO Function
  size a = primJS $ ByteLengthQueuingStrategy.prim__size a

namespace CountQueuingStrategy
  
  public export
  JSType CountQueuingStrategy where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (init : QueuingStrategyInit) -> JSIO CountQueuingStrategy
  new a = primJS $ CountQueuingStrategy.prim__new a
  
  export
  highWaterMark : (obj : CountQueuingStrategy) -> JSIO Double
  highWaterMark a = primJS $ CountQueuingStrategy.prim__highWaterMark a
  
  export
  size : (obj : CountQueuingStrategy) -> JSIO Function
  size a = primJS $ CountQueuingStrategy.prim__size a

namespace ReadableByteStreamController
  
  public export
  JSType ReadableByteStreamController where
    parents =  [ Object ]

    mixins =  []
  
  export
  byobRequest :  (obj : ReadableByteStreamController)
              -> JSIO (Nullable ReadableStreamBYOBRequest)
  byobRequest a = primJS $ ReadableByteStreamController.prim__byobRequest a
  
  export
  desiredSize : (obj : ReadableByteStreamController) -> JSIO (Nullable Double)
  desiredSize a = primJS $ ReadableByteStreamController.prim__desiredSize a
  
  export
  close : (obj : ReadableByteStreamController) -> JSIO ()
  close a = primJS $ ReadableByteStreamController.prim__close a
  
  export
  enqueue :  (obj : ReadableByteStreamController)
          -> (chunk : ArrayBufferView)
          -> JSIO ()
  enqueue a b = primJS $ ReadableByteStreamController.prim__enqueue a b
  
  export
  error :  (obj : ReadableByteStreamController)
        -> (e : UndefOr AnyPtr)
        -> JSIO ()
  error a b = primJS $ ReadableByteStreamController.prim__error a b

  export
  error' : (obj : ReadableByteStreamController) -> JSIO ()
  error' a = error a undef

namespace ReadableStream
  
  public export
  JSType ReadableStream where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (underlyingSource : UndefOr Object)
      -> (strategy : UndefOr QueuingStrategy)
      -> JSIO ReadableStream
  new a b = primJS $ ReadableStream.prim__new a b

  export
  new' : JSIO ReadableStream
  new' = new undef undef
  
  export
  locked : (obj : ReadableStream) -> JSIO Boolean
  locked a = primJS $ ReadableStream.prim__locked a
  
  export
  cancel :  (obj : ReadableStream)
         -> (reason : UndefOr AnyPtr)
         -> JSIO (Promise Undefined)
  cancel a b = primJS $ ReadableStream.prim__cancel a b

  export
  cancel' : (obj : ReadableStream) -> JSIO (Promise Undefined)
  cancel' a = cancel a undef
  
  export
  getReader :  (obj : ReadableStream)
            -> (options : UndefOr ReadableStreamGetReaderOptions)
            -> JSIO ReadableStreamReader
  getReader a b = primJS $ ReadableStream.prim__getReader a b

  export
  getReader' : (obj : ReadableStream) -> JSIO ReadableStreamReader
  getReader' a = getReader a undef
  
  export
  pipeThrough :  (obj : ReadableStream)
              -> (transform : ReadableWritablePair)
              -> (options : UndefOr StreamPipeOptions)
              -> JSIO ReadableStream
  pipeThrough a b c = primJS $ ReadableStream.prim__pipeThrough a b c

  export
  pipeThrough' :  (obj : ReadableStream)
               -> (transform : ReadableWritablePair)
               -> JSIO ReadableStream
  pipeThrough' a b = pipeThrough a b undef
  
  export
  pipeTo :  (obj : ReadableStream)
         -> (destination : WritableStream)
         -> (options : UndefOr StreamPipeOptions)
         -> JSIO (Promise Undefined)
  pipeTo a b c = primJS $ ReadableStream.prim__pipeTo a b c

  export
  pipeTo' :  (obj : ReadableStream)
          -> (destination : WritableStream)
          -> JSIO (Promise Undefined)
  pipeTo' a b = pipeTo a b undef
  
  export
  tee : (obj : ReadableStream) -> JSIO (Array ReadableStream)
  tee a = primJS $ ReadableStream.prim__tee a

namespace ReadableStreamBYOBReader
  
  public export
  JSType ReadableStreamBYOBReader where
    parents =  [ Object ]

    mixins =  [ ReadableStreamGenericReader ]
  
  export
  new : (stream : ReadableStream) -> JSIO ReadableStreamBYOBReader
  new a = primJS $ ReadableStreamBYOBReader.prim__new a
  
  export
  read :  (obj : ReadableStreamBYOBReader)
       -> (view : ArrayBufferView)
       -> JSIO (Promise ReadableStreamBYOBReadResult)
  read a b = primJS $ ReadableStreamBYOBReader.prim__read a b
  
  export
  releaseLock : (obj : ReadableStreamBYOBReader) -> JSIO ()
  releaseLock a = primJS $ ReadableStreamBYOBReader.prim__releaseLock a

namespace ReadableStreamBYOBRequest
  
  public export
  JSType ReadableStreamBYOBRequest where
    parents =  [ Object ]

    mixins =  []
  
  export
  view : (obj : ReadableStreamBYOBRequest) -> JSIO (Nullable ArrayBufferView)
  view a = primJS $ ReadableStreamBYOBRequest.prim__view a
  
  export
  respond :  (obj : ReadableStreamBYOBRequest)
          -> (bytesWritten : UInt64)
          -> JSIO ()
  respond a b = primJS $ ReadableStreamBYOBRequest.prim__respond a b
  
  export
  respondWithNewView :  (obj : ReadableStreamBYOBRequest)
                     -> (view : ArrayBufferView)
                     -> JSIO ()
  respondWithNewView a b = primJS $ ReadableStreamBYOBRequest.prim__respondWithNewView a
                                                                                       b

namespace ReadableStreamDefaultController
  
  public export
  JSType ReadableStreamDefaultController where
    parents =  [ Object ]

    mixins =  []
  
  export
  desiredSize :  (obj : ReadableStreamDefaultController)
              -> JSIO (Nullable Double)
  desiredSize a = primJS $ ReadableStreamDefaultController.prim__desiredSize a
  
  export
  close : (obj : ReadableStreamDefaultController) -> JSIO ()
  close a = primJS $ ReadableStreamDefaultController.prim__close a
  
  export
  enqueue :  (obj : ReadableStreamDefaultController)
          -> (chunk : UndefOr AnyPtr)
          -> JSIO ()
  enqueue a b = primJS $ ReadableStreamDefaultController.prim__enqueue a b

  export
  enqueue' : (obj : ReadableStreamDefaultController) -> JSIO ()
  enqueue' a = enqueue a undef
  
  export
  error :  (obj : ReadableStreamDefaultController)
        -> (e : UndefOr AnyPtr)
        -> JSIO ()
  error a b = primJS $ ReadableStreamDefaultController.prim__error a b

  export
  error' : (obj : ReadableStreamDefaultController) -> JSIO ()
  error' a = error a undef

namespace ReadableStreamDefaultReader
  
  public export
  JSType ReadableStreamDefaultReader where
    parents =  [ Object ]

    mixins =  [ ReadableStreamGenericReader ]
  
  export
  new : (stream : ReadableStream) -> JSIO ReadableStreamDefaultReader
  new a = primJS $ ReadableStreamDefaultReader.prim__new a
  
  export
  read :  (obj : ReadableStreamDefaultReader)
       -> JSIO (Promise ReadableStreamDefaultReadResult)
  read a = primJS $ ReadableStreamDefaultReader.prim__read a
  
  export
  releaseLock : (obj : ReadableStreamDefaultReader) -> JSIO ()
  releaseLock a = primJS $ ReadableStreamDefaultReader.prim__releaseLock a

namespace TransformStream
  
  public export
  JSType TransformStream where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (transformer : UndefOr Object)
      -> (writableStrategy : UndefOr QueuingStrategy)
      -> (readableStrategy : UndefOr QueuingStrategy)
      -> JSIO TransformStream
  new a b c = primJS $ TransformStream.prim__new a b c

  export
  new' : JSIO TransformStream
  new' = new undef undef undef
  
  export
  readable : (obj : TransformStream) -> JSIO ReadableStream
  readable a = primJS $ TransformStream.prim__readable a
  
  export
  writable : (obj : TransformStream) -> JSIO WritableStream
  writable a = primJS $ TransformStream.prim__writable a

namespace TransformStreamDefaultController
  
  public export
  JSType TransformStreamDefaultController where
    parents =  [ Object ]

    mixins =  []
  
  export
  desiredSize :  (obj : TransformStreamDefaultController)
              -> JSIO (Nullable Double)
  desiredSize a = primJS $ TransformStreamDefaultController.prim__desiredSize a
  
  export
  enqueue :  (obj : TransformStreamDefaultController)
          -> (chunk : UndefOr AnyPtr)
          -> JSIO ()
  enqueue a b = primJS $ TransformStreamDefaultController.prim__enqueue a b

  export
  enqueue' : (obj : TransformStreamDefaultController) -> JSIO ()
  enqueue' a = enqueue a undef
  
  export
  error :  (obj : TransformStreamDefaultController)
        -> (reason : UndefOr AnyPtr)
        -> JSIO ()
  error a b = primJS $ TransformStreamDefaultController.prim__error a b

  export
  error' : (obj : TransformStreamDefaultController) -> JSIO ()
  error' a = error a undef
  
  export
  terminate : (obj : TransformStreamDefaultController) -> JSIO ()
  terminate a = primJS $ TransformStreamDefaultController.prim__terminate a

namespace WritableStream
  
  public export
  JSType WritableStream where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (underlyingSink : UndefOr Object)
      -> (strategy : UndefOr QueuingStrategy)
      -> JSIO WritableStream
  new a b = primJS $ WritableStream.prim__new a b

  export
  new' : JSIO WritableStream
  new' = new undef undef
  
  export
  locked : (obj : WritableStream) -> JSIO Boolean
  locked a = primJS $ WritableStream.prim__locked a
  
  export
  abort :  (obj : WritableStream)
        -> (reason : UndefOr AnyPtr)
        -> JSIO (Promise Undefined)
  abort a b = primJS $ WritableStream.prim__abort a b

  export
  abort' : (obj : WritableStream) -> JSIO (Promise Undefined)
  abort' a = abort a undef
  
  export
  close : (obj : WritableStream) -> JSIO (Promise Undefined)
  close a = primJS $ WritableStream.prim__close a
  
  export
  getWriter : (obj : WritableStream) -> JSIO WritableStreamDefaultWriter
  getWriter a = primJS $ WritableStream.prim__getWriter a

namespace WritableStreamDefaultController
  
  public export
  JSType WritableStreamDefaultController where
    parents =  [ Object ]

    mixins =  []
  
  export
  error :  (obj : WritableStreamDefaultController)
        -> (e : UndefOr AnyPtr)
        -> JSIO ()
  error a b = primJS $ WritableStreamDefaultController.prim__error a b

  export
  error' : (obj : WritableStreamDefaultController) -> JSIO ()
  error' a = error a undef

namespace WritableStreamDefaultWriter
  
  public export
  JSType WritableStreamDefaultWriter where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (stream : WritableStream) -> JSIO WritableStreamDefaultWriter
  new a = primJS $ WritableStreamDefaultWriter.prim__new a
  
  export
  closed : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  closed a = primJS $ WritableStreamDefaultWriter.prim__closed a
  
  export
  desiredSize : (obj : WritableStreamDefaultWriter) -> JSIO (Nullable Double)
  desiredSize a = primJS $ WritableStreamDefaultWriter.prim__desiredSize a
  
  export
  ready : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  ready a = primJS $ WritableStreamDefaultWriter.prim__ready a
  
  export
  abort :  (obj : WritableStreamDefaultWriter)
        -> (reason : UndefOr AnyPtr)
        -> JSIO (Promise Undefined)
  abort a b = primJS $ WritableStreamDefaultWriter.prim__abort a b

  export
  abort' : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  abort' a = abort a undef
  
  export
  close : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  close a = primJS $ WritableStreamDefaultWriter.prim__close a
  
  export
  releaseLock : (obj : WritableStreamDefaultWriter) -> JSIO ()
  releaseLock a = primJS $ WritableStreamDefaultWriter.prim__releaseLock a
  
  export
  write :  (obj : WritableStreamDefaultWriter)
        -> (chunk : UndefOr AnyPtr)
        -> JSIO (Promise Undefined)
  write a b = primJS $ WritableStreamDefaultWriter.prim__write a b

  export
  write' : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  write' a = write a undef

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GenericTransformStream
  
  export
  readable : (obj : GenericTransformStream) -> JSIO ReadableStream
  readable a = primJS $ GenericTransformStream.prim__readable a
  
  export
  writable : (obj : GenericTransformStream) -> JSIO WritableStream
  writable a = primJS $ GenericTransformStream.prim__writable a

namespace ReadableStreamGenericReader
  
  export
  closed : (obj : ReadableStreamGenericReader) -> JSIO (Promise Undefined)
  closed a = primJS $ ReadableStreamGenericReader.prim__closed a
  
  export
  cancel :  (obj : ReadableStreamGenericReader)
         -> (reason : UndefOr AnyPtr)
         -> JSIO (Promise Undefined)
  cancel a b = primJS $ ReadableStreamGenericReader.prim__cancel a b

  export
  cancel' : (obj : ReadableStreamGenericReader) -> JSIO (Promise Undefined)
  cancel' a = cancel a undef

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy
  
  public export
  JSType QueuingStrategy where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (highWaterMark : UndefOr Double)
      -> (size : UndefOr QueuingStrategySize)
      -> JSIO QueuingStrategy
  new a b = primJS $ QueuingStrategy.prim__new a b

  export
  new' : JSIO QueuingStrategy
  new' = new undef undef
  
  export
  highWaterMark : (obj : QueuingStrategy) -> JSIO (UndefOr Double)
  highWaterMark a = primJS $ QueuingStrategy.prim__highWaterMark a
  
  export
  setHighWaterMark :  (obj : QueuingStrategy)
                   -> (value : UndefOr Double)
                   -> JSIO ()
  setHighWaterMark a b = primJS $ QueuingStrategy.prim__setHighWaterMark a b

  export
  setHighWaterMark' : (obj : QueuingStrategy) -> JSIO ()
  setHighWaterMark' a = setHighWaterMark a undef
  
  export
  size : (obj : QueuingStrategy) -> JSIO (UndefOr QueuingStrategySize)
  size a = primJS $ QueuingStrategy.prim__size a
  
  export
  setSize :  (obj : QueuingStrategy)
          -> (value : UndefOr QueuingStrategySize)
          -> JSIO ()
  setSize a b = primJS $ QueuingStrategy.prim__setSize a b

  export
  setSize' : (obj : QueuingStrategy) -> JSIO ()
  setSize' a = setSize a undef

namespace QueuingStrategyInit
  
  public export
  JSType QueuingStrategyInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (highWaterMark : Double) -> JSIO QueuingStrategyInit
  new a = primJS $ QueuingStrategyInit.prim__new a
  
  export
  highWaterMark : (obj : QueuingStrategyInit) -> JSIO Double
  highWaterMark a = primJS $ QueuingStrategyInit.prim__highWaterMark a
  
  export
  setHighWaterMark : (obj : QueuingStrategyInit) -> (value : Double) -> JSIO ()
  setHighWaterMark a b = primJS $ QueuingStrategyInit.prim__setHighWaterMark a b

namespace ReadableStreamBYOBReadResult
  
  public export
  JSType ReadableStreamBYOBReadResult where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (value : UndefOr ArrayBufferView)
      -> (done : UndefOr Boolean)
      -> JSIO ReadableStreamBYOBReadResult
  new a b = primJS $ ReadableStreamBYOBReadResult.prim__new a b

  export
  new' : JSIO ReadableStreamBYOBReadResult
  new' = new undef undef
  
  export
  done : (obj : ReadableStreamBYOBReadResult) -> JSIO (UndefOr Boolean)
  done a = primJS $ ReadableStreamBYOBReadResult.prim__done a
  
  export
  setDone :  (obj : ReadableStreamBYOBReadResult)
          -> (value : UndefOr Boolean)
          -> JSIO ()
  setDone a b = primJS $ ReadableStreamBYOBReadResult.prim__setDone a b

  export
  setDone' : (obj : ReadableStreamBYOBReadResult) -> JSIO ()
  setDone' a = setDone a undef
  
  export
  value : (obj : ReadableStreamBYOBReadResult) -> JSIO (UndefOr ArrayBufferView)
  value a = primJS $ ReadableStreamBYOBReadResult.prim__value a
  
  export
  setValue :  (obj : ReadableStreamBYOBReadResult)
           -> (value : UndefOr ArrayBufferView)
           -> JSIO ()
  setValue a b = primJS $ ReadableStreamBYOBReadResult.prim__setValue a b

  export
  setValue' : (obj : ReadableStreamBYOBReadResult) -> JSIO ()
  setValue' a = setValue a undef

namespace ReadableStreamDefaultReadResult
  
  public export
  JSType ReadableStreamDefaultReadResult where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (value : UndefOr AnyPtr)
      -> (done : UndefOr Boolean)
      -> JSIO ReadableStreamDefaultReadResult
  new a b = primJS $ ReadableStreamDefaultReadResult.prim__new a b

  export
  new' : JSIO ReadableStreamDefaultReadResult
  new' = new undef undef
  
  export
  done : (obj : ReadableStreamDefaultReadResult) -> JSIO (UndefOr Boolean)
  done a = primJS $ ReadableStreamDefaultReadResult.prim__done a
  
  export
  setDone :  (obj : ReadableStreamDefaultReadResult)
          -> (value : UndefOr Boolean)
          -> JSIO ()
  setDone a b = primJS $ ReadableStreamDefaultReadResult.prim__setDone a b

  export
  setDone' : (obj : ReadableStreamDefaultReadResult) -> JSIO ()
  setDone' a = setDone a undef
  
  export
  value : (obj : ReadableStreamDefaultReadResult) -> JSIO (UndefOr AnyPtr)
  value a = primJS $ ReadableStreamDefaultReadResult.prim__value a
  
  export
  setValue :  (obj : ReadableStreamDefaultReadResult)
           -> (value : UndefOr AnyPtr)
           -> JSIO ()
  setValue a b = primJS $ ReadableStreamDefaultReadResult.prim__setValue a b

  export
  setValue' : (obj : ReadableStreamDefaultReadResult) -> JSIO ()
  setValue' a = setValue a undef

namespace ReadableStreamGetReaderOptions
  
  public export
  JSType ReadableStreamGetReaderOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (mode : UndefOr ReadableStreamReaderMode)
      -> JSIO ReadableStreamGetReaderOptions
  new a = primJS $ ReadableStreamGetReaderOptions.prim__new a

  export
  new' : JSIO ReadableStreamGetReaderOptions
  new' = new undef
  
  export
  mode :  (obj : ReadableStreamGetReaderOptions)
       -> JSIO (UndefOr ReadableStreamReaderMode)
  mode a = primJS $ ReadableStreamGetReaderOptions.prim__mode a
  
  export
  setMode :  (obj : ReadableStreamGetReaderOptions)
          -> (value : UndefOr ReadableStreamReaderMode)
          -> JSIO ()
  setMode a b = primJS $ ReadableStreamGetReaderOptions.prim__setMode a b

  export
  setMode' : (obj : ReadableStreamGetReaderOptions) -> JSIO ()
  setMode' a = setMode a undef

namespace ReadableStreamIteratorOptions
  
  public export
  JSType ReadableStreamIteratorOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (preventCancel : UndefOr Boolean) -> JSIO ReadableStreamIteratorOptions
  new a = primJS $ ReadableStreamIteratorOptions.prim__new a

  export
  new' : JSIO ReadableStreamIteratorOptions
  new' = new undef
  
  export
  preventCancel :  (obj : ReadableStreamIteratorOptions)
                -> JSIO (UndefOr Boolean)
  preventCancel a = primJS $ ReadableStreamIteratorOptions.prim__preventCancel a
  
  export
  setPreventCancel :  (obj : ReadableStreamIteratorOptions)
                   -> (value : UndefOr Boolean)
                   -> JSIO ()
  setPreventCancel a b = primJS $ ReadableStreamIteratorOptions.prim__setPreventCancel a
                                                                                       b

  export
  setPreventCancel' : (obj : ReadableStreamIteratorOptions) -> JSIO ()
  setPreventCancel' a = setPreventCancel a undef

namespace ReadableWritablePair
  
  public export
  JSType ReadableWritablePair where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (readable : ReadableStream)
      -> (writable : WritableStream)
      -> JSIO ReadableWritablePair
  new a b = primJS $ ReadableWritablePair.prim__new a b
  
  export
  readable : (obj : ReadableWritablePair) -> JSIO ReadableStream
  readable a = primJS $ ReadableWritablePair.prim__readable a
  
  export
  setReadable :  (obj : ReadableWritablePair)
              -> (value : ReadableStream)
              -> JSIO ()
  setReadable a b = primJS $ ReadableWritablePair.prim__setReadable a b
  
  export
  writable : (obj : ReadableWritablePair) -> JSIO WritableStream
  writable a = primJS $ ReadableWritablePair.prim__writable a
  
  export
  setWritable :  (obj : ReadableWritablePair)
              -> (value : WritableStream)
              -> JSIO ()
  setWritable a b = primJS $ ReadableWritablePair.prim__setWritable a b

namespace StreamPipeOptions
  
  public export
  JSType StreamPipeOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (preventClose : UndefOr Boolean)
      -> (preventAbort : UndefOr Boolean)
      -> (preventCancel : UndefOr Boolean)
      -> (signal : UndefOr AbortSignal)
      -> JSIO StreamPipeOptions
  new a b c d = primJS $ StreamPipeOptions.prim__new a b c d

  export
  new' : JSIO StreamPipeOptions
  new' = new undef undef undef undef
  
  export
  preventAbort : (obj : StreamPipeOptions) -> JSIO (UndefOr Boolean)
  preventAbort a = primJS $ StreamPipeOptions.prim__preventAbort a
  
  export
  setPreventAbort :  (obj : StreamPipeOptions)
                  -> (value : UndefOr Boolean)
                  -> JSIO ()
  setPreventAbort a b = primJS $ StreamPipeOptions.prim__setPreventAbort a b

  export
  setPreventAbort' : (obj : StreamPipeOptions) -> JSIO ()
  setPreventAbort' a = setPreventAbort a undef
  
  export
  preventCancel : (obj : StreamPipeOptions) -> JSIO (UndefOr Boolean)
  preventCancel a = primJS $ StreamPipeOptions.prim__preventCancel a
  
  export
  setPreventCancel :  (obj : StreamPipeOptions)
                   -> (value : UndefOr Boolean)
                   -> JSIO ()
  setPreventCancel a b = primJS $ StreamPipeOptions.prim__setPreventCancel a b

  export
  setPreventCancel' : (obj : StreamPipeOptions) -> JSIO ()
  setPreventCancel' a = setPreventCancel a undef
  
  export
  preventClose : (obj : StreamPipeOptions) -> JSIO (UndefOr Boolean)
  preventClose a = primJS $ StreamPipeOptions.prim__preventClose a
  
  export
  setPreventClose :  (obj : StreamPipeOptions)
                  -> (value : UndefOr Boolean)
                  -> JSIO ()
  setPreventClose a b = primJS $ StreamPipeOptions.prim__setPreventClose a b

  export
  setPreventClose' : (obj : StreamPipeOptions) -> JSIO ()
  setPreventClose' a = setPreventClose a undef
  
  export
  signal : (obj : StreamPipeOptions) -> JSIO (UndefOr AbortSignal)
  signal a = primJS $ StreamPipeOptions.prim__signal a
  
  export
  setSignal :  (obj : StreamPipeOptions)
            -> (value : UndefOr AbortSignal)
            -> JSIO ()
  setSignal a b = primJS $ StreamPipeOptions.prim__setSignal a b

  export
  setSignal' : (obj : StreamPipeOptions) -> JSIO ()
  setSignal' a = setSignal a undef

namespace Transformer
  
  public export
  JSType Transformer where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (start : UndefOr TransformerStartCallback)
      -> (transform : UndefOr TransformerTransformCallback)
      -> (flush : UndefOr TransformerFlushCallback)
      -> (readableType : UndefOr AnyPtr)
      -> (writableType : UndefOr AnyPtr)
      -> JSIO Transformer
  new a b c d e = primJS $ Transformer.prim__new a b c d e

  export
  new' : JSIO Transformer
  new' = new undef undef undef undef undef
  
  export
  flush : (obj : Transformer) -> JSIO (UndefOr TransformerFlushCallback)
  flush a = primJS $ Transformer.prim__flush a
  
  export
  setFlush :  (obj : Transformer)
           -> (value : UndefOr TransformerFlushCallback)
           -> JSIO ()
  setFlush a b = primJS $ Transformer.prim__setFlush a b

  export
  setFlush' : (obj : Transformer) -> JSIO ()
  setFlush' a = setFlush a undef
  
  export
  readableType : (obj : Transformer) -> JSIO (UndefOr AnyPtr)
  readableType a = primJS $ Transformer.prim__readableType a
  
  export
  setReadableType : (obj : Transformer) -> (value : UndefOr AnyPtr) -> JSIO ()
  setReadableType a b = primJS $ Transformer.prim__setReadableType a b

  export
  setReadableType' : (obj : Transformer) -> JSIO ()
  setReadableType' a = setReadableType a undef
  
  export
  start : (obj : Transformer) -> JSIO (UndefOr TransformerStartCallback)
  start a = primJS $ Transformer.prim__start a
  
  export
  setStart :  (obj : Transformer)
           -> (value : UndefOr TransformerStartCallback)
           -> JSIO ()
  setStart a b = primJS $ Transformer.prim__setStart a b

  export
  setStart' : (obj : Transformer) -> JSIO ()
  setStart' a = setStart a undef
  
  export
  transform : (obj : Transformer) -> JSIO (UndefOr TransformerTransformCallback)
  transform a = primJS $ Transformer.prim__transform a
  
  export
  setTransform :  (obj : Transformer)
               -> (value : UndefOr TransformerTransformCallback)
               -> JSIO ()
  setTransform a b = primJS $ Transformer.prim__setTransform a b

  export
  setTransform' : (obj : Transformer) -> JSIO ()
  setTransform' a = setTransform a undef
  
  export
  writableType : (obj : Transformer) -> JSIO (UndefOr AnyPtr)
  writableType a = primJS $ Transformer.prim__writableType a
  
  export
  setWritableType : (obj : Transformer) -> (value : UndefOr AnyPtr) -> JSIO ()
  setWritableType a b = primJS $ Transformer.prim__setWritableType a b

  export
  setWritableType' : (obj : Transformer) -> JSIO ()
  setWritableType' a = setWritableType a undef

namespace UnderlyingSink
  
  public export
  JSType UnderlyingSink where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (start : UndefOr UnderlyingSinkStartCallback)
      -> (write : UndefOr UnderlyingSinkWriteCallback)
      -> (close : UndefOr UnderlyingSinkCloseCallback)
      -> (abort : UndefOr UnderlyingSinkAbortCallback)
      -> (type : UndefOr AnyPtr)
      -> JSIO UnderlyingSink
  new a b c d e = primJS $ UnderlyingSink.prim__new a b c d e

  export
  new' : JSIO UnderlyingSink
  new' = new undef undef undef undef undef
  
  export
  abort : (obj : UnderlyingSink) -> JSIO (UndefOr UnderlyingSinkAbortCallback)
  abort a = primJS $ UnderlyingSink.prim__abort a
  
  export
  setAbort :  (obj : UnderlyingSink)
           -> (value : UndefOr UnderlyingSinkAbortCallback)
           -> JSIO ()
  setAbort a b = primJS $ UnderlyingSink.prim__setAbort a b

  export
  setAbort' : (obj : UnderlyingSink) -> JSIO ()
  setAbort' a = setAbort a undef
  
  export
  close : (obj : UnderlyingSink) -> JSIO (UndefOr UnderlyingSinkCloseCallback)
  close a = primJS $ UnderlyingSink.prim__close a
  
  export
  setClose :  (obj : UnderlyingSink)
           -> (value : UndefOr UnderlyingSinkCloseCallback)
           -> JSIO ()
  setClose a b = primJS $ UnderlyingSink.prim__setClose a b

  export
  setClose' : (obj : UnderlyingSink) -> JSIO ()
  setClose' a = setClose a undef
  
  export
  start : (obj : UnderlyingSink) -> JSIO (UndefOr UnderlyingSinkStartCallback)
  start a = primJS $ UnderlyingSink.prim__start a
  
  export
  setStart :  (obj : UnderlyingSink)
           -> (value : UndefOr UnderlyingSinkStartCallback)
           -> JSIO ()
  setStart a b = primJS $ UnderlyingSink.prim__setStart a b

  export
  setStart' : (obj : UnderlyingSink) -> JSIO ()
  setStart' a = setStart a undef
  
  export
  type : (obj : UnderlyingSink) -> JSIO (UndefOr AnyPtr)
  type a = primJS $ UnderlyingSink.prim__type a
  
  export
  setType : (obj : UnderlyingSink) -> (value : UndefOr AnyPtr) -> JSIO ()
  setType a b = primJS $ UnderlyingSink.prim__setType a b

  export
  setType' : (obj : UnderlyingSink) -> JSIO ()
  setType' a = setType a undef
  
  export
  write : (obj : UnderlyingSink) -> JSIO (UndefOr UnderlyingSinkWriteCallback)
  write a = primJS $ UnderlyingSink.prim__write a
  
  export
  setWrite :  (obj : UnderlyingSink)
           -> (value : UndefOr UnderlyingSinkWriteCallback)
           -> JSIO ()
  setWrite a b = primJS $ UnderlyingSink.prim__setWrite a b

  export
  setWrite' : (obj : UnderlyingSink) -> JSIO ()
  setWrite' a = setWrite a undef

namespace UnderlyingSource
  
  public export
  JSType UnderlyingSource where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (start : UndefOr UnderlyingSourceStartCallback)
      -> (pull : UndefOr UnderlyingSourcePullCallback)
      -> (cancel : UndefOr UnderlyingSourceCancelCallback)
      -> (type : UndefOr ReadableStreamType)
      -> (autoAllocateChunkSize : UndefOr UInt64)
      -> JSIO UnderlyingSource
  new a b c d e = primJS $ UnderlyingSource.prim__new a b c d e

  export
  new' : JSIO UnderlyingSource
  new' = new undef undef undef undef undef
  
  export
  autoAllocateChunkSize : (obj : UnderlyingSource) -> JSIO (UndefOr UInt64)
  autoAllocateChunkSize a = primJS $ UnderlyingSource.prim__autoAllocateChunkSize a
  
  export
  setAutoAllocateChunkSize :  (obj : UnderlyingSource)
                           -> (value : UndefOr UInt64)
                           -> JSIO ()
  setAutoAllocateChunkSize a b = primJS $ UnderlyingSource.prim__setAutoAllocateChunkSize a
                                                                                          b

  export
  setAutoAllocateChunkSize' : (obj : UnderlyingSource) -> JSIO ()
  setAutoAllocateChunkSize' a = setAutoAllocateChunkSize a undef
  
  export
  cancel :  (obj : UnderlyingSource)
         -> JSIO (UndefOr UnderlyingSourceCancelCallback)
  cancel a = primJS $ UnderlyingSource.prim__cancel a
  
  export
  setCancel :  (obj : UnderlyingSource)
            -> (value : UndefOr UnderlyingSourceCancelCallback)
            -> JSIO ()
  setCancel a b = primJS $ UnderlyingSource.prim__setCancel a b

  export
  setCancel' : (obj : UnderlyingSource) -> JSIO ()
  setCancel' a = setCancel a undef
  
  export
  pull : (obj : UnderlyingSource) -> JSIO (UndefOr UnderlyingSourcePullCallback)
  pull a = primJS $ UnderlyingSource.prim__pull a
  
  export
  setPull :  (obj : UnderlyingSource)
          -> (value : UndefOr UnderlyingSourcePullCallback)
          -> JSIO ()
  setPull a b = primJS $ UnderlyingSource.prim__setPull a b

  export
  setPull' : (obj : UnderlyingSource) -> JSIO ()
  setPull' a = setPull a undef
  
  export
  start :  (obj : UnderlyingSource)
        -> JSIO (UndefOr UnderlyingSourceStartCallback)
  start a = primJS $ UnderlyingSource.prim__start a
  
  export
  setStart :  (obj : UnderlyingSource)
           -> (value : UndefOr UnderlyingSourceStartCallback)
           -> JSIO ()
  setStart a b = primJS $ UnderlyingSource.prim__setStart a b

  export
  setStart' : (obj : UnderlyingSource) -> JSIO ()
  setStart' a = setStart a undef
  
  export
  type : (obj : UnderlyingSource) -> JSIO (UndefOr ReadableStreamType)
  type a = primJS $ UnderlyingSource.prim__type a
  
  export
  setType :  (obj : UnderlyingSource)
          -> (value : UndefOr ReadableStreamType)
          -> JSIO ()
  setType a b = primJS $ UnderlyingSource.prim__setType a b

  export
  setType' : (obj : UnderlyingSource) -> JSIO ()
  setType' a = setType a undef

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------










