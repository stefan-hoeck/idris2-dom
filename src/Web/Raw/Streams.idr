module Web.Raw.Streams
 
import JS
import Web.Internal.StreamsPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem QueuingStrategyInit (Types t1)}
      -> (init : t1)
      -> JSIO ByteLengthQueuingStrategy
  new a = primJS $ ByteLengthQueuingStrategy.prim__new (up a)
  
  export
  highWaterMark :  JSType t1
                => {auto 0 _ : Elem ByteLengthQueuingStrategy (Types t1)}
                -> (obj : t1)
                -> JSIO Double
  highWaterMark a = primJS
                  $ ByteLengthQueuingStrategy.prim__highWaterMark (up a)
  
  export
  size :  JSType t1
       => {auto 0 _ : Elem ByteLengthQueuingStrategy (Types t1)}
       -> (obj : t1)
       -> JSIO Function
  size a = primJS $ ByteLengthQueuingStrategy.prim__size (up a)

namespace CountQueuingStrategy
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem QueuingStrategyInit (Types t1)}
      -> (init : t1)
      -> JSIO CountQueuingStrategy
  new a = primJS $ CountQueuingStrategy.prim__new (up a)
  
  export
  highWaterMark :  JSType t1
                => {auto 0 _ : Elem CountQueuingStrategy (Types t1)}
                -> (obj : t1)
                -> JSIO Double
  highWaterMark a = primJS $ CountQueuingStrategy.prim__highWaterMark (up a)
  
  export
  size :  JSType t1
       => {auto 0 _ : Elem CountQueuingStrategy (Types t1)}
       -> (obj : t1)
       -> JSIO Function
  size a = primJS $ CountQueuingStrategy.prim__size (up a)

