module Web.Types.TextTrackMode

import JS

%default total

public export
data TextTrackMode = Disabled | Hidden | Showing

export
Show TextTrackMode where
  show Disabled = "disabled"
  show Hidden = "hidden"
  show Showing = "showing"

export
Eq TextTrackMode where
  (==) = (==) `on` show

export
Ord TextTrackMode where
  compare = compare `on` show

export
read : String -> Maybe TextTrackMode
read "disabled" = Just Disabled
read "hidden" = Just Hidden
read "showing" = Just Showing
read _ = Nothing

export
ToFFI TextTrackMode String where
  toFFI = show

export
FromFFI TextTrackMode String where
  fromFFI = read
