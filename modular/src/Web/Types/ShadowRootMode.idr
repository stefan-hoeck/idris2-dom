module Web.Types.ShadowRootMode

import JS

%default total

public export
data ShadowRootMode = Open | Closed

export
Show ShadowRootMode where
  show Open = "open"
  show Closed = "closed"

export
Eq ShadowRootMode where
  (==) = (==) `on` show

export
Ord ShadowRootMode where
  compare = compare `on` show

export
read : String -> Maybe ShadowRootMode
read "open" = Just Open
read "closed" = Just Closed
read _ = Nothing

export
ToFFI ShadowRootMode String where
  toFFI = show

export
FromFFI ShadowRootMode String where
  fromFFI = read
