module Web.Types.PlaybackDirection

import JS

%default total

public export
data PlaybackDirection = Normal | Reverse | Alternate | AlternateReverse

export
Show PlaybackDirection where
  show Normal = "normal"
  show Reverse = "reverse"
  show Alternate = "alternate"
  show AlternateReverse = "alternate-reverse"

export
Eq PlaybackDirection where
  (==) = (==) `on` show

export
Ord PlaybackDirection where
  compare = compare `on` show

export
read : String -> Maybe PlaybackDirection
read "normal" = Just Normal
read "reverse" = Just Reverse
read "alternate" = Just Alternate
read "alternate-reverse" = Just AlternateReverse
read _ = Nothing

export
ToFFI PlaybackDirection String where
  toFFI = show

export
FromFFI PlaybackDirection String where
  fromFFI = read
