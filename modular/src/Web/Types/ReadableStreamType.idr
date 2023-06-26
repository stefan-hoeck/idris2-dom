module Web.Types.ReadableStreamType

import JS

%default total

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
