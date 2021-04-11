module Web.Internal.StreamsPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ByteLengthQueuingStrategy
  
  export
  %foreign "browser:lambda:(a)=> new ByteLengthQueuingStrategy(a)"
  prim__new : QueuingStrategyInit -> PrimIO ByteLengthQueuingStrategy
  
  export
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : ByteLengthQueuingStrategy -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : ByteLengthQueuingStrategy -> PrimIO Function

namespace CountQueuingStrategy
  
  export
  %foreign "browser:lambda:(a)=> new CountQueuingStrategy(a)"
  prim__new : QueuingStrategyInit -> PrimIO CountQueuingStrategy
  
  export
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : CountQueuingStrategy -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : CountQueuingStrategy -> PrimIO Function

namespace ReadableByteStreamController
  
  export
  %foreign "browser:lambda:x=>x.byobRequest"
  prim__byobRequest :  ReadableByteStreamController
                    -> PrimIO (Nullable ReadableStreamBYOBRequest)
  
  export
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : ReadableByteStreamController -> PrimIO (Nullable Double)
  
  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : ReadableByteStreamController -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.enqueue(a)"
  prim__enqueue :  ReadableByteStreamController
                -> Union10 Int8Array
                           Int16Array
                           Int32Array
                           UInt8Array
                           UInt8Array
                           UInt8Array
                           UInt8ClampedArray
                           Float32Array
                           Float64Array
                           DataView
                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.error(a)"
  prim__error : ReadableByteStreamController -> UndefOr AnyPtr -> PrimIO ()

namespace ReadableStream
  
  export
  %foreign "browser:lambda:(a,b)=> new ReadableStream(a b)"
  prim__new : UndefOr Object -> UndefOr QueuingStrategy -> PrimIO ReadableStream
  
  export
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : ReadableStream -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.cancel(a)"
  prim__cancel : ReadableStream -> UndefOr AnyPtr -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getReader(a)"
  prim__getReader :  ReadableStream
                  -> UndefOr ReadableStreamGetReaderOptions
                  -> PrimIO (Union2 ReadableStreamDefaultReader
                                    ReadableStreamBYOBReader)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.pipeThrough(a b)"
  prim__pipeThrough :  ReadableStream
                    -> ReadableWritablePair
                    -> UndefOr StreamPipeOptions
                    -> PrimIO ReadableStream
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.pipeTo(a b)"
  prim__pipeTo :  ReadableStream
               -> WritableStream
               -> UndefOr StreamPipeOptions
               -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:x=>x.tee()"
  prim__tee : ReadableStream -> PrimIO (Array ReadableStream)

namespace ReadableStreamBYOBReader
  
  export
  %foreign "browser:lambda:(a)=> new ReadableStreamBYOBReader(a)"
  prim__new : ReadableStream -> PrimIO ReadableStreamBYOBReader
  
  export
  %foreign "browser:lambda:(x,a)=>x.read(a)"
  prim__read :  ReadableStreamBYOBReader
             -> Union10 Int8Array
                        Int16Array
                        Int32Array
                        UInt8Array
                        UInt8Array
                        UInt8Array
                        UInt8ClampedArray
                        Float32Array
                        Float64Array
                        DataView
             -> PrimIO (Promise ReadableStreamBYOBReadResult)
  
  export
  %foreign "browser:lambda:x=>x.releaseLock()"
  prim__releaseLock : ReadableStreamBYOBReader -> PrimIO ()

