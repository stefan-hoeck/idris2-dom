module Web.Internal.StreamsTypes

import JS

%default total


--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace ReadableStreamReaderMode
  
  public export
  data ReadableStreamReaderMode = Byob
  
  export
  Show ReadableStreamReaderMode where
    show Byob = "byob"
  
  export
  Eq ReadableStreamReaderMode where
    (==) = (==) `on` show
  
  export
  Ord ReadableStreamReaderMode where
    compare = compare `on` show
  
  export
  read : String -> Maybe ReadableStreamReaderMode
  read "byob" = Just Byob
  read _ = Nothing
  
  export
  ToFFI ReadableStreamReaderMode String where
    toFFI = show
  
  export
  FromFFI ReadableStreamReaderMode String where
    fromFFI = read


namespace ReadableStreamType
  
  public export
  data ReadableStreamType = Bytes
  
  export
  Show ReadableStreamType where
    show Bytes = "bytes"
  
  export
  Eq ReadableStreamType where
    (==) = (==) `on` show
  
  export
  Ord ReadableStreamType where
    compare = compare `on` show
  
  export
  read : String -> Maybe ReadableStreamType
  read "bytes" = Just Bytes
  read _ = Nothing
  
  export
  ToFFI ReadableStreamType String where
    toFFI = show
  
  export
  FromFFI ReadableStreamType String where
    fromFFI = read



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data ByteLengthQueuingStrategy : Type where [external]

export
ToFFI ByteLengthQueuingStrategy ByteLengthQueuingStrategy where toFFI = id

export
FromFFI ByteLengthQueuingStrategy ByteLengthQueuingStrategy where fromFFI = Just

export
SafeCast ByteLengthQueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "ByteLengthQueuingStrategy"

export data CountQueuingStrategy : Type where [external]

export
ToFFI CountQueuingStrategy CountQueuingStrategy where toFFI = id

export
FromFFI CountQueuingStrategy CountQueuingStrategy where fromFFI = Just

export
SafeCast CountQueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "CountQueuingStrategy"

export data ReadableByteStreamController : Type where [external]

export
ToFFI ReadableByteStreamController ReadableByteStreamController where toFFI = id

export
FromFFI ReadableByteStreamController ReadableByteStreamController where fromFFI = Just

export
SafeCast ReadableByteStreamController where
  safeCast = unsafeCastOnPrototypeName "ReadableByteStreamController"

export data ReadableStream : Type where [external]

export
ToFFI ReadableStream ReadableStream where toFFI = id

export
FromFFI ReadableStream ReadableStream where fromFFI = Just

export
SafeCast ReadableStream where
  safeCast = unsafeCastOnPrototypeName "ReadableStream"

export data ReadableStreamBYOBReader : Type where [external]

export
ToFFI ReadableStreamBYOBReader ReadableStreamBYOBReader where toFFI = id

export
FromFFI ReadableStreamBYOBReader ReadableStreamBYOBReader where fromFFI = Just

export
SafeCast ReadableStreamBYOBReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBReader"

export data ReadableStreamBYOBRequest : Type where [external]

export
ToFFI ReadableStreamBYOBRequest ReadableStreamBYOBRequest where toFFI = id

export
FromFFI ReadableStreamBYOBRequest ReadableStreamBYOBRequest where fromFFI = Just

export
SafeCast ReadableStreamBYOBRequest where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBRequest"

export data ReadableStreamDefaultController : Type where [external]

export
ToFFI ReadableStreamDefaultController ReadableStreamDefaultController where toFFI = id

export
FromFFI ReadableStreamDefaultController ReadableStreamDefaultController where fromFFI = Just

export
SafeCast ReadableStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultController"

export data ReadableStreamDefaultReader : Type where [external]

export
ToFFI ReadableStreamDefaultReader ReadableStreamDefaultReader where toFFI = id

export
FromFFI ReadableStreamDefaultReader ReadableStreamDefaultReader where fromFFI = Just

export
SafeCast ReadableStreamDefaultReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultReader"

export data TransformStream : Type where [external]

export
ToFFI TransformStream TransformStream where toFFI = id

export
FromFFI TransformStream TransformStream where fromFFI = Just

export
SafeCast TransformStream where
  safeCast = unsafeCastOnPrototypeName "TransformStream"

export data TransformStreamDefaultController : Type where [external]

export
ToFFI TransformStreamDefaultController TransformStreamDefaultController where toFFI = id

export
FromFFI TransformStreamDefaultController TransformStreamDefaultController where fromFFI = Just

export
SafeCast TransformStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "TransformStreamDefaultController"

export data WritableStream : Type where [external]

export
ToFFI WritableStream WritableStream where toFFI = id

export
FromFFI WritableStream WritableStream where fromFFI = Just

export
SafeCast WritableStream where
  safeCast = unsafeCastOnPrototypeName "WritableStream"

export data WritableStreamDefaultController : Type where [external]

export
ToFFI WritableStreamDefaultController WritableStreamDefaultController where toFFI = id

export
FromFFI WritableStreamDefaultController WritableStreamDefaultController where fromFFI = Just

export
SafeCast WritableStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "WritableStreamDefaultController"

export data WritableStreamDefaultWriter : Type where [external]

export
ToFFI WritableStreamDefaultWriter WritableStreamDefaultWriter where toFFI = id

export
FromFFI WritableStreamDefaultWriter WritableStreamDefaultWriter where fromFFI = Just

export
SafeCast WritableStreamDefaultWriter where
  safeCast = unsafeCastOnPrototypeName "WritableStreamDefaultWriter"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data QueuingStrategy : Type where [external]

export
ToFFI QueuingStrategy QueuingStrategy where toFFI = id

export
FromFFI QueuingStrategy QueuingStrategy where fromFFI = Just

