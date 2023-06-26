module Web.Types.AppendMode

import JS

%default total

public export
data AppendMode = Segments | Sequence

export
Show AppendMode where
  show Segments = "segments"
  show Sequence = "sequence"

export
Eq AppendMode where
  (==) = (==) `on` show

export
Ord AppendMode where
  compare = compare `on` show

export
read : String -> Maybe AppendMode
read "segments" = Just Segments
read "sequence" = Just Sequence
read _ = Nothing

export
ToFFI AppendMode String where
  toFFI = show

export
FromFFI AppendMode String where
  fromFFI = read
