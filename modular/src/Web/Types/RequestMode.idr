module Web.Types.RequestMode

import JS

%default total

public export
data RequestMode = Navigate | SameOrigin | NoCors | Cors

export
Show RequestMode where
  show Navigate = "navigate"
  show SameOrigin = "same-origin"
  show NoCors = "no-cors"
  show Cors = "cors"

export
Eq RequestMode where
  (==) = (==) `on` show

export
Ord RequestMode where
  compare = compare `on` show

export
read : String -> Maybe RequestMode
read "navigate" = Just Navigate
read "same-origin" = Just SameOrigin
read "no-cors" = Just NoCors
read "cors" = Just Cors
read _ = Nothing

export
ToFFI RequestMode String where
  toFFI = show

export
FromFFI RequestMode String where
  fromFFI = read
