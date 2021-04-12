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
              -> JSIO (Maybe ReadableStreamBYOBRequest)
  byobRequest a = tryJS "ReadableByteStreamController.byobRequest"
                $ ReadableByteStreamController.prim__byobRequest a
  
  export
  desiredSize : (obj : ReadableByteStreamController) -> JSIO (Maybe Double)
  desiredSize a = tryJS "ReadableByteStreamController.desiredSize"
                $ ReadableByteStreamController.prim__desiredSize a
  
  export
  close : (obj : ReadableByteStreamController) -> JSIO ()
  close a = primJS $ ReadableByteStreamController.prim__close a
  
  export
  enqueue :  (obj : ReadableByteStreamController)
          -> (chunk : NS I [ Int8Array
                           , Int16Array
                           , Int32Array
                           , UInt8Array
                           , UInt8Array
                           , UInt8Array
                           , UInt8ClampedArray
                           , Float32Array
                           , Float64Array
                           , DataView
                           ])
          -> JSIO ()
  enqueue a b = primJS $ ReadableByteStreamController.prim__enqueue a (toFFI b)
  
  export
  error :  (obj : ReadableByteStreamController)
        -> (e : Optional AnyPtr)
        -> JSIO ()
  error a b = primJS $ ReadableByteStreamController.prim__error a (toFFI b)

  export
  error' : (obj : ReadableByteStreamController) -> JSIO ()
  error' a = primJS $ ReadableByteStreamController.prim__error a undef

namespace ReadableStream
  
  public export
  JSType ReadableStream where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (underlyingSource : Optional Object)
      -> (strategy : Optional QueuingStrategy)
      -> JSIO ReadableStream
  new a b = primJS $ ReadableStream.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ReadableStream
  new' = primJS $ ReadableStream.prim__new undef undef
  
  export
  locked : (obj : ReadableStream) -> JSIO Bool
  locked a = tryJS "ReadableStream.locked" $ ReadableStream.prim__locked a
  
  export
  cancel :  (obj : ReadableStream)
         -> (reason : Optional AnyPtr)
         -> JSIO (Promise Undefined)
  cancel a b = primJS $ ReadableStream.prim__cancel a (toFFI b)

  export
  cancel' : (obj : ReadableStream) -> JSIO (Promise Undefined)
  cancel' a = primJS $ ReadableStream.prim__cancel a undef
  
  export
  getReader :  (obj : ReadableStream)
            -> (options : Optional ReadableStreamGetReaderOptions)
            -> JSIO (NS I [ ReadableStreamDefaultReader
                          , ReadableStreamBYOBReader
                          ])
  getReader a b = tryJS "ReadableStream.getReader"
                $ ReadableStream.prim__getReader a (toFFI b)

  export
  getReader' :  (obj : ReadableStream)
             -> JSIO (NS I [ ReadableStreamDefaultReader
                           , ReadableStreamBYOBReader
                           ])
  getReader' a = tryJS "ReadableStream.getReader'"
               $ ReadableStream.prim__getReader a undef
  
  export
  pipeThrough :  (obj : ReadableStream)
              -> (transform : ReadableWritablePair)
              -> (options : Optional StreamPipeOptions)
              -> JSIO ReadableStream
  pipeThrough a b c = primJS $ ReadableStream.prim__pipeThrough a b (toFFI c)

  export
  pipeThrough' :  (obj : ReadableStream)
               -> (transform : ReadableWritablePair)
               -> JSIO ReadableStream
  pipeThrough' a b = primJS $ ReadableStream.prim__pipeThrough a b undef
  
  export
  pipeTo :  (obj : ReadableStream)
         -> (destination : WritableStream)
         -> (options : Optional StreamPipeOptions)
         -> JSIO (Promise Undefined)
  pipeTo a b c = primJS $ ReadableStream.prim__pipeTo a b (toFFI c)

  export
  pipeTo' :  (obj : ReadableStream)
          -> (destination : WritableStream)
          -> JSIO (Promise Undefined)
  pipeTo' a b = primJS $ ReadableStream.prim__pipeTo a b undef
  
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
       -> (view : NS I [ Int8Array
                       , Int16Array
                       , Int32Array
                       , UInt8Array
                       , UInt8Array
                       , UInt8Array
                       , UInt8ClampedArray
                       , Float32Array
                       , Float64Array
                       , DataView
                       ])
       -> JSIO (Promise ReadableStreamBYOBReadResult)
  read a b = primJS $ ReadableStreamBYOBReader.prim__read a (toFFI b)
  
  export
  releaseLock : (obj : ReadableStreamBYOBReader) -> JSIO ()
  releaseLock a = primJS $ ReadableStreamBYOBReader.prim__releaseLock a

