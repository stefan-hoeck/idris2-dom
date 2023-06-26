module Web.Types.ResponseType

import JS

%default total

public export
data ResponseType = Basic | Cors | Default | Error | Opaque | Opaqueredirect

export
Show ResponseType where
  show Basic = "basic"
  show Cors = "cors"
  show Default = "default"
  show Error = "error"
  show Opaque = "opaque"
  show Opaqueredirect = "opaqueredirect"

export
Eq ResponseType where
  (==) = (==) `on` show

export
Ord ResponseType where
  compare = compare `on` show

export
read : String -> Maybe ResponseType
read "basic" = Just Basic
read "cors" = Just Cors
read "default" = Just Default
read "error" = Just Error
read "opaque" = Just Opaque
read "opaqueredirect" = Just Opaqueredirect
read _ = Nothing

export
ToFFI ResponseType String where
  toFFI = show

export
FromFFI ResponseType String where
  fromFFI = read
