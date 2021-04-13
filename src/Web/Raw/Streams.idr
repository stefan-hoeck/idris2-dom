module Web.Raw.Streams
 
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
  error : (obj : ReadableByteStreamController) -> (e : Optional Any) -> JSIO ()
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
         -> (reason : Optional Any)
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
          -> (chunk : Optional Any)
          -> JSIO ()
  enqueue a b = primJS
              $ ReadableStreamDefaultController.prim__enqueue a (toFFI b)

  export
  enqueue' : (obj : ReadableStreamDefaultController) -> JSIO ()
  enqueue' a = primJS $ ReadableStreamDefaultController.prim__enqueue a undef
  
  export
  error :  (obj : ReadableStreamDefaultController)
        -> (e : Optional Any)
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
          -> (chunk : Optional Any)
          -> JSIO ()
  enqueue a b = primJS
              $ TransformStreamDefaultController.prim__enqueue a (toFFI b)

  export
  enqueue' : (obj : TransformStreamDefaultController) -> JSIO ()
  enqueue' a = primJS $ TransformStreamDefaultController.prim__enqueue a undef
  
  export
  error :  (obj : TransformStreamDefaultController)
        -> (reason : Optional Any)
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
        -> (reason : Optional Any)
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
        -> (e : Optional Any)
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
        -> (reason : Optional Any)
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
        -> (chunk : Optional Any)
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
         -> (reason : Optional Any)
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
  highWaterMark : QueuingStrategy -> Attribute False Optional Double
  highWaterMark = fromUndefOrPrimNoDefault "QueuingStrategy.gethighWaterMark"
                                           prim__highWaterMark
                                           prim__setHighWaterMark
  
  export
  size : QueuingStrategy -> Attribute False Optional QueuingStrategySize
  size = fromUndefOrPrimNoDefault "QueuingStrategy.getsize"
                                  prim__size
                                  prim__setSize

namespace QueuingStrategyInit
  
  public export
  JSType QueuingStrategyInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (highWaterMark : Double) -> JSIO QueuingStrategyInit
  new a = primJS $ QueuingStrategyInit.prim__new a
  
  export
  highWaterMark : QueuingStrategyInit -> Attribute True I Double
  highWaterMark = fromPrim "QueuingStrategyInit.gethighWaterMark"
                           prim__highWaterMark
                           prim__setHighWaterMark

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
  done : ReadableStreamBYOBReadResult -> Attribute False Optional Bool
  done = fromUndefOrPrimNoDefault "ReadableStreamBYOBReadResult.getdone"
                                  prim__done
                                  prim__setDone
  
  export
  value : ReadableStreamBYOBReadResult -> Attribute False Optional (Union10 Int8Array
                                                                            Int16Array
                                                                            Int32Array
                                                                            UInt8Array
                                                                            UInt8Array
                                                                            UInt8Array
                                                                            UInt8ClampedArray
                                                                            Float32Array
                                                                            Float64Array
                                                                            DataView)
  value = fromUndefOrPrimNoDefault "ReadableStreamBYOBReadResult.getvalue"
                                   prim__value
                                   prim__setValue

namespace ReadableStreamDefaultReadResult
  
  public export
  JSType ReadableStreamDefaultReadResult where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (value : Optional Any)
      -> (done : Optional Bool)
      -> JSIO ReadableStreamDefaultReadResult
  new a b = primJS
          $ ReadableStreamDefaultReadResult.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ReadableStreamDefaultReadResult
  new' = primJS $ ReadableStreamDefaultReadResult.prim__new undef undef
  
  export
  done : ReadableStreamDefaultReadResult -> Attribute False Optional Bool
  done = fromUndefOrPrimNoDefault "ReadableStreamDefaultReadResult.getdone"
                                  prim__done
                                  prim__setDone
  
  export
  value : ReadableStreamDefaultReadResult -> Attribute False Optional Any
  value = fromUndefOrPrimNoDefault "ReadableStreamDefaultReadResult.getvalue"
                                   prim__value
                                   prim__setValue

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
  mode : ReadableStreamGetReaderOptions -> Attribute False Optional ReadableStreamReaderMode
  mode = fromUndefOrPrimNoDefault "ReadableStreamGetReaderOptions.getmode"
                                  prim__mode
                                  prim__setMode

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
  preventCancel : ReadableStreamIteratorOptions -> Attribute True Optional Bool
  preventCancel = fromUndefOrPrim "ReadableStreamIteratorOptions.getpreventCancel"
                                  prim__preventCancel
                                  prim__setPreventCancel
                                  False

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
  readable : ReadableWritablePair -> Attribute True I ReadableStream
  readable = fromPrim "ReadableWritablePair.getreadable"
                      prim__readable
                      prim__setReadable
  
  export
  writable : ReadableWritablePair -> Attribute True I WritableStream
  writable = fromPrim "ReadableWritablePair.getwritable"
                      prim__writable
                      prim__setWritable

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
  preventAbort : StreamPipeOptions -> Attribute True Optional Bool
  preventAbort = fromUndefOrPrim "StreamPipeOptions.getpreventAbort"
                                 prim__preventAbort
                                 prim__setPreventAbort
                                 False
  
  export
  preventCancel : StreamPipeOptions -> Attribute True Optional Bool
  preventCancel = fromUndefOrPrim "StreamPipeOptions.getpreventCancel"
                                  prim__preventCancel
                                  prim__setPreventCancel
                                  False
  
  export
  preventClose : StreamPipeOptions -> Attribute True Optional Bool
  preventClose = fromUndefOrPrim "StreamPipeOptions.getpreventClose"
                                 prim__preventClose
                                 prim__setPreventClose
                                 False
  
  export
  signal : StreamPipeOptions -> Attribute False Optional AbortSignal
  signal = fromUndefOrPrimNoDefault "StreamPipeOptions.getsignal"
                                    prim__signal
                                    prim__setSignal