namespace ReadableStreamBYOBRequest
  
  export
  %foreign "browser:lambda:x=>x.view"
  prim__view :  ReadableStreamBYOBRequest
             -> PrimIO (Nullable (Union10 Int8Array
                                          Int16Array
                                          Int32Array
                                          UInt8Array
                                          UInt8Array
                                          UInt8Array
                                          UInt8ClampedArray
                                          Float32Array
                                          Float64Array
                                          DataView))
  
  export
  %foreign "browser:lambda:(x,a)=>x.respond(a)"
  prim__respond : ReadableStreamBYOBRequest -> UInt64 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.respondWithNewView(a)"
  prim__respondWithNewView :  ReadableStreamBYOBRequest
                           -> Union10 Int8Array
                                      Int16Array
                                      Int32Array
                                      UInt8Array
                                      UInt8Array
                                      UInt8Array
                                      UInt8ClampedArray
                                      Float32Array
                                      Float64Array
                                      DataView
                           -> PrimIO ()

namespace ReadableStreamDefaultController
  
  export
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize :  ReadableStreamDefaultController
                    -> PrimIO (Nullable Double)
  
  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : ReadableStreamDefaultController -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.enqueue(a)"
  prim__enqueue : ReadableStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.error(a)"
  prim__error : ReadableStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()

namespace ReadableStreamDefaultReader
  
  export
  %foreign "browser:lambda:(a)=> new ReadableStreamDefaultReader(a)"
  prim__new : ReadableStream -> PrimIO ReadableStreamDefaultReader
  
  export
  %foreign "browser:lambda:x=>x.read()"
  prim__read :  ReadableStreamDefaultReader
             -> PrimIO (Promise ReadableStreamDefaultReadResult)
  
  export
  %foreign "browser:lambda:x=>x.releaseLock()"
  prim__releaseLock : ReadableStreamDefaultReader -> PrimIO ()

namespace TransformStream
  
  export
  %foreign "browser:lambda:(a,b,c)=> new TransformStream(a b c)"
  prim__new :  UndefOr Object
            -> UndefOr QueuingStrategy
            -> UndefOr QueuingStrategy
            -> PrimIO TransformStream
  
  export
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : TransformStream -> PrimIO ReadableStream
  
  export
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : TransformStream -> PrimIO WritableStream

namespace TransformStreamDefaultController
  
  export
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize :  TransformStreamDefaultController
                    -> PrimIO (Nullable Double)
  
  export
  %foreign "browser:lambda:(x,a)=>x.enqueue(a)"
  prim__enqueue :  TransformStreamDefaultController
                -> UndefOr AnyPtr
                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.error(a)"
  prim__error : TransformStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.terminate()"
  prim__terminate : TransformStreamDefaultController -> PrimIO ()

namespace WritableStream
  
  export
  %foreign "browser:lambda:(a,b)=> new WritableStream(a b)"
  prim__new : UndefOr Object -> UndefOr QueuingStrategy -> PrimIO WritableStream
  
  export
  %foreign "browser:lambda:x=>x.locked"
  prim__locked : WritableStream -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.abort(a)"
  prim__abort : WritableStream -> UndefOr AnyPtr -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : WritableStream -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:x=>x.getWriter()"
  prim__getWriter : WritableStream -> PrimIO WritableStreamDefaultWriter

namespace WritableStreamDefaultController
  
  export
  %foreign "browser:lambda:(x,a)=>x.error(a)"
  prim__error : WritableStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()

namespace WritableStreamDefaultWriter
  
  export
  %foreign "browser:lambda:(a)=> new WritableStreamDefaultWriter(a)"
  prim__new : WritableStream -> PrimIO WritableStreamDefaultWriter
  
  export
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : WritableStreamDefaultWriter -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:x=>x.desiredSize"
  prim__desiredSize : WritableStreamDefaultWriter -> PrimIO (Nullable Double)
  
  export
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : WritableStreamDefaultWriter -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a)=>x.abort(a)"
  prim__abort :  WritableStreamDefaultWriter
              -> UndefOr AnyPtr
              -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : WritableStreamDefaultWriter -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:x=>x.releaseLock()"
  prim__releaseLock : WritableStreamDefaultWriter -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.write(a)"
  prim__write :  WritableStreamDefaultWriter
              -> UndefOr AnyPtr
              -> PrimIO (Promise Undefined)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GenericTransformStream
  
  export
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : GenericTransformStream -> PrimIO ReadableStream
  
  export
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : GenericTransformStream -> PrimIO WritableStream

