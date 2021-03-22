module JS.DOM.Raw.XhrTypes

import Data.Maybe

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace XMLHttpRequestResponseType
  
  public export
  data XMLHttpRequestResponseType = Empty
                                  | Arraybuffer
                                  | Blob
                                  | Document
                                  | Json
                                  | Text

  public export
  Show XMLHttpRequestResponseType where
    show Empty = ""
    show Arraybuffer = "arraybuffer"
    show Blob = "blob"
    show Document = "document"
    show Json = "json"
    show Text = "text"

  public export
  Eq XMLHttpRequestResponseType where
    (==) = (==) `on` show

  public export
  Ord XMLHttpRequestResponseType where
    compare = compare `on` show

  public export
  read : String -> Maybe XMLHttpRequestResponseType
  read "" = Just Empty
  read "arraybuffer" = Just Arraybuffer
  read "blob" = Just Blob
  read "document" = Just Document
  read "json" = Just Json
  read "text" = Just Text
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (XMLHttpRequestResponseType.read s)}
             -> XMLHttpRequestResponseType
  fromString s = fromJust $ read s

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data FormData : Type where [external]

export
data ProgressEvent : Type where [external]

export
data XMLHttpRequest : Type where [external]

export
data XMLHttpRequestEventTarget : Type where [external]

export
data XMLHttpRequestUpload : Type where [external]


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data ProgressEventInit : Type where [external]