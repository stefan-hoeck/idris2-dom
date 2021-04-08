module Web.Internal.StreamsTypes
 
import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace ReadableStreamReaderMode
  
  public export
  data ReadableStreamReaderMode = Byob

  public export
  Show ReadableStreamReaderMode where
    show Byob = "byob"

  public export
  Eq ReadableStreamReaderMode where
    (==) = (==) `on` show

  public export
  Ord ReadableStreamReaderMode where
    compare = compare `on` show

  public export
  read : String -> Maybe ReadableStreamReaderMode
  read "byob" = Just Byob
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ReadableStreamReaderMode.read s)}
             -> ReadableStreamReaderMode
  fromString s = fromJust $ read s

namespace ReadableStreamType
  
  public export
  data ReadableStreamType = Bytes

  public export
  Show ReadableStreamType where
    show Bytes = "bytes"

  public export
  Eq ReadableStreamType where
    (==) = (==) `on` show

  public export
  Ord ReadableStreamType where
    compare = compare `on` show

  public export
  read : String -> Maybe ReadableStreamType
  read "bytes" = Just Bytes
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ReadableStreamType.read s)}
             -> ReadableStreamType
  fromString s = fromJust $ read s

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data ByteLengthQueuingStrategy : Type where [external]

export
SafeCast ByteLengthQueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "ByteLengthQueuingStrategy"

export data CountQueuingStrategy : Type where [external]

export
SafeCast CountQueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "CountQueuingStrategy"

export data ReadableByteStreamController : Type where [external]

export
SafeCast ReadableByteStreamController where
  safeCast = unsafeCastOnPrototypeName "ReadableByteStreamController"

export data ReadableStream : Type where [external]

export
SafeCast ReadableStream where
  safeCast = unsafeCastOnPrototypeName "ReadableStream"

export data ReadableStreamBYOBReader : Type where [external]

export
SafeCast ReadableStreamBYOBReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBReader"

export data ReadableStreamBYOBRequest : Type where [external]

export
SafeCast ReadableStreamBYOBRequest where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBRequest"

export data ReadableStreamDefaultController : Type where [external]

export
SafeCast ReadableStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultController"

export data ReadableStreamDefaultReader : Type where [external]

export
SafeCast ReadableStreamDefaultReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultReader"

export data TransformStream : Type where [external]

export
SafeCast TransformStream where
  safeCast = unsafeCastOnPrototypeName "TransformStream"

export data TransformStreamDefaultController : Type where [external]

export
SafeCast TransformStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "TransformStreamDefaultController"

export data WritableStream : Type where [external]

export
SafeCast WritableStream where
  safeCast = unsafeCastOnPrototypeName "WritableStream"

export data WritableStreamDefaultController : Type where [external]

export
SafeCast WritableStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "WritableStreamDefaultController"

export data WritableStreamDefaultWriter : Type where [external]

export
SafeCast WritableStreamDefaultWriter where
  safeCast = unsafeCastOnPrototypeName "WritableStreamDefaultWriter"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data QueuingStrategy : Type where [external]

export
SafeCast QueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "QueuingStrategy"

export data QueuingStrategyInit : Type where [external]

export
SafeCast QueuingStrategyInit where
  safeCast = unsafeCastOnPrototypeName "QueuingStrategyInit"

export data ReadableStreamBYOBReadResult : Type where [external]

export
SafeCast ReadableStreamBYOBReadResult where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBReadResult"

export data ReadableStreamDefaultReadResult : Type where [external]

export
SafeCast ReadableStreamDefaultReadResult where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultReadResult"

export data ReadableStreamGetReaderOptions : Type where [external]

export
SafeCast ReadableStreamGetReaderOptions where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamGetReaderOptions"

export data ReadableStreamIteratorOptions : Type where [external]

export
SafeCast ReadableStreamIteratorOptions where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamIteratorOptions"

export data ReadableWritablePair : Type where [external]

export
SafeCast ReadableWritablePair where
  safeCast = unsafeCastOnPrototypeName "ReadableWritablePair"

export data StreamPipeOptions : Type where [external]

export
SafeCast StreamPipeOptions where
  safeCast = unsafeCastOnPrototypeName "StreamPipeOptions"

export data Transformer : Type where [external]

export
SafeCast Transformer where
  safeCast = unsafeCastOnPrototypeName "Transformer"

export data UnderlyingSink : Type where [external]

export
SafeCast UnderlyingSink where
  safeCast = unsafeCastOnPrototypeName "UnderlyingSink"

export data UnderlyingSource : Type where [external]

export
SafeCast UnderlyingSource where
  safeCast = unsafeCastOnPrototypeName "UnderlyingSource"

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data GenericTransformStream : Type where [external]

export data ReadableStreamGenericReader : Type where [external]

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data QueuingStrategySize : Type where [external]

export data TransformerFlushCallback : Type where [external]

export data TransformerStartCallback : Type where [external]

export data TransformerTransformCallback : Type where [external]

export data UnderlyingSinkAbortCallback : Type where [external]

export data UnderlyingSinkCloseCallback : Type where [external]

export data UnderlyingSinkStartCallback : Type where [external]

export data UnderlyingSinkWriteCallback : Type where [external]

export data UnderlyingSourceCancelCallback : Type where [external]

export data UnderlyingSourcePullCallback : Type where [external]

export data UnderlyingSourceStartCallback : Type where [external]