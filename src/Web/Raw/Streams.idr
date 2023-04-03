module Web.Raw.Streams

import JS
import Web.Internal.StreamsPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem QueuingStrategyInit (Types t1)}
    -> (init : t1)
    -> JSIO ByteLengthQueuingStrategy
  new a = primJS $ ByteLengthQueuingStrategy.prim__new (up a)


  export
  highWaterMark : (obj : ByteLengthQueuingStrategy) -> JSIO Double
  highWaterMark a = primJS $ ByteLengthQueuingStrategy.prim__highWaterMark a


  export
  size : (obj : ByteLengthQueuingStrategy) -> JSIO Function
  size a = primJS $ ByteLengthQueuingStrategy.prim__size a



namespace CountQueuingStrategy

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem QueuingStrategyInit (Types t1)}
    -> (init : t1)
    -> JSIO CountQueuingStrategy
  new a = primJS $ CountQueuingStrategy.prim__new (up a)


  export
  highWaterMark : (obj : CountQueuingStrategy) -> JSIO Double
  highWaterMark a = primJS $ CountQueuingStrategy.prim__highWaterMark a


  export
  size : (obj : CountQueuingStrategy) -> JSIO Function
  size a = primJS $ CountQueuingStrategy.prim__size a



namespace ReadableByteStreamController

  export
  byobRequest :
       (obj : ReadableByteStreamController)
    -> JSIO (Maybe ReadableStreamBYOBRequest)
  byobRequest a = tryJS "ReadableByteStreamController.byobRequest" $
    ReadableByteStreamController.prim__byobRequest a


  export
  desiredSize : (obj : ReadableByteStreamController) -> JSIO (Maybe Double)
  desiredSize a = tryJS "ReadableByteStreamController.desiredSize" $
    ReadableByteStreamController.prim__desiredSize a


  export
  close : (obj : ReadableByteStreamController) -> JSIO ()
  close a = primJS $ ReadableByteStreamController.prim__close a


  export
  enqueue :
       (obj : ReadableByteStreamController)
    -> (chunk : NS I
                  [ Int8Array
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
  error :
       (obj : ReadableByteStreamController)
    -> {default Undef e : Optional Any}
    -> JSIO ()
  error a = primJS $ ReadableByteStreamController.prim__error a (toFFI e)



namespace ReadableStream

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Object (Types t1)}
    -> {auto 0 _ : Elem QueuingStrategy (Types t2)}
    -> {default Undef underlyingSource : Optional t1}
    -> {default Undef strategy : Optional t2}
    -> JSIO ReadableStream
  new = primJS $
    ReadableStream.prim__new (optUp underlyingSource) (optUp strategy)


  export
  locked : (obj : ReadableStream) -> JSIO Bool
  locked a = tryJS "ReadableStream.locked" $ ReadableStream.prim__locked a


  export
  cancel :
       (obj : ReadableStream)
    -> {default Undef reason : Optional Any}
    -> JSIO (Promise Undefined)
  cancel a = primJS $ ReadableStream.prim__cancel a (toFFI reason)


  export
  getReader :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ReadableStreamGetReaderOptions (Types t2)}
    -> (obj : ReadableStream)
    -> {default Undef options : Optional t2}
    -> JSIO (NS I [ReadableStreamDefaultReader, ReadableStreamBYOBReader])
  getReader a = tryJS "ReadableStream.getReader" $
    ReadableStream.prim__getReader a (optUp options)


  export
  pipeThrough :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem ReadableWritablePair (Types t2)}
    -> {auto 0 _ : Elem StreamPipeOptions (Types t3)}
    -> (obj : ReadableStream)
    -> (transform : t2)
    -> {default Undef options : Optional t3}
    -> JSIO ReadableStream
  pipeThrough a b = primJS $
    ReadableStream.prim__pipeThrough a (up b) (optUp options)


  export
  pipeTo :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem StreamPipeOptions (Types t3)}
    -> (obj : ReadableStream)
    -> (destination : WritableStream)
    -> {default Undef options : Optional t3}
    -> JSIO (Promise Undefined)
  pipeTo a b = primJS $ ReadableStream.prim__pipeTo a b (optUp options)


  export
  tee : (obj : ReadableStream) -> JSIO (Array ReadableStream)
  tee a = primJS $ ReadableStream.prim__tee a



