module Web.XhrTypes
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
  ToJS XMLHttpRequestResponseType where
    toJS = toJS . show

  export
  FromJS XMLHttpRequestResponseType where
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data FormData : Type where [external]

export
SafeCast FormData where
  safeCast = unsafeCastOnPrototypeName "FormData"

export ToJS FormData where toJS = believe_me
export FromJS FormData where fromJS = safeCast
export data ProgressEvent : Type where [external]

export
SafeCast ProgressEvent where
  safeCast = unsafeCastOnPrototypeName "ProgressEvent"

export ToJS ProgressEvent where toJS = believe_me
export FromJS ProgressEvent where fromJS = safeCast
export data XMLHttpRequest : Type where [external]

export
SafeCast XMLHttpRequest where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequest"

export ToJS XMLHttpRequest where toJS = believe_me
export FromJS XMLHttpRequest where fromJS = safeCast
export data XMLHttpRequestEventTarget : Type where [external]

export
SafeCast XMLHttpRequestEventTarget where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequestEventTarget"

export ToJS XMLHttpRequestEventTarget where toJS = believe_me
export FromJS XMLHttpRequestEventTarget where fromJS = safeCast
export data XMLHttpRequestUpload : Type where [external]

export
SafeCast XMLHttpRequestUpload where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequestUpload"

export ToJS XMLHttpRequestUpload where toJS = believe_me
export FromJS XMLHttpRequestUpload where fromJS = safeCast


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export data ProgressEventInit : Type where [external]

export
SafeCast ProgressEventInit where
  safeCast = unsafeCastOnPrototypeName "ProgressEventInit"

export ToJS ProgressEventInit where toJS = believe_me
export FromJS ProgressEventInit where fromJS = safeCast