namespace ReadableStreamGenericReader
  
  export
  %foreign "browser:lambda:x=>x.closed"
  prim__closed : ReadableStreamGenericReader -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a)=>x.cancel(a)"
  prim__cancel :  ReadableStreamGenericReader
               -> UndefOr AnyPtr
               -> PrimIO (Promise Undefined)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace QueuingStrategy
  
  export
  %foreign "browser:lambda:(a,b)=> {highWaterMark: a,size: b}"
  prim__new :  UndefOr Double
            -> UndefOr QueuingStrategySize
            -> PrimIO QueuingStrategy
  
  export
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : QueuingStrategy -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.highWaterMark = v}"
  prim__setHighWaterMark : QueuingStrategy -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : QueuingStrategy -> PrimIO $ UndefOr QueuingStrategySize
  
  export
  %foreign "browser:lambda:(x,v)=>{x.size = v}"
  prim__setSize : QueuingStrategy -> UndefOr QueuingStrategySize -> PrimIO ()

namespace QueuingStrategyInit
  
  export
  %foreign "browser:lambda:(a)=> {highWaterMark: a}"
  prim__new : Double -> PrimIO QueuingStrategyInit
  
  export
  %foreign "browser:lambda:x=>x.highWaterMark"
  prim__highWaterMark : QueuingStrategyInit -> PrimIO Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.highWaterMark = v}"
  prim__setHighWaterMark : QueuingStrategyInit -> Double -> PrimIO ()

namespace ReadableStreamBYOBReadResult
  
  export
  %foreign "browser:lambda:(a,b)=> {value: a,done: b}"
  prim__new :  UndefOr (Union10 Int8Array
                                Int16Array
                                Int32Array
                                UInt8Array
                                UInt8Array
                                UInt8Array
                                UInt8ClampedArray
                                Float32Array
                                Float64Array
                                DataView)
            -> UndefOr Boolean
            -> PrimIO ReadableStreamBYOBReadResult
  
  export
  %foreign "browser:lambda:x=>x.done"
  prim__done : ReadableStreamBYOBReadResult -> PrimIO $ UndefOr Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.done = v}"
  prim__setDone : ReadableStreamBYOBReadResult -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.value"
  prim__value :  ReadableStreamBYOBReadResult
              -> PrimIO $ UndefOr (Union10 Int8Array
                                           Int16Array
                                           Int32Array
                                           UInt8Array
                                           UInt8Array
                                           UInt8Array
                                           UInt8ClampedArray
                                           Float32Array
                                           Float64Array
                                           DataView)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue :  ReadableStreamBYOBReadResult
                 -> UndefOr (Union10 Int8Array
                                     Int16Array
                                     Int32Array
                                     UInt8Array
                                     UInt8Array
                                     UInt8Array
                                     UInt8ClampedArray
                                     Float32Array
                                     Float64Array
                                     DataView)
                 -> PrimIO ()

namespace ReadableStreamDefaultReadResult
  
  export
  %foreign "browser:lambda:(a,b)=> {value: a,done: b}"
  prim__new :  UndefOr AnyPtr
            -> UndefOr Boolean
            -> PrimIO ReadableStreamDefaultReadResult
  
  export
  %foreign "browser:lambda:x=>x.done"
  prim__done : ReadableStreamDefaultReadResult -> PrimIO $ UndefOr Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.done = v}"
  prim__setDone :  ReadableStreamDefaultReadResult
                -> UndefOr Boolean
                -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : ReadableStreamDefaultReadResult -> PrimIO $ UndefOr AnyPtr
  
  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue :  ReadableStreamDefaultReadResult
                 -> UndefOr AnyPtr
                 -> PrimIO ()