namespace ReadableStreamBYOBReader

  export
  new : (stream : ReadableStream) -> JSIO ReadableStreamBYOBReader
  new a = primJS $ ReadableStreamBYOBReader.prim__new a


  export
  read :
       (obj : ReadableStreamBYOBReader)
    -> (view : NS I
                 [ Int8Array
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

  export
  view :
       (obj : ReadableStreamBYOBRequest)
    -> JSIO
         (Maybe
            (Union10
               Int8Array
               Int16Array
               Int32Array
               UInt8Array
               UInt8Array
               UInt8Array
               UInt8ClampedArray
               Float32Array
               Float64Array
               DataView))
  view a = tryJS "ReadableStreamBYOBRequest.view" $
    ReadableStreamBYOBRequest.prim__view a


  export
  respond :
       (obj : ReadableStreamBYOBRequest)
    -> (bytesWritten : JSBits64)
    -> JSIO ()
  respond a b = primJS $ ReadableStreamBYOBRequest.prim__respond a b


  export
  respondWithNewView :
       (obj : ReadableStreamBYOBRequest)
    -> (view : NS I
                 [ Int8Array
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
  respondWithNewView a b = primJS $
    ReadableStreamBYOBRequest.prim__respondWithNewView a (toFFI b)



namespace ReadableStreamDefaultController

  export
  desiredSize : (obj : ReadableStreamDefaultController) -> JSIO (Maybe Double)
  desiredSize a = tryJS "ReadableStreamDefaultController.desiredSize" $
    ReadableStreamDefaultController.prim__desiredSize a


  export
  close : (obj : ReadableStreamDefaultController) -> JSIO ()
  close a = primJS $ ReadableStreamDefaultController.prim__close a


  export
  enqueue :
       (obj : ReadableStreamDefaultController)
    -> {default Undef chunk : Optional Any}
    -> JSIO ()
  enqueue a = primJS $
    ReadableStreamDefaultController.prim__enqueue a (toFFI chunk)


  export
  error :
       (obj : ReadableStreamDefaultController)
    -> {default Undef e : Optional Any}
    -> JSIO ()
  error a = primJS $ ReadableStreamDefaultController.prim__error a (toFFI e)



namespace ReadableStreamDefaultReader

  export
  new : (stream : ReadableStream) -> JSIO ReadableStreamDefaultReader
  new a = primJS $ ReadableStreamDefaultReader.prim__new a


  export
  read :
       (obj : ReadableStreamDefaultReader)
    -> JSIO (Promise ReadableStreamDefaultReadResult)
  read a = primJS $ ReadableStreamDefaultReader.prim__read a


  export
  releaseLock : (obj : ReadableStreamDefaultReader) -> JSIO ()
  releaseLock a = primJS $ ReadableStreamDefaultReader.prim__releaseLock a



namespace TransformStream

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Object (Types t1)}
    -> {auto 0 _ : Elem QueuingStrategy (Types t2)}
    -> {auto 0 _ : Elem QueuingStrategy (Types t3)}
    -> {default Undef transformer : Optional t1}
    -> {default Undef writableStrategy : Optional t2}
    -> {default Undef readableStrategy : Optional t3}
    -> JSIO TransformStream
  new = primJS $
    TransformStream.prim__new
      (optUp transformer)
      (optUp writableStrategy)
      (optUp readableStrategy)


  export
  readable : (obj : TransformStream) -> JSIO ReadableStream
  readable a = primJS $ TransformStream.prim__readable a


  export
  writable : (obj : TransformStream) -> JSIO WritableStream
  writable a = primJS $ TransformStream.prim__writable a



namespace TransformStreamDefaultController

  export
  desiredSize : (obj : TransformStreamDefaultController) -> JSIO (Maybe Double)
  desiredSize a = tryJS "TransformStreamDefaultController.desiredSize" $
    TransformStreamDefaultController.prim__desiredSize a


  export
  enqueue :
       (obj : TransformStreamDefaultController)
    -> {default Undef chunk : Optional Any}
    -> JSIO ()
  enqueue a = primJS $
    TransformStreamDefaultController.prim__enqueue a (toFFI chunk)


  export
  error :
       (obj : TransformStreamDefaultController)
    -> {default Undef reason : Optional Any}
    -> JSIO ()
  error a = primJS $
    TransformStreamDefaultController.prim__error a (toFFI reason)


  export
  terminate : (obj : TransformStreamDefaultController) -> JSIO ()
  terminate a = primJS $ TransformStreamDefaultController.prim__terminate a



namespace WritableStream

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Object (Types t1)}
    -> {auto 0 _ : Elem QueuingStrategy (Types t2)}
    -> {default Undef underlyingSink : Optional t1}
    -> {default Undef strategy : Optional t2}
    -> JSIO WritableStream
  new = primJS $
    WritableStream.prim__new (optUp underlyingSink) (optUp strategy)


  export
  locked : (obj : WritableStream) -> JSIO Bool
  locked a = tryJS "WritableStream.locked" $ WritableStream.prim__locked a


  export
  abort :
       (obj : WritableStream)
    -> {default Undef reason : Optional Any}
    -> JSIO (Promise Undefined)
  abort a = primJS $ WritableStream.prim__abort a (toFFI reason)


  export
  close : (obj : WritableStream) -> JSIO (Promise Undefined)
  close a = primJS $ WritableStream.prim__close a


  export
  getWriter : (obj : WritableStream) -> JSIO WritableStreamDefaultWriter
  getWriter a = primJS $ WritableStream.prim__getWriter a



namespace WritableStreamDefaultController

  export
  error :
       (obj : WritableStreamDefaultController)
    -> {default Undef e : Optional Any}
    -> JSIO ()
  error a = primJS $ WritableStreamDefaultController.prim__error a (toFFI e)



namespace WritableStreamDefaultWriter

  export
  new : (stream : WritableStream) -> JSIO WritableStreamDefaultWriter
  new a = primJS $ WritableStreamDefaultWriter.prim__new a


  export
  closed : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  closed a = primJS $ WritableStreamDefaultWriter.prim__closed a


  export
  desiredSize : (obj : WritableStreamDefaultWriter) -> JSIO (Maybe Double)
  desiredSize a = tryJS "WritableStreamDefaultWriter.desiredSize" $
    WritableStreamDefaultWriter.prim__desiredSize a


  export
  ready : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  ready a = primJS $ WritableStreamDefaultWriter.prim__ready a


  export
  abort :
       (obj : WritableStreamDefaultWriter)
    -> {default Undef reason : Optional Any}
    -> JSIO (Promise Undefined)
  abort a = primJS $ WritableStreamDefaultWriter.prim__abort a (toFFI reason)


  export
  close : (obj : WritableStreamDefaultWriter) -> JSIO (Promise Undefined)
  close a = primJS $ WritableStreamDefaultWriter.prim__close a


  export
  releaseLock : (obj : WritableStreamDefaultWriter) -> JSIO ()
  releaseLock a = primJS $ WritableStreamDefaultWriter.prim__releaseLock a


  export
  write :
       (obj : WritableStreamDefaultWriter)
    -> {default Undef chunk : Optional Any}
    -> JSIO (Promise Undefined)
  write a = primJS $ WritableStreamDefaultWriter.prim__write a (toFFI chunk)




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GenericTransformStream

  export
  readable :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem GenericTransformStream (Types t1)}
    -> (obj : t1)
    -> JSIO ReadableStream
  readable a = primJS $ GenericTransformStream.prim__readable (up a)


  export
  writable :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem GenericTransformStream (Types t1)}
    -> (obj : t1)
    -> JSIO WritableStream
  writable a = primJS $ GenericTransformStream.prim__writable (up a)