namespace ReadableStreamBYOBRequest
  
  public export
  JSType ReadableStreamBYOBRequest where
    parents =  [ Object ]

    mixins =  []
  
  export
  view :  (obj : ReadableStreamBYOBRequest)
       -> JSIO (Maybe (Union10 Int8Array
                               Int16Array
                               Int32Array
                               UInt8Array
                               UInt8Array
                               UInt8Array
                               UInt8ClampedArray
                               Float32Array
                               Float64Array
                               DataView))
  view a = tryJS "ReadableStreamBYOBRequest.view"
         $ ReadableStreamBYOBRequest.prim__view a
  
  export
  respond :  (obj : ReadableStreamBYOBRequest)
          -> (bytesWritten : UInt64)
          -> JSIO ()
  respond a b = primJS $ ReadableStreamBYOBRequest.prim__respond a b
  
  export
  respondWithNewView :  (obj : ReadableStreamBYOBRequest)
                     -> (view : NS I [ Int8Array
                                     , Int16Array
                                     , Int32Array
                                     , UInt8Array
                                     , UInt8Array
                                     , UInt8Array
                                     , UInt8ClampedArray
                                     , Float32Array
                                     , Float64Array
                                     , DataView
                                     ])
                     -> JSIO ()
  respondWithNewView a b = primJS
                         $ ReadableStreamBYOBRequest.prim__respondWithNewView a
                                                                              (toFFI b)

namespace ReadableStreamDefaultController
  
  public export
  JSType ReadableStreamDefaultController where
    parents =  [ Object ]

    mixins =  []
  
  export
  desiredSize : (obj : ReadableStreamDefaultController) -> JSIO (Maybe Double)
  desiredSize a = tryJS "ReadableStreamDefaultController.desiredSize"
                $ ReadableStreamDefaultController.prim__desiredSize a
  
  export
  close : (obj : ReadableStreamDefaultController) -> JSIO ()
  close a = primJS $ ReadableStreamDefaultController.prim__close a
  
  export
  enqueue :  (obj : ReadableStreamDefaultController)
          -> (chunk : Optional AnyPtr)
          -> JSIO ()
  enqueue a b = primJS
              $ ReadableStreamDefaultController.prim__enqueue a (toFFI b)

  export
  enqueue' : (obj : ReadableStreamDefaultController) -> JSIO ()
  enqueue' a = primJS $ ReadableStreamDefaultController.prim__enqueue a undef
  
  export
  error :  (obj : ReadableStreamDefaultController)
        -> (e : Optional AnyPtr)
        -> JSIO ()
  error a b = primJS $ ReadableStreamDefaultController.prim__error a (toFFI b)

  export
  error' : (obj : ReadableStreamDefaultController) -> JSIO ()
  error' a = primJS $ ReadableStreamDefaultController.prim__error a undef

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
  new :  (transformer : Optional Object)
      -> (writableStrategy : Optional QueuingStrategy)
      -> (readableStrategy : Optional QueuingStrategy)
      -> JSIO TransformStream
  new a b c = primJS $ TransformStream.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO TransformStream
  new' = primJS $ TransformStream.prim__new undef undef undef
  
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
  desiredSize : (obj : TransformStreamDefaultController) -> JSIO (Maybe Double)
  desiredSize a = tryJS "TransformStreamDefaultController.desiredSize"
                $ TransformStreamDefaultController.prim__desiredSize a
  
  export
  enqueue :  (obj : TransformStreamDefaultController)
          -> (chunk : Optional AnyPtr)
          -> JSIO ()
  enqueue a b = primJS
              $ TransformStreamDefaultController.prim__enqueue a (toFFI b)

  export
  enqueue' : (obj : TransformStreamDefaultController) -> JSIO ()
  enqueue' a = primJS $ TransformStreamDefaultController.prim__enqueue a undef
  
  export
  error :  (obj : TransformStreamDefaultController)
        -> (reason : Optional AnyPtr)
        -> JSIO ()
  error a b = primJS $ TransformStreamDefaultController.prim__error a (toFFI b)

  export
  error' : (obj : TransformStreamDefaultController) -> JSIO ()
  error' a = primJS $ TransformStreamDefaultController.prim__error a undef
  
  export
  terminate : (obj : TransformStreamDefaultController) -> JSIO ()
  terminate a = primJS $ TransformStreamDefaultController.prim__terminate a