namespace ReadableStreamGetReaderOptions
  
  export
  %foreign "browser:lambda:(a)=> {mode: a}"
  prim__new : UndefOr String -> PrimIO ReadableStreamGetReaderOptions
  
  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : ReadableStreamGetReaderOptions -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : ReadableStreamGetReaderOptions -> UndefOr String -> PrimIO ()

namespace ReadableStreamIteratorOptions
  
  export
  %foreign "browser:lambda:(a)=> {preventCancel: a}"
  prim__new : UndefOr Boolean -> PrimIO ReadableStreamIteratorOptions
  
  export
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel :  ReadableStreamIteratorOptions
                      -> PrimIO $ UndefOr Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.preventCancel = v}"
  prim__setPreventCancel :  ReadableStreamIteratorOptions
                         -> UndefOr Boolean
                         -> PrimIO ()

namespace ReadableWritablePair
  
  export
  %foreign "browser:lambda:(a,b)=> {readable: a,writable: b}"
  prim__new : ReadableStream -> WritableStream -> PrimIO ReadableWritablePair
  
  export
  %foreign "browser:lambda:x=>x.readable"
  prim__readable : ReadableWritablePair -> PrimIO ReadableStream
  
  export
  %foreign "browser:lambda:(x,v)=>{x.readable = v}"
  prim__setReadable : ReadableWritablePair -> ReadableStream -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.writable"
  prim__writable : ReadableWritablePair -> PrimIO WritableStream
  
  export
  %foreign "browser:lambda:(x,v)=>{x.writable = v}"
  prim__setWritable : ReadableWritablePair -> WritableStream -> PrimIO ()

namespace StreamPipeOptions
  
  export
  %foreign "browser:lambda:(a,b,c,d)=> {preventClose: a,preventAbort: b,preventCancel: c,signal: d}"
  prim__new :  UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr AbortSignal
            -> PrimIO StreamPipeOptions
  
  export
  %foreign "browser:lambda:x=>x.preventAbort"
  prim__preventAbort : StreamPipeOptions -> PrimIO $ UndefOr Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.preventAbort = v}"
  prim__setPreventAbort : StreamPipeOptions -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.preventCancel"
  prim__preventCancel : StreamPipeOptions -> PrimIO $ UndefOr Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.preventCancel = v}"
  prim__setPreventCancel : StreamPipeOptions -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.preventClose"
  prim__preventClose : StreamPipeOptions -> PrimIO $ UndefOr Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.preventClose = v}"
  prim__setPreventClose : StreamPipeOptions -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : StreamPipeOptions -> PrimIO $ UndefOr AbortSignal
  
  export
  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : StreamPipeOptions -> UndefOr AbortSignal -> PrimIO ()

namespace Transformer
  
  export
  %foreign "browser:lambda:(a,b,c,d,e)=> {start: a,transform: b,flush: c,readableType: d,writableType: e}"
  prim__new :  UndefOr TransformerStartCallback
            -> UndefOr TransformerTransformCallback
            -> UndefOr TransformerFlushCallback
            -> UndefOr AnyPtr
            -> UndefOr AnyPtr
            -> PrimIO Transformer
  
  export
  %foreign "browser:lambda:x=>x.flush"
  prim__flush : Transformer -> PrimIO $ UndefOr TransformerFlushCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.flush = v}"
  prim__setFlush : Transformer -> UndefOr TransformerFlushCallback -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.readableType"
  prim__readableType : Transformer -> PrimIO $ UndefOr AnyPtr
  
  export
  %foreign "browser:lambda:(x,v)=>{x.readableType = v}"
  prim__setReadableType : Transformer -> UndefOr AnyPtr -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.start"
  prim__start : Transformer -> PrimIO $ UndefOr TransformerStartCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart : Transformer -> UndefOr TransformerStartCallback -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : Transformer -> PrimIO $ UndefOr TransformerTransformCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.transform = v}"
  prim__setTransform :  Transformer
                     -> UndefOr TransformerTransformCallback
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.writableType"
  prim__writableType : Transformer -> PrimIO $ UndefOr AnyPtr
  
  export
  %foreign "browser:lambda:(x,v)=>{x.writableType = v}"
  prim__setWritableType : Transformer -> UndefOr AnyPtr -> PrimIO ()