namespace ReadableStreamGenericReader

  export
  closed :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ReadableStreamGenericReader (Types t1)}
    -> (obj : t1)
    -> JSIO (Promise Undefined)
  closed a = primJS $ ReadableStreamGenericReader.prim__closed (up a)


  export
  cancel :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ReadableStreamGenericReader (Types t1)}
    -> (obj : t1)
    -> {default Undef reason : Optional Any}
    -> JSIO (Promise Undefined)
  cancel a = primJS $
    ReadableStreamGenericReader.prim__cancel (up a) (toFFI reason)




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy

  export
  new :
       {default Undef highWaterMark : Optional Double}
    -> {default Undef size : Optional QueuingStrategySize}
    -> JSIO QueuingStrategy
  new = primJS $ QueuingStrategy.prim__new (toFFI highWaterMark) (toFFI size)


  export
  highWaterMark :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem QueuingStrategy (Types t)}
    -> t
    -> Attribute False Optional Double
  highWaterMark v = fromUndefOrPrimNoDefault
                      "QueuingStrategy.gethighWaterMark"
                      prim__highWaterMark
                      prim__setHighWaterMark
                      (v :> QueuingStrategy)


  export
  size :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem QueuingStrategy (Types t)}
    -> t
    -> Attribute False Optional QueuingStrategySize
  size v = fromUndefOrPrimNoDefault
             "QueuingStrategy.getsize"
             prim__size
             prim__setSize
             (v :> QueuingStrategy)



