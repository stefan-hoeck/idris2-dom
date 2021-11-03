module Web.Internal.XhrTypes

import JS

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

  export
  ToFFI XMLHttpRequestResponseType String where
    toFFI = show

  export
  FromFFI XMLHttpRequestResponseType String where
    fromFFI = read


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data FormData : Type where [external]

export
ToFFI FormData FormData where toFFI = id

export
FromFFI FormData FormData where fromFFI = Just

export
SafeCast FormData where
  safeCast = unsafeCastOnPrototypeName "FormData"

export data ProgressEvent : Type where [external]

export
ToFFI ProgressEvent ProgressEvent where toFFI = id

export
FromFFI ProgressEvent ProgressEvent where fromFFI = Just

export
SafeCast ProgressEvent where
  safeCast = unsafeCastOnPrototypeName "ProgressEvent"

export data XMLHttpRequest : Type where [external]

export
ToFFI XMLHttpRequest XMLHttpRequest where toFFI = id

export
FromFFI XMLHttpRequest XMLHttpRequest where fromFFI = Just

export
SafeCast XMLHttpRequest where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequest"

export data XMLHttpRequestEventTarget : Type where [external]

export
ToFFI XMLHttpRequestEventTarget XMLHttpRequestEventTarget where toFFI = id

export
FromFFI XMLHttpRequestEventTarget XMLHttpRequestEventTarget where fromFFI = Just

export
SafeCast XMLHttpRequestEventTarget where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequestEventTarget"

export data XMLHttpRequestUpload : Type where [external]

export
ToFFI XMLHttpRequestUpload XMLHttpRequestUpload where toFFI = id

export
FromFFI XMLHttpRequestUpload XMLHttpRequestUpload where fromFFI = Just

export
SafeCast XMLHttpRequestUpload where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequestUpload"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data ProgressEventInit : Type where [external]

export
ToFFI ProgressEventInit ProgressEventInit where toFFI = id

export
FromFFI ProgressEventInit ProgressEventInit where fromFFI = Just