namespace WritableStream
  
  public export
  JSType WritableStream where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (underlyingSink : Optional Object)
      -> (strategy : Optional QueuingStrategy)
      -> JSIO WritableStream
  new a b = primJS $ WritableStream.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO WritableStream
  new' = primJS $ WritableStream.prim__new undef undef
  
  export
  locked : (obj : WritableStream) -> JSIO Bool
  locked a = tryJS "WritableStream.locked" $ WritableStream.prim__locked a
  
  export
  abort :  (obj : WritableStream)
        -> (reason : Optional AnyPtr)
        -> JSIO (Promise Undefined)
  abort a b = primJS $ WritableStream.prim__abort a (toFFI b)

  export
  abort' : (obj : WritableStream) -> JSIO (Promise Undefined)
  abort' a = primJS $ WritableStream.prim__abort a undef
  
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
        -> (e : Optional AnyPtr)
        -> JSIO ()
  error a b = primJS $ WritableStreamDefaultController.prim__error a (toFFI b)

  export
  error' : (obj : WritableStreamDefaultController) -> JSIO ()
  error' a = primJS $ WritableStreamDefaultController.prim__error a undef

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
  desiredSize : (obj : WritableStreamDefaultWriter) -> JSIO (Maybe Double)
  desiredSize a = tryJS "WritableStreamDefaultWriter.desiredSize"
                $ WritableStreamDefaultWriter.prim__desiredSize a
  
  export
  ready : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  ready a = primJS $ WritableStreamDefaultWriter.prim__ready a
  
  export
  abort :  (obj : WritableStreamDefaultWriter)
        -> (reason : Optional AnyPtr)
        -> JSIO (Promise Undefined)
  abort a b = primJS $ WritableStreamDefaultWriter.prim__abort a (toFFI b)

  export
  abort' : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  abort' a = primJS $ WritableStreamDefaultWriter.prim__abort a undef
  
  export
  close : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  close a = primJS $ WritableStreamDefaultWriter.prim__close a
  
  export
  releaseLock : (obj : WritableStreamDefaultWriter) -> JSIO ()
  releaseLock a = primJS $ WritableStreamDefaultWriter.prim__releaseLock a
  
  export
  write :  (obj : WritableStreamDefaultWriter)
        -> (chunk : Optional AnyPtr)
        -> JSIO (Promise Undefined)
  write a b = primJS $ WritableStreamDefaultWriter.prim__write a (toFFI b)

  export
  write' : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  write' a = primJS $ WritableStreamDefaultWriter.prim__write a undef

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
         -> (reason : Optional AnyPtr)
         -> JSIO (Promise Undefined)
  cancel a b = primJS $ ReadableStreamGenericReader.prim__cancel a (toFFI b)

  export
  cancel' : (obj : ReadableStreamGenericReader) -> JSIO (Promise Undefined)
  cancel' a = primJS $ ReadableStreamGenericReader.prim__cancel a undef

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy
  
  public export
  JSType QueuingStrategy where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (highWaterMark : Optional Double)
      -> (size : Optional QueuingStrategySize)
      -> JSIO QueuingStrategy
  new a b = primJS $ QueuingStrategy.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO QueuingStrategy
  new' = primJS $ QueuingStrategy.prim__new undef undef
  
  export
  highWaterMark : (obj : QueuingStrategy) -> JSIO $ Optional Double
  highWaterMark a = tryJS "QueuingStrategy.highWaterMark"
                  $ QueuingStrategy.prim__highWaterMark a
  
  export
  setHighWaterMark :  (obj : QueuingStrategy)
                   -> (value : Optional Double)
                   -> JSIO ()
  setHighWaterMark a b = primJS
                       $ QueuingStrategy.prim__setHighWaterMark a (toFFI b)

  export
  setHighWaterMark' : (obj : QueuingStrategy) -> JSIO ()
  setHighWaterMark' a = primJS $ QueuingStrategy.prim__setHighWaterMark a undef
  
  export
  size : (obj : QueuingStrategy) -> JSIO $ Optional QueuingStrategySize
  size a = tryJS "QueuingStrategy.size" $ QueuingStrategy.prim__size a
  
  export
  setSize :  (obj : QueuingStrategy)
          -> (value : Optional QueuingStrategySize)
          -> JSIO ()
  setSize a b = primJS $ QueuingStrategy.prim__setSize a (toFFI b)

  export
  setSize' : (obj : QueuingStrategy) -> JSIO ()
  setSize' a = primJS $ QueuingStrategy.prim__setSize a undef

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
  new :  (value : Optional (NS I [ Int8Array
                                 , Int16Array
                                 , Int32Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8Array
                                 , UInt8ClampedArray
                                 , Float32Array
                                 , Float64Array
                                 , DataView
                                 ]))
      -> (done : Optional Bool)
      -> JSIO ReadableStreamBYOBReadResult
  new a b = primJS $ ReadableStreamBYOBReadResult.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ReadableStreamBYOBReadResult
  new' = primJS $ ReadableStreamBYOBReadResult.prim__new undef undef
  
  export
  done : (obj : ReadableStreamBYOBReadResult) -> JSIO $ Optional Bool
  done a = tryJS "ReadableStreamBYOBReadResult.done"
         $ ReadableStreamBYOBReadResult.prim__done a
  
  export
  setDone :  (obj : ReadableStreamBYOBReadResult)
          -> (value : Optional Bool)
          -> JSIO ()
  setDone a b = primJS $ ReadableStreamBYOBReadResult.prim__setDone a (toFFI b)

  export
  setDone' : (obj : ReadableStreamBYOBReadResult) -> JSIO ()
  setDone' a = primJS $ ReadableStreamBYOBReadResult.prim__setDone a undef
  
  export
  value :  (obj : ReadableStreamBYOBReadResult)
        -> JSIO $ Optional (Union10 Int8Array
                                    Int16Array
                                    Int32Array
                                    UInt8Array
                                    UInt8Array
                                    UInt8Array
                                    UInt8ClampedArray
                                    Float32Array
                                    Float64Array
                                    DataView)
  value a = tryJS "ReadableStreamBYOBReadResult.value"
          $ ReadableStreamBYOBReadResult.prim__value a
  
  export
  setValue :  (obj : ReadableStreamBYOBReadResult)
           -> (value : Optional (NS I [ Int8Array
                                      , Int16Array
                                      , Int32Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8Array
                                      , UInt8ClampedArray
                                      , Float32Array
                                      , Float64Array
                                      , DataView
                                      ]))
           -> JSIO ()
  setValue a b = primJS
               $ ReadableStreamBYOBReadResult.prim__setValue a (toFFI b)

  export
  setValue' : (obj : ReadableStreamBYOBReadResult) -> JSIO ()
  setValue' a = primJS $ ReadableStreamBYOBReadResult.prim__setValue a undef