namespace QueuingStrategyInit

  export
  new : (highWaterMark : Double) -> JSIO QueuingStrategyInit
  new a = primJS $ QueuingStrategyInit.prim__new a


  export
  highWaterMark :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem QueuingStrategyInit (Types t)}
    -> t
    -> Attribute True I Double
  highWaterMark v = fromPrim
                      "QueuingStrategyInit.gethighWaterMark"
                      prim__highWaterMark
                      prim__setHighWaterMark
                      (v :> QueuingStrategyInit)



namespace ReadableStreamBYOBReadResult

  export
  new :
       {default Undef value : Optional
                                (NS I
                                   [ Int8Array
                                   , Int16Array
                                   , Int32Array
                                   , UInt8Array
                                   , UInt8Array
                                   , UInt8Array
                                   , UInt8ClampedArray
                                   , Float32Array
                                   , Float64Array
                                   , DataView
                                   ])}
    -> {default Undef done : Optional Bool}
    -> JSIO ReadableStreamBYOBReadResult
  new = primJS $
    ReadableStreamBYOBReadResult.prim__new (toFFI value) (toFFI done)


  export
  done :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ReadableStreamBYOBReadResult (Types t)}
    -> t
    -> Attribute False Optional Bool
  done v = fromUndefOrPrimNoDefault
             "ReadableStreamBYOBReadResult.getdone"
             prim__done
             prim__setDone
             (v :> ReadableStreamBYOBReadResult)


  export
  value :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ReadableStreamBYOBReadResult (Types t)}
    -> t
    -> Attribute False Optional (Union10
                                   Int8Array
                                   Int16Array
                                   Int32Array
                                   UInt8Array
                                   UInt8Array
                                   UInt8Array
                                   UInt8ClampedArray
                                   Float32Array
                                   Float64Array
                                   DataView)
  value v = fromUndefOrPrimNoDefault
              "ReadableStreamBYOBReadResult.getvalue"
              prim__value
              prim__setValue
              (v :> ReadableStreamBYOBReadResult)



namespace ReadableStreamDefaultReadResult

  export
  new :
       {default Undef value : Optional Any}
    -> {default Undef done : Optional Bool}
    -> JSIO ReadableStreamDefaultReadResult
  new = primJS $
    ReadableStreamDefaultReadResult.prim__new (toFFI value) (toFFI done)


  export
  done :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ReadableStreamDefaultReadResult (Types t)}
    -> t
    -> Attribute False Optional Bool
  done v = fromUndefOrPrimNoDefault
             "ReadableStreamDefaultReadResult.getdone"
             prim__done
             prim__setDone
             (v :> ReadableStreamDefaultReadResult)


  export
  value :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ReadableStreamDefaultReadResult (Types t)}
    -> t
    -> Attribute False Optional Any
  value v = fromUndefOrPrimNoDefault
              "ReadableStreamDefaultReadResult.getvalue"
              prim__value
              prim__setValue
              (v :> ReadableStreamDefaultReadResult)



namespace ReadableStreamGetReaderOptions

  export
  new :
       {default Undef mode : Optional ReadableStreamReaderMode}
    -> JSIO ReadableStreamGetReaderOptions
  new = primJS $ ReadableStreamGetReaderOptions.prim__new (toFFI mode)


  export
  mode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ReadableStreamGetReaderOptions (Types t)}
    -> t
    -> Attribute False Optional ReadableStreamReaderMode
  mode v = fromUndefOrPrimNoDefault
             "ReadableStreamGetReaderOptions.getmode"
             prim__mode
             prim__setMode
             (v :> ReadableStreamGetReaderOptions)



