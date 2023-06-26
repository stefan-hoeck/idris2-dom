module Web.Types.BinaryType

import JS

%default total

public export
data BinaryType = Blob | Arraybuffer

export
Show BinaryType where
  show Blob = "blob"
  show Arraybuffer = "arraybuffer"

export
Eq BinaryType where
  (==) = (==) `on` show

export
Ord BinaryType where
  compare = compare `on` show

export
read : String -> Maybe BinaryType
read "blob" = Just Blob
read "arraybuffer" = Just Arraybuffer
read _ = Nothing

export
ToFFI BinaryType String where
  toFFI = show

export
FromFFI BinaryType String where
  fromFFI = read