namespace ReadableStreamDefaultReadResult
  
  public export
  JSType ReadableStreamDefaultReadResult where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (value : Optional AnyPtr)
      -> (done : Optional Bool)
      -> JSIO ReadableStreamDefaultReadResult
  new a b = primJS
          $ ReadableStreamDefaultReadResult.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ReadableStreamDefaultReadResult
  new' = primJS $ ReadableStreamDefaultReadResult.prim__new undef undef
  
  export
  done : (obj : ReadableStreamDefaultReadResult) -> JSIO $ Optional Bool
  done a = tryJS "ReadableStreamDefaultReadResult.done"
         $ ReadableStreamDefaultReadResult.prim__done a
  
  export
  setDone :  (obj : ReadableStreamDefaultReadResult)
          -> (value : Optional Bool)
          -> JSIO ()
  setDone a b = primJS
              $ ReadableStreamDefaultReadResult.prim__setDone a (toFFI b)

  export
  setDone' : (obj : ReadableStreamDefaultReadResult) -> JSIO ()
  setDone' a = primJS $ ReadableStreamDefaultReadResult.prim__setDone a undef
  
  export
  value : (obj : ReadableStreamDefaultReadResult) -> JSIO $ Optional AnyPtr
  value a = tryJS "ReadableStreamDefaultReadResult.value"
          $ ReadableStreamDefaultReadResult.prim__value a
  
  export
  setValue :  (obj : ReadableStreamDefaultReadResult)
           -> (value : Optional AnyPtr)
           -> JSIO ()
  setValue a b = primJS
               $ ReadableStreamDefaultReadResult.prim__setValue a (toFFI b)

  export
  setValue' : (obj : ReadableStreamDefaultReadResult) -> JSIO ()
  setValue' a = primJS $ ReadableStreamDefaultReadResult.prim__setValue a undef

namespace ReadableStreamGetReaderOptions
  
  public export
  JSType ReadableStreamGetReaderOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (mode : Optional ReadableStreamReaderMode)
      -> JSIO ReadableStreamGetReaderOptions
  new a = primJS $ ReadableStreamGetReaderOptions.prim__new (toFFI a)

  export
  new' : JSIO ReadableStreamGetReaderOptions
  new' = primJS $ ReadableStreamGetReaderOptions.prim__new undef
  
  export
  mode :  (obj : ReadableStreamGetReaderOptions)
       -> JSIO $ Optional ReadableStreamReaderMode
  mode a = tryJS "ReadableStreamGetReaderOptions.mode"
         $ ReadableStreamGetReaderOptions.prim__mode a
  
  export
  setMode :  (obj : ReadableStreamGetReaderOptions)
          -> (value : Optional ReadableStreamReaderMode)
          -> JSIO ()
  setMode a b = primJS
              $ ReadableStreamGetReaderOptions.prim__setMode a (toFFI b)

  export
  setMode' : (obj : ReadableStreamGetReaderOptions) -> JSIO ()
  setMode' a = primJS $ ReadableStreamGetReaderOptions.prim__setMode a undef

