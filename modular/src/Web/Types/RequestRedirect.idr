module Web.Types.RequestRedirect

import JS

%default total

public export
data RequestRedirect = Follow | Error | Manual

export
Show RequestRedirect where
  show Follow = "follow"
  show Error = "error"
  show Manual = "manual"

export
Eq RequestRedirect where
  (==) = (==) `on` show

export
Ord RequestRedirect where
  compare = compare `on` show

export
read : String -> Maybe RequestRedirect
read "follow" = Just Follow
read "error" = Just Error
read "manual" = Just Manual
read _ = Nothing

export
ToFFI RequestRedirect String where
  toFFI = show

export
FromFFI RequestRedirect String where
  fromFFI = read