namespace ReadableStreamIteratorOptions

  export
  new :
       {default Undef preventCancel : Optional Bool}
    -> JSIO ReadableStreamIteratorOptions
  new = primJS $ ReadableStreamIteratorOptions.prim__new (toFFI preventCancel)


  export
  preventCancel :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ReadableStreamIteratorOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  preventCancel v = fromUndefOrPrim
                      "ReadableStreamIteratorOptions.getpreventCancel"
                      prim__preventCancel
                      prim__setPreventCancel
                      False
                      (v :> ReadableStreamIteratorOptions)



namespace ReadableWritablePair

  export
  new :
       (readable : ReadableStream)
    -> (writable : WritableStream)
    -> JSIO ReadableWritablePair
  new a b = primJS $ ReadableWritablePair.prim__new a b


  export
  readable :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ReadableWritablePair (Types t)}
    -> t
    -> Attribute True I ReadableStream
  readable v = fromPrim
                 "ReadableWritablePair.getreadable"
                 prim__readable
                 prim__setReadable
                 (v :> ReadableWritablePair)


  export
  writable :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ReadableWritablePair (Types t)}
    -> t
    -> Attribute True I WritableStream
  writable v = fromPrim
                 "ReadableWritablePair.getwritable"
                 prim__writable
                 prim__setWritable
                 (v :> ReadableWritablePair)



namespace StreamPipeOptions

  export
  new :
       {default Undef preventClose : Optional Bool}
    -> {default Undef preventAbort : Optional Bool}
    -> {default Undef preventCancel : Optional Bool}
    -> {default Undef signal : Optional AbortSignal}
    -> JSIO StreamPipeOptions
  new = primJS $
    StreamPipeOptions.prim__new
      (toFFI preventClose)
      (toFFI preventAbort)
      (toFFI preventCancel)
      (toFFI signal)


  export
  preventAbort :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem StreamPipeOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  preventAbort v = fromUndefOrPrim
                     "StreamPipeOptions.getpreventAbort"
                     prim__preventAbort
                     prim__setPreventAbort
                     False
                     (v :> StreamPipeOptions)


  export
  preventCancel :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem StreamPipeOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  preventCancel v = fromUndefOrPrim
                      "StreamPipeOptions.getpreventCancel"
                      prim__preventCancel
                      prim__setPreventCancel
                      False
                      (v :> StreamPipeOptions)


  export
  preventClose :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem StreamPipeOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  preventClose v = fromUndefOrPrim
                     "StreamPipeOptions.getpreventClose"
                     prim__preventClose
                     prim__setPreventClose
                     False
                     (v :> StreamPipeOptions)


  export
  signal :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem StreamPipeOptions (Types t)}
    -> t
    -> Attribute False Optional AbortSignal
  signal v = fromUndefOrPrimNoDefault
               "StreamPipeOptions.getsignal"
               prim__signal
               prim__setSignal
               (v :> StreamPipeOptions)



namespace Transformer

  export
  new :
       {default Undef start : Optional TransformerStartCallback}
    -> {default Undef transform : Optional TransformerTransformCallback}
    -> {default Undef flush : Optional TransformerFlushCallback}
    -> {default Undef readableType : Optional Any}
    -> {default Undef writableType : Optional Any}
    -> JSIO Transformer
  new = primJS $
    Transformer.prim__new
      (toFFI start)
      (toFFI transform)
      (toFFI flush)
      (toFFI readableType)
      (toFFI writableType)


  export
  flush :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Transformer (Types t)}
    -> t
    -> Attribute False Optional TransformerFlushCallback
  flush v = fromUndefOrPrimNoDefault
              "Transformer.getflush"
              prim__flush
              prim__setFlush
              (v :> Transformer)


  export
  readableType :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Transformer (Types t)}
    -> t
    -> Attribute False Optional Any
  readableType v = fromUndefOrPrimNoDefault
                     "Transformer.getreadableType"
                     prim__readableType
                     prim__setReadableType
                     (v :> Transformer)


  export
  start :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Transformer (Types t)}
    -> t
    -> Attribute False Optional TransformerStartCallback
  start v = fromUndefOrPrimNoDefault
              "Transformer.getstart"
              prim__start
              prim__setStart
              (v :> Transformer)


  export
  transform :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Transformer (Types t)}
    -> t
    -> Attribute False Optional TransformerTransformCallback
  transform v = fromUndefOrPrimNoDefault
                  "Transformer.gettransform"
                  prim__transform
                  prim__setTransform
                  (v :> Transformer)


  export
  writableType :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Transformer (Types t)}
    -> t
    -> Attribute False Optional Any
  writableType v = fromUndefOrPrimNoDefault
                     "Transformer.getwritableType"
                     prim__writableType
                     prim__setWritableType
                     (v :> Transformer)