namespace ReadableStreamIteratorOptions
  
  public export
  JSType ReadableStreamIteratorOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (preventCancel : Optional Bool) -> JSIO ReadableStreamIteratorOptions
  new a = primJS $ ReadableStreamIteratorOptions.prim__new (toFFI a)

  export
  new' : JSIO ReadableStreamIteratorOptions
  new' = primJS $ ReadableStreamIteratorOptions.prim__new undef
  
  export
  preventCancel : (obj : ReadableStreamIteratorOptions) -> JSIO $ Optional Bool
  preventCancel a = tryJS "ReadableStreamIteratorOptions.preventCancel"
                  $ ReadableStreamIteratorOptions.prim__preventCancel a
  
  export
  setPreventCancel :  (obj : ReadableStreamIteratorOptions)
                   -> (value : Optional Bool)
                   -> JSIO ()
  setPreventCancel a b = primJS
                       $ ReadableStreamIteratorOptions.prim__setPreventCancel a
                                                                              (toFFI b)

  export
  setPreventCancel' : (obj : ReadableStreamIteratorOptions) -> JSIO ()
  setPreventCancel' a = primJS
                      $ ReadableStreamIteratorOptions.prim__setPreventCancel a
                                                                             undef

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
  new :  (preventClose : Optional Bool)
      -> (preventAbort : Optional Bool)
      -> (preventCancel : Optional Bool)
      -> (signal : Optional AbortSignal)
      -> JSIO StreamPipeOptions
  new a b c d = primJS
              $ StreamPipeOptions.prim__new (toFFI a)
                                            (toFFI b)
                                            (toFFI c)
                                            (toFFI d)

  export
  new' : JSIO StreamPipeOptions
  new' = primJS $ StreamPipeOptions.prim__new undef undef undef undef
  
  export
  preventAbort : (obj : StreamPipeOptions) -> JSIO $ Optional Bool
  preventAbort a = tryJS "StreamPipeOptions.preventAbort"
                 $ StreamPipeOptions.prim__preventAbort a
  
  export
  setPreventAbort :  (obj : StreamPipeOptions)
                  -> (value : Optional Bool)
                  -> JSIO ()
  setPreventAbort a b = primJS
                      $ StreamPipeOptions.prim__setPreventAbort a (toFFI b)

  export
  setPreventAbort' : (obj : StreamPipeOptions) -> JSIO ()
  setPreventAbort' a = primJS $ StreamPipeOptions.prim__setPreventAbort a undef
  
  export
  preventCancel : (obj : StreamPipeOptions) -> JSIO $ Optional Bool
  preventCancel a = tryJS "StreamPipeOptions.preventCancel"
                  $ StreamPipeOptions.prim__preventCancel a
  
  export
  setPreventCancel :  (obj : StreamPipeOptions)
                   -> (value : Optional Bool)
                   -> JSIO ()
  setPreventCancel a b = primJS
                       $ StreamPipeOptions.prim__setPreventCancel a (toFFI b)

  export
  setPreventCancel' : (obj : StreamPipeOptions) -> JSIO ()
  setPreventCancel' a = primJS
                      $ StreamPipeOptions.prim__setPreventCancel a undef
  
  export
  preventClose : (obj : StreamPipeOptions) -> JSIO $ Optional Bool
  preventClose a = tryJS "StreamPipeOptions.preventClose"
                 $ StreamPipeOptions.prim__preventClose a
  
  export
  setPreventClose :  (obj : StreamPipeOptions)
                  -> (value : Optional Bool)
                  -> JSIO ()
  setPreventClose a b = primJS
                      $ StreamPipeOptions.prim__setPreventClose a (toFFI b)

  export
  setPreventClose' : (obj : StreamPipeOptions) -> JSIO ()
  setPreventClose' a = primJS $ StreamPipeOptions.prim__setPreventClose a undef
  
  export
  signal : (obj : StreamPipeOptions) -> JSIO $ Optional AbortSignal
  signal a = tryJS "StreamPipeOptions.signal" $ StreamPipeOptions.prim__signal a
  
  export
  setSignal :  (obj : StreamPipeOptions)
            -> (value : Optional AbortSignal)
            -> JSIO ()
  setSignal a b = primJS $ StreamPipeOptions.prim__setSignal a (toFFI b)

  export
  setSignal' : (obj : StreamPipeOptions) -> JSIO ()
  setSignal' a = primJS $ StreamPipeOptions.prim__setSignal a undef

