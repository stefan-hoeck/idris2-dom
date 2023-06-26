module Web.Types.XMLHttpRequestResponseType

import JS

%default total

public export
data XMLHttpRequestResponseType =
    Empty
  | Arraybuffer
  | Blob
  | Document
  | Json
  | Text

export
Show XMLHttpRequestResponseType where
  show Empty = ""
  show Arraybuffer = "arraybuffer"
  show Blob = "blob"
  show Document = "document"
  show Json = "json"
  show Text = "text"

export
Eq XMLHttpRequestResponseType where
  (==) = (==) `on` show

export
Ord XMLHttpRequestResponseType where
  compare = compare `on` show

export
read : String -> Maybe XMLHttpRequestResponseType
read "" = Just Empty
read "arraybuffer" = Just Arraybuffer
read "blob" = Just Blob
read "document" = Just Document
read "json" = Just Json
read "text" = Just Text
read _ = Nothing

export
ToFFI XMLHttpRequestResponseType String where
  toFFI = show

export
FromFFI XMLHttpRequestResponseType String where
  fromFFI = read
