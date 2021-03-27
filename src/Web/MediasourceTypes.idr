module Web.MediasourceTypes
import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace ReadyState
  
  public export
  data ReadyState = Closed | Open | Ended

  public export
  Show ReadyState where
    show Closed = "closed"
    show Open = "open"
    show Ended = "ended"

  public export
  Eq ReadyState where
    (==) = (==) `on` show

  public export
  Ord ReadyState where
    compare = compare `on` show

  public export
  read : String -> Maybe ReadyState
  read "closed" = Just Closed
  read "open" = Just Open
  read "ended" = Just Ended
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ReadyState.read s)}
             -> ReadyState
  fromString s = fromJust $ read s

  export
  ToJS ReadyState where
    toJS = toJS . show

  export
  FromJS ReadyState where
    fromJS = fromMaybe Closed . read . fromJS

namespace EndOfStreamError
  
  public export
  data EndOfStreamError = Network | Decode

  public export
  Show EndOfStreamError where
    show Network = "network"
    show Decode = "decode"

  public export
  Eq EndOfStreamError where
    (==) = (==) `on` show

  public export
  Ord EndOfStreamError where
    compare = compare `on` show

  public export
  read : String -> Maybe EndOfStreamError
  read "network" = Just Network
  read "decode" = Just Decode
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (EndOfStreamError.read s)}
             -> EndOfStreamError
  fromString s = fromJust $ read s

  export
  ToJS EndOfStreamError where
    toJS = toJS . show

  export
  FromJS EndOfStreamError where
    fromJS = fromMaybe Network . read . fromJS

namespace AppendMode
  
  public export
  data AppendMode = Segments | Sequence

  public export
  Show AppendMode where
    show Segments = "segments"
    show Sequence = "sequence"

  public export
  Eq AppendMode where
    (==) = (==) `on` show

  public export
  Ord AppendMode where
    compare = compare `on` show

  public export
  read : String -> Maybe AppendMode
  read "segments" = Just Segments
  read "sequence" = Just Sequence
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (AppendMode.read s)}
             -> AppendMode
  fromString s = fromJust $ read s

  export
  ToJS AppendMode where
    toJS = toJS . show

  export
  FromJS AppendMode where
    fromJS = fromMaybe Segments . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export
data MediaSource  : Type where [external]

export
ToJS MediaSource where
  toJS = believe_me

export
FromJS MediaSource where
  fromJS = believe_me
export
data SourceBuffer  : Type where [external]

export
ToJS SourceBuffer where
  toJS = believe_me

export
FromJS SourceBuffer where
  fromJS = believe_me
export
data SourceBufferList  : Type where [external]

export
ToJS SourceBufferList where
  toJS = believe_me

export
FromJS SourceBufferList where
  fromJS = believe_me