namespace Transformer
  
  public export
  JSType Transformer where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (start : Optional TransformerStartCallback)
      -> (transform : Optional TransformerTransformCallback)
      -> (flush : Optional TransformerFlushCallback)
      -> (readableType : Optional AnyPtr)
      -> (writableType : Optional AnyPtr)
      -> JSIO Transformer
  new a b c d e = primJS
                $ Transformer.prim__new (toFFI a)
                                        (toFFI b)
                                        (toFFI c)
                                        (toFFI d)
                                        (toFFI e)

  export
  new' : JSIO Transformer
  new' = primJS $ Transformer.prim__new undef undef undef undef undef
  
  export
  flush : (obj : Transformer) -> JSIO $ Optional TransformerFlushCallback
  flush a = tryJS "Transformer.flush" $ Transformer.prim__flush a
  
  export
  setFlush :  (obj : Transformer)
           -> (value : Optional TransformerFlushCallback)
           -> JSIO ()
  setFlush a b = primJS $ Transformer.prim__setFlush a (toFFI b)

  export
  setFlush' : (obj : Transformer) -> JSIO ()
  setFlush' a = primJS $ Transformer.prim__setFlush a undef
  
  export
  readableType : (obj : Transformer) -> JSIO $ Optional AnyPtr
  readableType a = tryJS "Transformer.readableType"
                 $ Transformer.prim__readableType a
  
  export
  setReadableType : (obj : Transformer) -> (value : Optional AnyPtr) -> JSIO ()
  setReadableType a b = primJS $ Transformer.prim__setReadableType a (toFFI b)

  export
  setReadableType' : (obj : Transformer) -> JSIO ()
  setReadableType' a = primJS $ Transformer.prim__setReadableType a undef
  
  export
  start : (obj : Transformer) -> JSIO $ Optional TransformerStartCallback
  start a = tryJS "Transformer.start" $ Transformer.prim__start a
  
  export
  setStart :  (obj : Transformer)
           -> (value : Optional TransformerStartCallback)
           -> JSIO ()
  setStart a b = primJS $ Transformer.prim__setStart a (toFFI b)

  export
  setStart' : (obj : Transformer) -> JSIO ()
  setStart' a = primJS $ Transformer.prim__setStart a undef
  
  export
  transform :  (obj : Transformer)
            -> JSIO $ Optional TransformerTransformCallback
  transform a = tryJS "Transformer.transform" $ Transformer.prim__transform a
  
  export
  setTransform :  (obj : Transformer)
               -> (value : Optional TransformerTransformCallback)
               -> JSIO ()
  setTransform a b = primJS $ Transformer.prim__setTransform a (toFFI b)

  export
  setTransform' : (obj : Transformer) -> JSIO ()
  setTransform' a = primJS $ Transformer.prim__setTransform a undef
  
  export
  writableType : (obj : Transformer) -> JSIO $ Optional AnyPtr
  writableType a = tryJS "Transformer.writableType"
                 $ Transformer.prim__writableType a
  
  export
  setWritableType : (obj : Transformer) -> (value : Optional AnyPtr) -> JSIO ()
  setWritableType a b = primJS $ Transformer.prim__setWritableType a (toFFI b)

  export
  setWritableType' : (obj : Transformer) -> JSIO ()
  setWritableType' a = primJS $ Transformer.prim__setWritableType a undef

namespace UnderlyingSink
  
  public export
  JSType UnderlyingSink where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (start : Optional UnderlyingSinkStartCallback)
      -> (write : Optional UnderlyingSinkWriteCallback)
      -> (close : Optional UnderlyingSinkCloseCallback)
      -> (abort : Optional UnderlyingSinkAbortCallback)
      -> (type : Optional AnyPtr)
      -> JSIO UnderlyingSink
  new a b c d e = primJS
                $ UnderlyingSink.prim__new (toFFI a)
                                           (toFFI b)
                                           (toFFI c)
                                           (toFFI d)
                                           (toFFI e)

  export
  new' : JSIO UnderlyingSink
  new' = primJS $ UnderlyingSink.prim__new undef undef undef undef undef
  
  export
  abort : (obj : UnderlyingSink) -> JSIO $ Optional UnderlyingSinkAbortCallback
  abort a = tryJS "UnderlyingSink.abort" $ UnderlyingSink.prim__abort a
  
  export
  setAbort :  (obj : UnderlyingSink)
           -> (value : Optional UnderlyingSinkAbortCallback)
           -> JSIO ()
  setAbort a b = primJS $ UnderlyingSink.prim__setAbort a (toFFI b)

  export
  setAbort' : (obj : UnderlyingSink) -> JSIO ()
  setAbort' a = primJS $ UnderlyingSink.prim__setAbort a undef
  
  export
  close : (obj : UnderlyingSink) -> JSIO $ Optional UnderlyingSinkCloseCallback
  close a = tryJS "UnderlyingSink.close" $ UnderlyingSink.prim__close a
  
  export
  setClose :  (obj : UnderlyingSink)
           -> (value : Optional UnderlyingSinkCloseCallback)
           -> JSIO ()
  setClose a b = primJS $ UnderlyingSink.prim__setClose a (toFFI b)

  export
  setClose' : (obj : UnderlyingSink) -> JSIO ()
  setClose' a = primJS $ UnderlyingSink.prim__setClose a undef
  
  export
  start : (obj : UnderlyingSink) -> JSIO $ Optional UnderlyingSinkStartCallback
  start a = tryJS "UnderlyingSink.start" $ UnderlyingSink.prim__start a
  
  export
  setStart :  (obj : UnderlyingSink)
           -> (value : Optional UnderlyingSinkStartCallback)
           -> JSIO ()
  setStart a b = primJS $ UnderlyingSink.prim__setStart a (toFFI b)

  export
  setStart' : (obj : UnderlyingSink) -> JSIO ()
  setStart' a = primJS $ UnderlyingSink.prim__setStart a undef
  
  export
  type : (obj : UnderlyingSink) -> JSIO $ Optional AnyPtr
  type a = tryJS "UnderlyingSink.type" $ UnderlyingSink.prim__type a
  
  export
  setType : (obj : UnderlyingSink) -> (value : Optional AnyPtr) -> JSIO ()
  setType a b = primJS $ UnderlyingSink.prim__setType a (toFFI b)

  export
  setType' : (obj : UnderlyingSink) -> JSIO ()
  setType' a = primJS $ UnderlyingSink.prim__setType a undef
  
  export
  write : (obj : UnderlyingSink) -> JSIO $ Optional UnderlyingSinkWriteCallback
  write a = tryJS "UnderlyingSink.write" $ UnderlyingSink.prim__write a
  
  export
  setWrite :  (obj : UnderlyingSink)
           -> (value : Optional UnderlyingSinkWriteCallback)
           -> JSIO ()
  setWrite a b = primJS $ UnderlyingSink.prim__setWrite a (toFFI b)

  export
  setWrite' : (obj : UnderlyingSink) -> JSIO ()
  setWrite' a = primJS $ UnderlyingSink.prim__setWrite a undef

