module Web.Types.ReadableStreamReaderMode

import JS

%default total

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
