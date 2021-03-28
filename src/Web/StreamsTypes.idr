module Web.StreamsTypes
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

  export
  ToJS ReadableStreamReaderMode where
    toJS = toJS . show

  export
  FromJS ReadableStreamReaderMode where
    fromJS ptr = fromJS ptr >>= read

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

  export
  ToJS ReadableStreamType where
    toJS = toJS . show

  export
  FromJS ReadableStreamType where
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data ByteLengthQueuingStrategy : Type where [external]

export
SafeCast ByteLengthQueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "ByteLengthQueuingStrategy"

export ToJS ByteLengthQueuingStrategy where toJS = believe_me
export FromJS ByteLengthQueuingStrategy where fromJS = safeCast
export data CountQueuingStrategy : Type where [external]

export
SafeCast CountQueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "CountQueuingStrategy"

export ToJS CountQueuingStrategy where toJS = believe_me
export FromJS CountQueuingStrategy where fromJS = safeCast
export data ReadableByteStreamController : Type where [external]

export
SafeCast ReadableByteStreamController where
  safeCast = unsafeCastOnPrototypeName "ReadableByteStreamController"

export ToJS ReadableByteStreamController where toJS = believe_me
export FromJS ReadableByteStreamController where fromJS = safeCast
export data ReadableStream : Type where [external]

export
SafeCast ReadableStream where
  safeCast = unsafeCastOnPrototypeName "ReadableStream"

export ToJS ReadableStream where toJS = believe_me
export FromJS ReadableStream where fromJS = safeCast
export data ReadableStreamBYOBReader : Type where [external]

export
SafeCast ReadableStreamBYOBReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBReader"

export ToJS ReadableStreamBYOBReader where toJS = believe_me
export FromJS ReadableStreamBYOBReader where fromJS = safeCast
export data ReadableStreamBYOBRequest : Type where [external]

export
SafeCast ReadableStreamBYOBRequest where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBRequest"

export ToJS ReadableStreamBYOBRequest where toJS = believe_me
export FromJS ReadableStreamBYOBRequest where fromJS = safeCast
export data ReadableStreamDefaultController : Type where [external]

export
SafeCast ReadableStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultController"

export ToJS ReadableStreamDefaultController where toJS = believe_me
export FromJS ReadableStreamDefaultController where fromJS = safeCast
export data ReadableStreamDefaultReader : Type where [external]

export
SafeCast ReadableStreamDefaultReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultReader"

export ToJS ReadableStreamDefaultReader where toJS = believe_me
export FromJS ReadableStreamDefaultReader where fromJS = safeCast
export data TransformStream : Type where [external]

export
SafeCast TransformStream where
  safeCast = unsafeCastOnPrototypeName "TransformStream"

export ToJS TransformStream where toJS = believe_me
export FromJS TransformStream where fromJS = safeCast
export data TransformStreamDefaultController : Type where [external]

export
SafeCast TransformStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "TransformStreamDefaultController"

export ToJS TransformStreamDefaultController where toJS = believe_me
export FromJS TransformStreamDefaultController where fromJS = safeCast
export data WritableStream : Type where [external]

export
SafeCast WritableStream where
  safeCast = unsafeCastOnPrototypeName "WritableStream"

export ToJS WritableStream where toJS = believe_me
export FromJS WritableStream where fromJS = safeCast
export data WritableStreamDefaultController : Type where [external]

export
SafeCast WritableStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "WritableStreamDefaultController"

export ToJS WritableStreamDefaultController where toJS = believe_me
export FromJS WritableStreamDefaultController where fromJS = safeCast
export data WritableStreamDefaultWriter : Type where [external]

export
SafeCast WritableStreamDefaultWriter where
  safeCast = unsafeCastOnPrototypeName "WritableStreamDefaultWriter"

export ToJS WritableStreamDefaultWriter where toJS = believe_me
export FromJS WritableStreamDefaultWriter where fromJS = safeCast

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------
export data GenericTransformStream : Type where [external]

export
SafeCast GenericTransformStream where
  safeCast = unsafeCastOnPrototypeName "GenericTransformStream"

export ToJS GenericTransformStream where toJS = believe_me
export FromJS GenericTransformStream where fromJS = safeCast
export data ReadableStreamGenericReader : Type where [external]

export
SafeCast ReadableStreamGenericReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamGenericReader"

export ToJS ReadableStreamGenericReader where toJS = believe_me
export FromJS ReadableStreamGenericReader where fromJS = safeCast

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export data QueuingStrategy : Type where [external]

export
SafeCast QueuingStrategy where
  safeCast = unsafeCastOnPrototypeName "QueuingStrategy"

export ToJS QueuingStrategy where toJS = believe_me
export FromJS QueuingStrategy where fromJS = safeCast
export data QueuingStrategyInit : Type where [external]

export
SafeCast QueuingStrategyInit where
  safeCast = unsafeCastOnPrototypeName "QueuingStrategyInit"

export ToJS QueuingStrategyInit where toJS = believe_me
export FromJS QueuingStrategyInit where fromJS = safeCast
export data ReadableStreamBYOBReadResult : Type where [external]

export
SafeCast ReadableStreamBYOBReadResult where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBReadResult"

export ToJS ReadableStreamBYOBReadResult where toJS = believe_me
export FromJS ReadableStreamBYOBReadResult where fromJS = safeCast
export data ReadableStreamDefaultReadResult : Type where [external]

export
SafeCast ReadableStreamDefaultReadResult where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultReadResult"

export ToJS ReadableStreamDefaultReadResult where toJS = believe_me
export FromJS ReadableStreamDefaultReadResult where fromJS = safeCast
export data ReadableStreamGetReaderOptions : Type where [external]

export
SafeCast ReadableStreamGetReaderOptions where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamGetReaderOptions"

export ToJS ReadableStreamGetReaderOptions where toJS = believe_me
export FromJS ReadableStreamGetReaderOptions where fromJS = safeCast
export data ReadableStreamIteratorOptions : Type where [external]

export
SafeCast ReadableStreamIteratorOptions where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamIteratorOptions"

export ToJS ReadableStreamIteratorOptions where toJS = believe_me
export FromJS ReadableStreamIteratorOptions where fromJS = safeCast
export data ReadableWritablePair : Type where [external]

export
SafeCast ReadableWritablePair where
  safeCast = unsafeCastOnPrototypeName "ReadableWritablePair"

export ToJS ReadableWritablePair where toJS = believe_me
export FromJS ReadableWritablePair where fromJS = safeCast
export data StreamPipeOptions : Type where [external]

export
SafeCast StreamPipeOptions where
  safeCast = unsafeCastOnPrototypeName "StreamPipeOptions"

export ToJS StreamPipeOptions where toJS = believe_me
export FromJS StreamPipeOptions where fromJS = safeCast
export data Transformer : Type where [external]

export
SafeCast Transformer where
  safeCast = unsafeCastOnPrototypeName "Transformer"

export ToJS Transformer where toJS = believe_me
export FromJS Transformer where fromJS = safeCast
export data UnderlyingSink : Type where [external]

export
SafeCast UnderlyingSink where
  safeCast = unsafeCastOnPrototypeName "UnderlyingSink"

export ToJS UnderlyingSink where toJS = believe_me
export FromJS UnderlyingSink where fromJS = safeCast
export data UnderlyingSource : Type where [external]

export
SafeCast UnderlyingSource where
  safeCast = unsafeCastOnPrototypeName "UnderlyingSource"

export ToJS UnderlyingSource where toJS = believe_me
export FromJS UnderlyingSource where fromJS = safeCast