module Web.Internal.MediasourceTypes

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
  ToFFI ReadyState String where
    toFFI = show

  export
  FromFFI ReadyState String where
    fromFFI = read

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
  ToFFI EndOfStreamError String where
    toFFI = show

  export
  FromFFI EndOfStreamError String where
    fromFFI = read

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
  ToFFI AppendMode String where
    toFFI = show

  export
  FromFFI AppendMode String where
    fromFFI = read


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data MediaSource : Type where [external]

export
ToFFI MediaSource MediaSource where toFFI = id

export
FromFFI MediaSource MediaSource where fromFFI = Just

export
SafeCast MediaSource where
  safeCast = unsafeCastOnPrototypeName "MediaSource"

export data SourceBuffer : Type where [external]

export
ToFFI SourceBuffer SourceBuffer where toFFI = id

export
FromFFI SourceBuffer SourceBuffer where fromFFI = Just

export
SafeCast SourceBuffer where
  safeCast = unsafeCastOnPrototypeName "SourceBuffer"

export data SourceBufferList : Type where [external]

export
ToFFI SourceBufferList SourceBufferList where toFFI = id

export
FromFFI SourceBufferList SourceBufferList where fromFFI = Just

export
SafeCast SourceBufferList where
  safeCast = unsafeCastOnPrototypeName "SourceBufferList"




