module Web.StreamsTypes

import Data.Maybe
import JS.Util

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
    fromJS = fromMaybe Byob . read . fromJS

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
    fromJS = fromMaybe Bytes . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data ByteLengthQueuingStrategy : Type where [external]

export
ToJS ByteLengthQueuingStrategy where
  toJS = believe_me

export
FromJS ByteLengthQueuingStrategy where
  fromJS = believe_me

export
data CountQueuingStrategy : Type where [external]

export
ToJS CountQueuingStrategy where
  toJS = believe_me

export
FromJS CountQueuingStrategy where
  fromJS = believe_me

export
data ReadableByteStreamController : Type where [external]

export
ToJS ReadableByteStreamController where
  toJS = believe_me

export
FromJS ReadableByteStreamController where
  fromJS = believe_me

export
data ReadableStream : Type where [external]

export
ToJS ReadableStream where
  toJS = believe_me

export
FromJS ReadableStream where
  fromJS = believe_me

export
data ReadableStreamBYOBReader : Type where [external]

export
ToJS ReadableStreamBYOBReader where
  toJS = believe_me

export
FromJS ReadableStreamBYOBReader where
  fromJS = believe_me

export
data ReadableStreamBYOBRequest : Type where [external]

export
ToJS ReadableStreamBYOBRequest where
  toJS = believe_me

export
FromJS ReadableStreamBYOBRequest where
  fromJS = believe_me

export
data ReadableStreamDefaultController : Type where [external]

export
ToJS ReadableStreamDefaultController where
  toJS = believe_me

export
FromJS ReadableStreamDefaultController where
  fromJS = believe_me

export
data ReadableStreamDefaultReader : Type where [external]

export
ToJS ReadableStreamDefaultReader where
  toJS = believe_me

export
FromJS ReadableStreamDefaultReader where
  fromJS = believe_me

export
data TransformStream : Type where [external]

export
ToJS TransformStream where
  toJS = believe_me

export
FromJS TransformStream where
  fromJS = believe_me

export
data TransformStreamDefaultController : Type where [external]

export
ToJS TransformStreamDefaultController where
  toJS = believe_me

export
FromJS TransformStreamDefaultController where
  fromJS = believe_me

export
data WritableStream : Type where [external]

export
ToJS WritableStream where
  toJS = believe_me

export
FromJS WritableStream where
  fromJS = believe_me

export
data WritableStreamDefaultController : Type where [external]

export
ToJS WritableStreamDefaultController where
  toJS = believe_me

export
FromJS WritableStreamDefaultController where
  fromJS = believe_me

export
data WritableStreamDefaultWriter : Type where [external]

export
ToJS WritableStreamDefaultWriter where
  toJS = believe_me

export
FromJS WritableStreamDefaultWriter where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export
data GenericTransformStream : Type where [external]

export
ToJS GenericTransformStream where
  toJS = believe_me

export
FromJS GenericTransformStream where
  fromJS = believe_me

export
data ReadableStreamGenericReader : Type where [external]

export
ToJS ReadableStreamGenericReader where
  toJS = believe_me

export
FromJS ReadableStreamGenericReader where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data QueuingStrategy : Type where [external]

export
ToJS QueuingStrategy where
  toJS = believe_me

export
FromJS QueuingStrategy where
  fromJS = believe_me

export
data QueuingStrategyInit : Type where [external]

export
ToJS QueuingStrategyInit where
  toJS = believe_me

export
FromJS QueuingStrategyInit where
  fromJS = believe_me

export
data ReadableStreamBYOBReadResult : Type where [external]

export
ToJS ReadableStreamBYOBReadResult where
  toJS = believe_me

export
FromJS ReadableStreamBYOBReadResult where
  fromJS = believe_me

export
data ReadableStreamDefaultReadResult : Type where [external]

export
ToJS ReadableStreamDefaultReadResult where
  toJS = believe_me

export
FromJS ReadableStreamDefaultReadResult where
  fromJS = believe_me

export
data ReadableStreamGetReaderOptions : Type where [external]

export
ToJS ReadableStreamGetReaderOptions where
  toJS = believe_me

export
FromJS ReadableStreamGetReaderOptions where
  fromJS = believe_me

export
data ReadableStreamIteratorOptions : Type where [external]

export
ToJS ReadableStreamIteratorOptions where
  toJS = believe_me

export
FromJS ReadableStreamIteratorOptions where
  fromJS = believe_me

export
data ReadableWritablePair : Type where [external]

export
ToJS ReadableWritablePair where
  toJS = believe_me

export
FromJS ReadableWritablePair where
  fromJS = believe_me

export
data StreamPipeOptions : Type where [external]

export
ToJS StreamPipeOptions where
  toJS = believe_me

export
FromJS StreamPipeOptions where
  fromJS = believe_me

export
data Transformer : Type where [external]

export
ToJS Transformer where
  toJS = believe_me

export
FromJS Transformer where
  fromJS = believe_me

export
data UnderlyingSink : Type where [external]

export
ToJS UnderlyingSink where
  toJS = believe_me

export
FromJS UnderlyingSink where
  fromJS = believe_me

export
data UnderlyingSource : Type where [external]

export
ToJS UnderlyingSource where
  toJS = believe_me

export
FromJS UnderlyingSource where
  fromJS = believe_me