namespace UnderlyingSink

  export
  new :
       {default Undef start : Optional UnderlyingSinkStartCallback}
    -> {default Undef write : Optional UnderlyingSinkWriteCallback}
    -> {default Undef close : Optional UnderlyingSinkCloseCallback}
    -> {default Undef abort : Optional UnderlyingSinkAbortCallback}
    -> {default Undef type : Optional Any}
    -> JSIO UnderlyingSink
  new = primJS $
    UnderlyingSink.prim__new
      (toFFI start)
      (toFFI write)
      (toFFI close)
      (toFFI abort)
      (toFFI type)


  export
  abort :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSink (Types t)}
    -> t
    -> Attribute False Optional UnderlyingSinkAbortCallback
  abort v = fromUndefOrPrimNoDefault
              "UnderlyingSink.getabort"
              prim__abort
              prim__setAbort
              (v :> UnderlyingSink)


  export
  close :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSink (Types t)}
    -> t
    -> Attribute False Optional UnderlyingSinkCloseCallback
  close v = fromUndefOrPrimNoDefault
              "UnderlyingSink.getclose"
              prim__close
              prim__setClose
              (v :> UnderlyingSink)


  export
  start :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSink (Types t)}
    -> t
    -> Attribute False Optional UnderlyingSinkStartCallback
  start v = fromUndefOrPrimNoDefault
              "UnderlyingSink.getstart"
              prim__start
              prim__setStart
              (v :> UnderlyingSink)


  export
  type :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSink (Types t)}
    -> t
    -> Attribute False Optional Any
  type v = fromUndefOrPrimNoDefault
             "UnderlyingSink.gettype"
             prim__type
             prim__setType
             (v :> UnderlyingSink)


  export
  write :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSink (Types t)}
    -> t
    -> Attribute False Optional UnderlyingSinkWriteCallback
  write v = fromUndefOrPrimNoDefault
              "UnderlyingSink.getwrite"
              prim__write
              prim__setWrite
              (v :> UnderlyingSink)



namespace UnderlyingSource

  export
  new :
       {default Undef start : Optional UnderlyingSourceStartCallback}
    -> {default Undef pull : Optional UnderlyingSourcePullCallback}
    -> {default Undef cancel : Optional UnderlyingSourceCancelCallback}
    -> {default Undef type : Optional ReadableStreamType}
    -> {default Undef autoAllocateChunkSize : Optional JSBits64}
    -> JSIO UnderlyingSource
  new = primJS $
    UnderlyingSource.prim__new
      (toFFI start)
      (toFFI pull)
      (toFFI cancel)
      (toFFI type)
      (toFFI autoAllocateChunkSize)


  export
  autoAllocateChunkSize :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSource (Types t)}
    -> t
    -> Attribute False Optional JSBits64
  autoAllocateChunkSize v = fromUndefOrPrimNoDefault
                              "UnderlyingSource.getautoAllocateChunkSize"
                              prim__autoAllocateChunkSize
                              prim__setAutoAllocateChunkSize
                              (v :> UnderlyingSource)


  export
  cancel :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSource (Types t)}
    -> t
    -> Attribute False Optional UnderlyingSourceCancelCallback
  cancel v = fromUndefOrPrimNoDefault
               "UnderlyingSource.getcancel"
               prim__cancel
               prim__setCancel
               (v :> UnderlyingSource)


  export
  pull :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSource (Types t)}
    -> t
    -> Attribute False Optional UnderlyingSourcePullCallback
  pull v = fromUndefOrPrimNoDefault
             "UnderlyingSource.getpull"
             prim__pull
             prim__setPull
             (v :> UnderlyingSource)


  export
  start :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSource (Types t)}
    -> t
    -> Attribute False Optional UnderlyingSourceStartCallback
  start v = fromUndefOrPrimNoDefault
              "UnderlyingSource.getstart"
              prim__start
              prim__setStart
              (v :> UnderlyingSource)


  export
  type :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UnderlyingSource (Types t)}
    -> t
    -> Attribute False Optional ReadableStreamType
  type v = fromUndefOrPrimNoDefault
             "UnderlyingSource.gettype"
             prim__type
             prim__setType
             (v :> UnderlyingSource)