namespace UnderlyingSource
  
  public export
  JSType UnderlyingSource where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (start : Optional UnderlyingSourceStartCallback)
      -> (pull : Optional UnderlyingSourcePullCallback)
      -> (cancel : Optional UnderlyingSourceCancelCallback)
      -> (type : Optional ReadableStreamType)
      -> (autoAllocateChunkSize : Optional UInt64)
      -> JSIO UnderlyingSource
  new a b c d e = primJS
                $ UnderlyingSource.prim__new (toFFI a)
                                             (toFFI b)
                                             (toFFI c)
                                             (toFFI d)
                                             (toFFI e)

  export
  new' : JSIO UnderlyingSource
  new' = primJS $ UnderlyingSource.prim__new undef undef undef undef undef
  
  export
  autoAllocateChunkSize : (obj : UnderlyingSource) -> JSIO $ Optional UInt64
  autoAllocateChunkSize a = tryJS "UnderlyingSource.autoAllocateChunkSize"
                          $ UnderlyingSource.prim__autoAllocateChunkSize a
  
  export
  setAutoAllocateChunkSize :  (obj : UnderlyingSource)
                           -> (value : Optional UInt64)
                           -> JSIO ()
  setAutoAllocateChunkSize a b = primJS
                               $ UnderlyingSource.prim__setAutoAllocateChunkSize a
                                                                                 (toFFI b)

  export
  setAutoAllocateChunkSize' : (obj : UnderlyingSource) -> JSIO ()
  setAutoAllocateChunkSize' a = primJS
                              $ UnderlyingSource.prim__setAutoAllocateChunkSize a
                                                                                undef
  
  export
  cancel :  (obj : UnderlyingSource)
         -> JSIO $ Optional UnderlyingSourceCancelCallback
  cancel a = tryJS "UnderlyingSource.cancel" $ UnderlyingSource.prim__cancel a
  
  export
  setCancel :  (obj : UnderlyingSource)
            -> (value : Optional UnderlyingSourceCancelCallback)
            -> JSIO ()
  setCancel a b = primJS $ UnderlyingSource.prim__setCancel a (toFFI b)

  export
  setCancel' : (obj : UnderlyingSource) -> JSIO ()
  setCancel' a = primJS $ UnderlyingSource.prim__setCancel a undef
  
  export
  pull :  (obj : UnderlyingSource)
       -> JSIO $ Optional UnderlyingSourcePullCallback
  pull a = tryJS "UnderlyingSource.pull" $ UnderlyingSource.prim__pull a
  
  export
  setPull :  (obj : UnderlyingSource)
          -> (value : Optional UnderlyingSourcePullCallback)
          -> JSIO ()
  setPull a b = primJS $ UnderlyingSource.prim__setPull a (toFFI b)

  export
  setPull' : (obj : UnderlyingSource) -> JSIO ()
  setPull' a = primJS $ UnderlyingSource.prim__setPull a undef
  
  export
  start :  (obj : UnderlyingSource)
        -> JSIO $ Optional UnderlyingSourceStartCallback
  start a = tryJS "UnderlyingSource.start" $ UnderlyingSource.prim__start a
  
  export
  setStart :  (obj : UnderlyingSource)
           -> (value : Optional UnderlyingSourceStartCallback)
           -> JSIO ()
  setStart a b = primJS $ UnderlyingSource.prim__setStart a (toFFI b)

  export
  setStart' : (obj : UnderlyingSource) -> JSIO ()
  setStart' a = primJS $ UnderlyingSource.prim__setStart a undef
  
  export
  type : (obj : UnderlyingSource) -> JSIO $ Optional ReadableStreamType
  type a = tryJS "UnderlyingSource.type" $ UnderlyingSource.prim__type a
  
  export
  setType :  (obj : UnderlyingSource)
          -> (value : Optional ReadableStreamType)
          -> JSIO ()
  setType a b = primJS $ UnderlyingSource.prim__setType a (toFFI b)

  export
  setType' : (obj : UnderlyingSource) -> JSIO ()
  setType' a = primJS $ UnderlyingSource.prim__setType a undef

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace QueuingStrategySize
  
  export
  toQueuingStrategySize :  ( UndefOr AnyPtr -> IO Double )
                        -> JSIO QueuingStrategySize
  toQueuingStrategySize cb = primJS $ prim__toQueuingStrategySize cb