namespace ReadableByteStreamController
  
  export
  byobRequest :  JSType t1
              => {auto 0 _ : Elem ReadableByteStreamController (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe ReadableStreamBYOBRequest)
  byobRequest a = tryJS "ReadableByteStreamController.byobRequest"
                $ ReadableByteStreamController.prim__byobRequest (up a)
  
  export
  desiredSize :  JSType t1
              => {auto 0 _ : Elem ReadableByteStreamController (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe Double)
  desiredSize a = tryJS "ReadableByteStreamController.desiredSize"
                $ ReadableByteStreamController.prim__desiredSize (up a)
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem ReadableByteStreamController (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ ReadableByteStreamController.prim__close (up a)
  
  export
  enqueue :  JSType t1
          => {auto 0 _ : Elem ReadableByteStreamController (Types t1)}
          -> (obj : t1)
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
  enqueue a b = primJS
              $ ReadableByteStreamController.prim__enqueue (up a) (toFFI b)
  
  export
  error :  JSType t1
        => {auto 0 _ : Elem ReadableByteStreamController (Types t1)}
        -> (obj : t1)
        -> (e : Optional Any)
        -> JSIO ()
  error a b = primJS $ ReadableByteStreamController.prim__error (up a) (toFFI b)

  export
  error' :  JSType t1
         => {auto 0 _ : Elem ReadableByteStreamController (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  error' a = primJS $ ReadableByteStreamController.prim__error (up a) undef

namespace ReadableStream
  
  export
  new :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem Object (Types t1)}
      -> {auto 0 _ : Elem QueuingStrategy (Types t2)}
      -> (underlyingSource : Optional t1)
      -> (strategy : Optional t2)
      -> JSIO ReadableStream
  new a b = primJS $ ReadableStream.prim__new (optUp a) (optUp b)

  export
  new' : JSIO ReadableStream
  new' = primJS $ ReadableStream.prim__new undef undef
  
  export
  locked :  JSType t1
         => {auto 0 _ : Elem ReadableStream (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  locked a = tryJS "ReadableStream.locked" $ ReadableStream.prim__locked (up a)
  
  export
  cancel :  JSType t1
         => {auto 0 _ : Elem ReadableStream (Types t1)}
         -> (obj : t1)
         -> (reason : Optional Any)
         -> JSIO (Promise Undefined)
  cancel a b = primJS $ ReadableStream.prim__cancel (up a) (toFFI b)

  export
  cancel' :  JSType t1
          => {auto 0 _ : Elem ReadableStream (Types t1)}
          -> (obj : t1)
          -> JSIO (Promise Undefined)
  cancel' a = primJS $ ReadableStream.prim__cancel (up a) undef
  
  export
  getReader :  JSType t1
            => JSType t2
            => {auto 0 _ : Elem ReadableStream (Types t1)}
            -> {auto 0 _ : Elem ReadableStreamGetReaderOptions (Types t2)}
            -> (obj : t1)
            -> (options : Optional t2)
            -> JSIO (NS I [ ReadableStreamDefaultReader
                          , ReadableStreamBYOBReader
                          ])
  getReader a b = tryJS "ReadableStream.getReader"
                $ ReadableStream.prim__getReader (up a) (optUp b)

  export
  getReader' :  JSType t1
             => {auto 0 _ : Elem ReadableStream (Types t1)}
             -> (obj : t1)
             -> JSIO (NS I [ ReadableStreamDefaultReader
                           , ReadableStreamBYOBReader
                           ])
  getReader' a = tryJS "ReadableStream.getReader'"
               $ ReadableStream.prim__getReader (up a) undef
  
  export
  pipeThrough :  JSType t1
              => JSType t2
              => JSType t3
              => {auto 0 _ : Elem ReadableStream (Types t1)}
              -> {auto 0 _ : Elem ReadableWritablePair (Types t2)}
              -> {auto 0 _ : Elem StreamPipeOptions (Types t3)}
              -> (obj : t1)
              -> (transform : t2)
              -> (options : Optional t3)
              -> JSIO ReadableStream
  pipeThrough a b c = primJS
                    $ ReadableStream.prim__pipeThrough (up a) (up b) (optUp c)

  export
  pipeThrough' :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem ReadableStream (Types t1)}
               -> {auto 0 _ : Elem ReadableWritablePair (Types t2)}
               -> (obj : t1)
               -> (transform : t2)
               -> JSIO ReadableStream
  pipeThrough' a b = primJS
                   $ ReadableStream.prim__pipeThrough (up a) (up b) undef
  
  export
  pipeTo :  JSType t1
         => JSType t2
         => JSType t3
         => {auto 0 _ : Elem ReadableStream (Types t1)}
         -> {auto 0 _ : Elem WritableStream (Types t2)}
         -> {auto 0 _ : Elem StreamPipeOptions (Types t3)}
         -> (obj : t1)
         -> (destination : t2)
         -> (options : Optional t3)
         -> JSIO (Promise Undefined)
  pipeTo a b c = primJS $ ReadableStream.prim__pipeTo (up a) (up b) (optUp c)

  export
  pipeTo' :  JSType t1
          => JSType t2
          => {auto 0 _ : Elem ReadableStream (Types t1)}
          -> {auto 0 _ : Elem WritableStream (Types t2)}
          -> (obj : t1)
          -> (destination : t2)
          -> JSIO (Promise Undefined)
  pipeTo' a b = primJS $ ReadableStream.prim__pipeTo (up a) (up b) undef
  
  export
  tee :  JSType t1
      => {auto 0 _ : Elem ReadableStream (Types t1)}
      -> (obj : t1)
      -> JSIO (Array ReadableStream)
  tee a = primJS $ ReadableStream.prim__tee (up a)

namespace ReadableStreamBYOBReader
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem ReadableStream (Types t1)}
      -> (stream : t1)
      -> JSIO ReadableStreamBYOBReader
  new a = primJS $ ReadableStreamBYOBReader.prim__new (up a)
  
  export
  read :  JSType t1
       => {auto 0 _ : Elem ReadableStreamBYOBReader (Types t1)}
       -> (obj : t1)
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
  read a b = primJS $ ReadableStreamBYOBReader.prim__read (up a) (toFFI b)
  
  export
  releaseLock :  JSType t1
              => {auto 0 _ : Elem ReadableStreamBYOBReader (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  releaseLock a = primJS $ ReadableStreamBYOBReader.prim__releaseLock (up a)

namespace ReadableStreamBYOBRequest
  
  export
  view :  JSType t1
       => {auto 0 _ : Elem ReadableStreamBYOBRequest (Types t1)}
       -> (obj : t1)
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
         $ ReadableStreamBYOBRequest.prim__view (up a)
  
  export
  respond :  JSType t1
          => {auto 0 _ : Elem ReadableStreamBYOBRequest (Types t1)}
          -> (obj : t1)
          -> (bytesWritten : UInt64)
          -> JSIO ()
  respond a b = primJS $ ReadableStreamBYOBRequest.prim__respond (up a) b
  
  export
  respondWithNewView :  JSType t1
                     => {auto 0 _ : Elem ReadableStreamBYOBRequest (Types t1)}
                     -> (obj : t1)
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
                         $ ReadableStreamBYOBRequest.prim__respondWithNewView (up a)
                                                                              (toFFI b)

namespace ReadableStreamDefaultController
  
  export
  desiredSize :  JSType t1
              => {auto 0 _ : Elem ReadableStreamDefaultController (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe Double)
  desiredSize a = tryJS "ReadableStreamDefaultController.desiredSize"
                $ ReadableStreamDefaultController.prim__desiredSize (up a)
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem ReadableStreamDefaultController (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  close a = primJS $ ReadableStreamDefaultController.prim__close (up a)
  
  export
  enqueue :  JSType t1
          => {auto 0 _ : Elem ReadableStreamDefaultController (Types t1)}
          -> (obj : t1)
          -> (chunk : Optional Any)
          -> JSIO ()
  enqueue a b = primJS
              $ ReadableStreamDefaultController.prim__enqueue (up a) (toFFI b)

  export
  enqueue' :  JSType t1
           => {auto 0 _ : Elem ReadableStreamDefaultController (Types t1)}
           -> (obj : t1)
           -> JSIO ()
  enqueue' a = primJS
             $ ReadableStreamDefaultController.prim__enqueue (up a) undef
  
  export
  error :  JSType t1
        => {auto 0 _ : Elem ReadableStreamDefaultController (Types t1)}
        -> (obj : t1)
        -> (e : Optional Any)
        -> JSIO ()
  error a b = primJS
            $ ReadableStreamDefaultController.prim__error (up a) (toFFI b)

  export
  error' :  JSType t1
         => {auto 0 _ : Elem ReadableStreamDefaultController (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  error' a = primJS $ ReadableStreamDefaultController.prim__error (up a) undef

namespace ReadableStreamDefaultReader
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem ReadableStream (Types t1)}
      -> (stream : t1)
      -> JSIO ReadableStreamDefaultReader
  new a = primJS $ ReadableStreamDefaultReader.prim__new (up a)
  
  export
  read :  JSType t1
       => {auto 0 _ : Elem ReadableStreamDefaultReader (Types t1)}
       -> (obj : t1)
       -> JSIO (Promise ReadableStreamDefaultReadResult)
  read a = primJS $ ReadableStreamDefaultReader.prim__read (up a)
  
  export
  releaseLock :  JSType t1
              => {auto 0 _ : Elem ReadableStreamDefaultReader (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  releaseLock a = primJS $ ReadableStreamDefaultReader.prim__releaseLock (up a)

namespace TransformStream
  
  export
  new :  JSType t1
      => JSType t2
      => JSType t3
      => {auto 0 _ : Elem Object (Types t1)}
      -> {auto 0 _ : Elem QueuingStrategy (Types t2)}
      -> {auto 0 _ : Elem QueuingStrategy (Types t3)}
      -> (transformer : Optional t1)
      -> (writableStrategy : Optional t2)
      -> (readableStrategy : Optional t3)
      -> JSIO TransformStream
  new a b c = primJS $ TransformStream.prim__new (optUp a) (optUp b) (optUp c)

  export
  new' : JSIO TransformStream
  new' = primJS $ TransformStream.prim__new undef undef undef
  
  export
  readable :  JSType t1
           => {auto 0 _ : Elem TransformStream (Types t1)}
           -> (obj : t1)
           -> JSIO ReadableStream
  readable a = primJS $ TransformStream.prim__readable (up a)
  
  export
  writable :  JSType t1
           => {auto 0 _ : Elem TransformStream (Types t1)}
           -> (obj : t1)
           -> JSIO WritableStream
  writable a = primJS $ TransformStream.prim__writable (up a)

namespace TransformStreamDefaultController
  
  export
  desiredSize :  JSType t1
              => {auto 0 _ : Elem TransformStreamDefaultController (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe Double)
  desiredSize a = tryJS "TransformStreamDefaultController.desiredSize"
                $ TransformStreamDefaultController.prim__desiredSize (up a)
  
  export
  enqueue :  JSType t1
          => {auto 0 _ : Elem TransformStreamDefaultController (Types t1)}
          -> (obj : t1)
          -> (chunk : Optional Any)
          -> JSIO ()
  enqueue a b = primJS
              $ TransformStreamDefaultController.prim__enqueue (up a) (toFFI b)

  export
  enqueue' :  JSType t1
           => {auto 0 _ : Elem TransformStreamDefaultController (Types t1)}
           -> (obj : t1)
           -> JSIO ()
  enqueue' a = primJS
             $ TransformStreamDefaultController.prim__enqueue (up a) undef
  
  export
  error :  JSType t1
        => {auto 0 _ : Elem TransformStreamDefaultController (Types t1)}
        -> (obj : t1)
        -> (reason : Optional Any)
        -> JSIO ()
  error a b = primJS
            $ TransformStreamDefaultController.prim__error (up a) (toFFI b)

  export
  error' :  JSType t1
         => {auto 0 _ : Elem TransformStreamDefaultController (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  error' a = primJS $ TransformStreamDefaultController.prim__error (up a) undef
  
  export
  terminate :  JSType t1
            => {auto 0 _ : Elem TransformStreamDefaultController (Types t1)}
            -> (obj : t1)
            -> JSIO ()
  terminate a = primJS $ TransformStreamDefaultController.prim__terminate (up a)

namespace WritableStream
  
  export
  new :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem Object (Types t1)}
      -> {auto 0 _ : Elem QueuingStrategy (Types t2)}
      -> (underlyingSink : Optional t1)
      -> (strategy : Optional t2)
      -> JSIO WritableStream
  new a b = primJS $ WritableStream.prim__new (optUp a) (optUp b)

  export
  new' : JSIO WritableStream
  new' = primJS $ WritableStream.prim__new undef undef
  
  export
  locked :  JSType t1
         => {auto 0 _ : Elem WritableStream (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  locked a = tryJS "WritableStream.locked" $ WritableStream.prim__locked (up a)
  
  export
  abort :  JSType t1
        => {auto 0 _ : Elem WritableStream (Types t1)}
        -> (obj : t1)
        -> (reason : Optional Any)
        -> JSIO (Promise Undefined)
  abort a b = primJS $ WritableStream.prim__abort (up a) (toFFI b)

  export
  abort' :  JSType t1
         => {auto 0 _ : Elem WritableStream (Types t1)}
         -> (obj : t1)
         -> JSIO (Promise Undefined)
  abort' a = primJS $ WritableStream.prim__abort (up a) undef
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem WritableStream (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise Undefined)
  close a = primJS $ WritableStream.prim__close (up a)
  
  export
  getWriter :  JSType t1
            => {auto 0 _ : Elem WritableStream (Types t1)}
            -> (obj : t1)
            -> JSIO WritableStreamDefaultWriter
  getWriter a = primJS $ WritableStream.prim__getWriter (up a)

namespace WritableStreamDefaultController
  
  export
  error :  JSType t1
        => {auto 0 _ : Elem WritableStreamDefaultController (Types t1)}
        -> (obj : t1)
        -> (e : Optional Any)
        -> JSIO ()
  error a b = primJS
            $ WritableStreamDefaultController.prim__error (up a) (toFFI b)

  export
  error' :  JSType t1
         => {auto 0 _ : Elem WritableStreamDefaultController (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  error' a = primJS $ WritableStreamDefaultController.prim__error (up a) undef

namespace WritableStreamDefaultWriter
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem WritableStream (Types t1)}
      -> (stream : t1)
      -> JSIO WritableStreamDefaultWriter
  new a = primJS $ WritableStreamDefaultWriter.prim__new (up a)
  
  export
  closed :  JSType t1
         => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
         -> (obj : t1)
         -> JSIO (Promise Undefined)
  closed a = primJS $ WritableStreamDefaultWriter.prim__closed (up a)
  
  export
  desiredSize :  JSType t1
              => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe Double)
  desiredSize a = tryJS "WritableStreamDefaultWriter.desiredSize"
                $ WritableStreamDefaultWriter.prim__desiredSize (up a)
  
  export
  ready :  JSType t1
        => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise Undefined)
  ready a = primJS $ WritableStreamDefaultWriter.prim__ready (up a)
  
  export
  abort :  JSType t1
        => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
        -> (obj : t1)
        -> (reason : Optional Any)
        -> JSIO (Promise Undefined)
  abort a b = primJS $ WritableStreamDefaultWriter.prim__abort (up a) (toFFI b)

  export
  abort' :  JSType t1
         => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
         -> (obj : t1)
         -> JSIO (Promise Undefined)
  abort' a = primJS $ WritableStreamDefaultWriter.prim__abort (up a) undef
  
  export
  close :  JSType t1
        => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise Undefined)
  close a = primJS $ WritableStreamDefaultWriter.prim__close (up a)
  
  export
  releaseLock :  JSType t1
              => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  releaseLock a = primJS $ WritableStreamDefaultWriter.prim__releaseLock (up a)
  
  export
  write :  JSType t1
        => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
        -> (obj : t1)
        -> (chunk : Optional Any)
        -> JSIO (Promise Undefined)
  write a b = primJS $ WritableStreamDefaultWriter.prim__write (up a) (toFFI b)

  export
  write' :  JSType t1
         => {auto 0 _ : Elem WritableStreamDefaultWriter (Types t1)}
         -> (obj : t1)
         -> JSIO (Promise Undefined)
  write' a = primJS $ WritableStreamDefaultWriter.prim__write (up a) undef

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
  
  export
  new : (highWaterMark : Double) -> JSIO QueuingStrategyInit
  new a = primJS $ QueuingStrategyInit.prim__new a
  
  export
  highWaterMark : QueuingStrategyInit -> Attribute True I Double
  highWaterMark = fromPrim "QueuingStrategyInit.gethighWaterMark"
                           prim__highWaterMark
                           prim__setHighWaterMark

namespace ReadableStreamBYOBReadResult
  
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
  
  export
  new :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem ReadableStream (Types t1)}
      -> {auto 0 _ : Elem WritableStream (Types t2)}
      -> (readable : t1)
      -> (writable : t2)
      -> JSIO ReadableWritablePair
  new a b = primJS $ ReadableWritablePair.prim__new (up a) (up b)
  
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
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem AbortSignal (Types t1)}
      -> (preventClose : Optional Bool)
      -> (preventAbort : Optional Bool)
      -> (preventCancel : Optional Bool)
      -> (signal : Optional t1)
      -> JSIO StreamPipeOptions
  new a b c d = primJS
              $ StreamPipeOptions.prim__new (toFFI a)
                                            (toFFI b)
                                            (toFFI c)
                                            (optUp d)

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