--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace QueuingStrategySize

  export
  toQueuingStrategySize :
       (UndefOr AnyPtr -> IO Double)
    -> JSIO QueuingStrategySize
  toQueuingStrategySize cb = primJS $ prim__toQueuingStrategySize cb



namespace TransformerFlushCallback

  export
  toTransformerFlushCallback :
       (TransformStreamDefaultController -> IO (Promise Undefined))
    -> JSIO TransformerFlushCallback
  toTransformerFlushCallback cb = primJS $ prim__toTransformerFlushCallback cb



namespace TransformerStartCallback

  export
  toTransformerStartCallback :
       (TransformStreamDefaultController -> IO AnyPtr)
    -> JSIO TransformerStartCallback
  toTransformerStartCallback cb = primJS $ prim__toTransformerStartCallback cb



namespace TransformerTransformCallback

  export
  toTransformerTransformCallback :
       (AnyPtr -> TransformStreamDefaultController -> IO (Promise Undefined))
    -> JSIO TransformerTransformCallback
  toTransformerTransformCallback cb = primJS $ prim__toTransformerTransformCallback cb



namespace UnderlyingSinkAbortCallback

  export
  toUnderlyingSinkAbortCallback :
       (UndefOr AnyPtr -> IO (Promise Undefined))
    -> JSIO UnderlyingSinkAbortCallback
  toUnderlyingSinkAbortCallback cb = primJS $ prim__toUnderlyingSinkAbortCallback cb



namespace UnderlyingSinkCloseCallback

  export
  toUnderlyingSinkCloseCallback :
       (() -> IO (Promise Undefined))
    -> JSIO UnderlyingSinkCloseCallback
  toUnderlyingSinkCloseCallback cb = primJS $ prim__toUnderlyingSinkCloseCallback cb



namespace UnderlyingSinkStartCallback

  export
  toUnderlyingSinkStartCallback :
       (WritableStreamDefaultController -> IO AnyPtr)
    -> JSIO UnderlyingSinkStartCallback
  toUnderlyingSinkStartCallback cb = primJS $ prim__toUnderlyingSinkStartCallback cb



namespace UnderlyingSinkWriteCallback

  export
  toUnderlyingSinkWriteCallback :
       (AnyPtr -> WritableStreamDefaultController -> IO (Promise Undefined))
    -> JSIO UnderlyingSinkWriteCallback
  toUnderlyingSinkWriteCallback cb = primJS $ prim__toUnderlyingSinkWriteCallback cb



namespace UnderlyingSourceCancelCallback

  export
  toUnderlyingSourceCancelCallback :
       (UndefOr AnyPtr -> IO (Promise Undefined))
    -> JSIO UnderlyingSourceCancelCallback
  toUnderlyingSourceCancelCallback cb = primJS $ prim__toUnderlyingSourceCancelCallback cb



namespace UnderlyingSourcePullCallback

  export
  toUnderlyingSourcePullCallback :
       (  Union2 ReadableStreamDefaultController ReadableByteStreamController
       -> IO (Promise Undefined)
       )
    -> JSIO UnderlyingSourcePullCallback
  toUnderlyingSourcePullCallback cb = primJS $ prim__toUnderlyingSourcePullCallback cb



namespace UnderlyingSourceStartCallback

  export
  toUnderlyingSourceStartCallback :
       (  Union2 ReadableStreamDefaultController ReadableByteStreamController
       -> IO AnyPtr
       )
    -> JSIO UnderlyingSourceStartCallback
  toUnderlyingSourceStartCallback cb = primJS $ prim__toUnderlyingSourceStartCallback cb