namespace Transformer
  
  public export
  JSType Transformer where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (start : Optional TransformerStartCallback)
      -> (transform : Optional TransformerTransformCallback)
      -> (flush : Optional TransformerFlushCallback)
      -> (readableType : Optional Any)
      -> (writableType : Optional Any)
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
  flush : Transformer -> Attribute False Optional TransformerFlushCallback
  flush = fromUndefOrPrimNoDefault "Transformer.getflush"
                                   prim__flush
                                   prim__setFlush
  
  export
  readableType : Transformer -> Attribute False Optional Any
  readableType = fromUndefOrPrimNoDefault "Transformer.getreadableType"
                                          prim__readableType
                                          prim__setReadableType
  
  export
  start : Transformer -> Attribute False Optional TransformerStartCallback
  start = fromUndefOrPrimNoDefault "Transformer.getstart"
                                   prim__start
                                   prim__setStart
  
  export
  transform : Transformer -> Attribute False Optional TransformerTransformCallback
  transform = fromUndefOrPrimNoDefault "Transformer.gettransform"
                                       prim__transform
                                       prim__setTransform
  
  export
  writableType : Transformer -> Attribute False Optional Any
  writableType = fromUndefOrPrimNoDefault "Transformer.getwritableType"
                                          prim__writableType
                                          prim__setWritableType

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
      -> (type : Optional Any)
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
  abort : UnderlyingSink -> Attribute False Optional UnderlyingSinkAbortCallback
  abort = fromUndefOrPrimNoDefault "UnderlyingSink.getabort"
                                   prim__abort
                                   prim__setAbort
  
  export
  close : UnderlyingSink -> Attribute False Optional UnderlyingSinkCloseCallback
  close = fromUndefOrPrimNoDefault "UnderlyingSink.getclose"
                                   prim__close
                                   prim__setClose
  
  export
  start : UnderlyingSink -> Attribute False Optional UnderlyingSinkStartCallback
  start = fromUndefOrPrimNoDefault "UnderlyingSink.getstart"
                                   prim__start
                                   prim__setStart
  
  export
  type : UnderlyingSink -> Attribute False Optional Any
  type = fromUndefOrPrimNoDefault "UnderlyingSink.gettype"
                                  prim__type
                                  prim__setType
  
  export
  write : UnderlyingSink -> Attribute False Optional UnderlyingSinkWriteCallback
  write = fromUndefOrPrimNoDefault "UnderlyingSink.getwrite"
                                   prim__write
                                   prim__setWrite

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
  autoAllocateChunkSize : UnderlyingSource -> Attribute False Optional UInt64
  autoAllocateChunkSize = fromUndefOrPrimNoDefault "UnderlyingSource.getautoAllocateChunkSize"
                                                   prim__autoAllocateChunkSize
                                                   prim__setAutoAllocateChunkSize
  
  export
  cancel : UnderlyingSource -> Attribute False Optional UnderlyingSourceCancelCallback
  cancel = fromUndefOrPrimNoDefault "UnderlyingSource.getcancel"
                                    prim__cancel
                                    prim__setCancel
  
  export
  pull : UnderlyingSource -> Attribute False Optional UnderlyingSourcePullCallback
  pull = fromUndefOrPrimNoDefault "UnderlyingSource.getpull"
                                  prim__pull
                                  prim__setPull
  
  export
  start : UnderlyingSource -> Attribute False Optional UnderlyingSourceStartCallback
  start = fromUndefOrPrimNoDefault "UnderlyingSource.getstart"
                                   prim__start
                                   prim__setStart
  
  export
  type : UnderlyingSource -> Attribute False Optional ReadableStreamType
  type = fromUndefOrPrimNoDefault "UnderlyingSource.gettype"
                                  prim__type
                                  prim__setType

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