export data QueuingStrategyInit : Type where [external]

export
ToFFI QueuingStrategyInit QueuingStrategyInit where toFFI = id

export
FromFFI QueuingStrategyInit QueuingStrategyInit where fromFFI = Just

export data ReadableStreamBYOBReadResult : Type where [external]

export
ToFFI ReadableStreamBYOBReadResult ReadableStreamBYOBReadResult where toFFI = id

export
FromFFI ReadableStreamBYOBReadResult ReadableStreamBYOBReadResult where fromFFI = Just

export data ReadableStreamDefaultReadResult : Type where [external]

export
ToFFI ReadableStreamDefaultReadResult ReadableStreamDefaultReadResult where toFFI = id

export
FromFFI ReadableStreamDefaultReadResult ReadableStreamDefaultReadResult where fromFFI = Just

export data ReadableStreamGetReaderOptions : Type where [external]

export
ToFFI ReadableStreamGetReaderOptions ReadableStreamGetReaderOptions where toFFI = id

export
FromFFI ReadableStreamGetReaderOptions ReadableStreamGetReaderOptions where fromFFI = Just

export data ReadableStreamIteratorOptions : Type where [external]

export
ToFFI ReadableStreamIteratorOptions ReadableStreamIteratorOptions where toFFI = id

export
FromFFI ReadableStreamIteratorOptions ReadableStreamIteratorOptions where fromFFI = Just

export data ReadableWritablePair : Type where [external]

export
ToFFI ReadableWritablePair ReadableWritablePair where toFFI = id

export
FromFFI ReadableWritablePair ReadableWritablePair where fromFFI = Just

export data StreamPipeOptions : Type where [external]

export
ToFFI StreamPipeOptions StreamPipeOptions where toFFI = id

export
FromFFI StreamPipeOptions StreamPipeOptions where fromFFI = Just

export data Transformer : Type where [external]

export
ToFFI Transformer Transformer where toFFI = id

export
FromFFI Transformer Transformer where fromFFI = Just

export data UnderlyingSink : Type where [external]

export
ToFFI UnderlyingSink UnderlyingSink where toFFI = id

export
FromFFI UnderlyingSink UnderlyingSink where fromFFI = Just

export data UnderlyingSource : Type where [external]

export
ToFFI UnderlyingSource UnderlyingSource where toFFI = id

export
FromFFI UnderlyingSource UnderlyingSource where fromFFI = Just


--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data GenericTransformStream : Type where [external]

export
ToFFI GenericTransformStream GenericTransformStream where toFFI = id

export
FromFFI GenericTransformStream GenericTransformStream where fromFFI = Just

export data ReadableStreamGenericReader : Type where [external]

export
ToFFI ReadableStreamGenericReader ReadableStreamGenericReader where toFFI = id

export
FromFFI ReadableStreamGenericReader ReadableStreamGenericReader where fromFFI = Just


--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data QueuingStrategySize : Type where [external]

export
ToFFI QueuingStrategySize QueuingStrategySize where toFFI = id

export
FromFFI QueuingStrategySize QueuingStrategySize where fromFFI = Just

export data TransformerFlushCallback : Type where [external]

export
ToFFI TransformerFlushCallback TransformerFlushCallback where toFFI = id

export
FromFFI TransformerFlushCallback TransformerFlushCallback where fromFFI = Just

export data TransformerStartCallback : Type where [external]

export
ToFFI TransformerStartCallback TransformerStartCallback where toFFI = id

export
FromFFI TransformerStartCallback TransformerStartCallback where fromFFI = Just

export data TransformerTransformCallback : Type where [external]

export
ToFFI TransformerTransformCallback TransformerTransformCallback where toFFI = id

export
FromFFI TransformerTransformCallback TransformerTransformCallback where fromFFI = Just

export data UnderlyingSinkAbortCallback : Type where [external]

export
ToFFI UnderlyingSinkAbortCallback UnderlyingSinkAbortCallback where toFFI = id

export
FromFFI UnderlyingSinkAbortCallback UnderlyingSinkAbortCallback where fromFFI = Just

export data UnderlyingSinkCloseCallback : Type where [external]

export
ToFFI UnderlyingSinkCloseCallback UnderlyingSinkCloseCallback where toFFI = id

export
FromFFI UnderlyingSinkCloseCallback UnderlyingSinkCloseCallback where fromFFI = Just

export data UnderlyingSinkStartCallback : Type where [external]

export
ToFFI UnderlyingSinkStartCallback UnderlyingSinkStartCallback where toFFI = id

export
FromFFI UnderlyingSinkStartCallback UnderlyingSinkStartCallback where fromFFI = Just

export data UnderlyingSinkWriteCallback : Type where [external]

export
ToFFI UnderlyingSinkWriteCallback UnderlyingSinkWriteCallback where toFFI = id

export
FromFFI UnderlyingSinkWriteCallback UnderlyingSinkWriteCallback where fromFFI = Just

export data UnderlyingSourceCancelCallback : Type where [external]

export
ToFFI UnderlyingSourceCancelCallback UnderlyingSourceCancelCallback where toFFI = id

export
FromFFI UnderlyingSourceCancelCallback UnderlyingSourceCancelCallback where fromFFI = Just

export data UnderlyingSourcePullCallback : Type where [external]

export
ToFFI UnderlyingSourcePullCallback UnderlyingSourcePullCallback where toFFI = id

export
FromFFI UnderlyingSourcePullCallback UnderlyingSourcePullCallback where fromFFI = Just

export data UnderlyingSourceStartCallback : Type where [external]

export
ToFFI UnderlyingSourceStartCallback UnderlyingSourceStartCallback where toFFI = id

export
FromFFI UnderlyingSourceStartCallback UnderlyingSourceStartCallback where fromFFI = Just

