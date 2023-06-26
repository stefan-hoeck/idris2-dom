module Web.Types.FillMode

import JS

%default total

public export
data FillMode = None | Forwards | Backwards | Both | Auto

export
Show FillMode where
  show None = "none"
  show Forwards = "forwards"
  show Backwards = "backwards"
  show Both = "both"
  show Auto = "auto"

export
Eq FillMode where
  (==) = (==) `on` show

export
Ord FillMode where
  compare = compare `on` show

export
read : String -> Maybe FillMode
read "none" = Just None
read "forwards" = Just Forwards
read "backwards" = Just Backwards
read "both" = Just Both
read "auto" = Just Auto
read _ = Nothing

export
ToFFI FillMode String where
  toFFI = show

export
FromFFI FillMode String where
  fromFFI = read