namespace UnderlyingSink
  
  export
  %foreign "browser:lambda:(a,b,c,d,e)=> {start: a,write: b,close: c,abort: d,type: e}"
  prim__new :  UndefOr UnderlyingSinkStartCallback
            -> UndefOr UnderlyingSinkWriteCallback
            -> UndefOr UnderlyingSinkCloseCallback
            -> UndefOr UnderlyingSinkAbortCallback
            -> UndefOr AnyPtr
            -> PrimIO UnderlyingSink
  
  export
  %foreign "browser:lambda:x=>x.abort"
  prim__abort : UnderlyingSink -> PrimIO $ UndefOr UnderlyingSinkAbortCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.abort = v}"
  prim__setAbort :  UnderlyingSink
                 -> UndefOr UnderlyingSinkAbortCallback
                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.close"
  prim__close : UnderlyingSink -> PrimIO $ UndefOr UnderlyingSinkCloseCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.close = v}"
  prim__setClose :  UnderlyingSink
                 -> UndefOr UnderlyingSinkCloseCallback
                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.start"
  prim__start : UnderlyingSink -> PrimIO $ UndefOr UnderlyingSinkStartCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart :  UnderlyingSink
                 -> UndefOr UnderlyingSinkStartCallback
                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : UnderlyingSink -> PrimIO $ UndefOr AnyPtr
  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : UnderlyingSink -> UndefOr AnyPtr -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.write"
  prim__write : UnderlyingSink -> PrimIO $ UndefOr UnderlyingSinkWriteCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.write = v}"
  prim__setWrite :  UnderlyingSink
                 -> UndefOr UnderlyingSinkWriteCallback
                 -> PrimIO ()

namespace UnderlyingSource
  
  export
  %foreign "browser:lambda:(a,b,c,d,e)=> {start: a,pull: b,cancel: c,type: d,autoAllocateChunkSize: e}"
  prim__new :  UndefOr UnderlyingSourceStartCallback
            -> UndefOr UnderlyingSourcePullCallback
            -> UndefOr UnderlyingSourceCancelCallback
            -> UndefOr String
            -> UndefOr UInt64
            -> PrimIO UnderlyingSource
  
  export
  %foreign "browser:lambda:x=>x.autoAllocateChunkSize"
  prim__autoAllocateChunkSize : UnderlyingSource -> PrimIO $ UndefOr UInt64
  
  export
  %foreign "browser:lambda:(x,v)=>{x.autoAllocateChunkSize = v}"
  prim__setAutoAllocateChunkSize :  UnderlyingSource
                                 -> UndefOr UInt64
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.cancel"
  prim__cancel :  UnderlyingSource
               -> PrimIO $ UndefOr UnderlyingSourceCancelCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cancel = v}"
  prim__setCancel :  UnderlyingSource
                  -> UndefOr UnderlyingSourceCancelCallback
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.pull"
  prim__pull : UnderlyingSource -> PrimIO $ UndefOr UnderlyingSourcePullCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.pull = v}"
  prim__setPull :  UnderlyingSource
                -> UndefOr UnderlyingSourcePullCallback
                -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.start"
  prim__start :  UnderlyingSource
              -> PrimIO $ UndefOr UnderlyingSourceStartCallback
  
  export
  %foreign "browser:lambda:(x,v)=>{x.start = v}"
  prim__setStart :  UnderlyingSource
                 -> UndefOr UnderlyingSourceStartCallback
                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : UnderlyingSource -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : UnderlyingSource -> UndefOr String -> PrimIO ()