namespace TransformerFlushCallback
  
  export
  toTransformerFlushCallback :  (  TransformStreamDefaultController
                                -> IO (Promise Undefined)
                                )
                             -> JSIO TransformerFlushCallback
  toTransformerFlushCallback cb = primJS $ prim__toTransformerFlushCallback cb

namespace TransformerStartCallback
  
  export
  toTransformerStartCallback :  (  TransformStreamDefaultController
                                -> IO AnyPtr
                                )
                             -> JSIO TransformerStartCallback
  toTransformerStartCallback cb = primJS $ prim__toTransformerStartCallback cb

namespace TransformerTransformCallback
  
  export
  toTransformerTransformCallback :  (  AnyPtr
                                    -> TransformStreamDefaultController
                                    -> IO (Promise Undefined)
                                    )
                                 -> JSIO TransformerTransformCallback
  toTransformerTransformCallback cb = primJS $ prim__toTransformerTransformCallback cb

namespace UnderlyingSinkAbortCallback
  
  export
  toUnderlyingSinkAbortCallback :  ( UndefOr AnyPtr -> IO (Promise Undefined) )
                                -> JSIO UnderlyingSinkAbortCallback
  toUnderlyingSinkAbortCallback cb = primJS $ prim__toUnderlyingSinkAbortCallback cb

namespace UnderlyingSinkCloseCallback
  
  export
  toUnderlyingSinkCloseCallback :  (() -> IO (Promise Undefined))
                                -> JSIO UnderlyingSinkCloseCallback
  toUnderlyingSinkCloseCallback cb = primJS $ prim__toUnderlyingSinkCloseCallback cb

namespace UnderlyingSinkStartCallback
  
  export
  toUnderlyingSinkStartCallback :  (  WritableStreamDefaultController
                                   -> IO AnyPtr
                                   )
                                -> JSIO UnderlyingSinkStartCallback
  toUnderlyingSinkStartCallback cb = primJS $ prim__toUnderlyingSinkStartCallback cb

namespace UnderlyingSinkWriteCallback
  
  export
  toUnderlyingSinkWriteCallback :  (  AnyPtr
                                   -> WritableStreamDefaultController
                                   -> IO (Promise Undefined)
                                   )
                                -> JSIO UnderlyingSinkWriteCallback
  toUnderlyingSinkWriteCallback cb = primJS $ prim__toUnderlyingSinkWriteCallback cb

namespace UnderlyingSourceCancelCallback
  
  export
  toUnderlyingSourceCancelCallback :  (  UndefOr AnyPtr
                                      -> IO (Promise Undefined)
                                      )
                                   -> JSIO UnderlyingSourceCancelCallback
  toUnderlyingSourceCancelCallback cb = primJS $ prim__toUnderlyingSourceCancelCallback cb

namespace UnderlyingSourcePullCallback
  
  export
  toUnderlyingSourcePullCallback :  (  Union2 ReadableStreamDefaultController
                                              ReadableByteStreamController
                                    -> IO (Promise Undefined)
                                    )
                                 -> JSIO UnderlyingSourcePullCallback
  toUnderlyingSourcePullCallback cb = primJS $ prim__toUnderlyingSourcePullCallback cb

namespace UnderlyingSourceStartCallback
  
  export
  toUnderlyingSourceStartCallback :  (  Union2 ReadableStreamDefaultController
                                               ReadableByteStreamController
                                     -> IO AnyPtr
                                     )
                                  -> JSIO UnderlyingSourceStartCallback
  toUnderlyingSourceStartCallback cb = primJS $ prim__toUnderlyingSourceStartCallback cb