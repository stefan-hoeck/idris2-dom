module Web.Types.MediaStreamTrackState

import JS

%default total

public export
data MediaStreamTrackState = Live | Ended

export
Show MediaStreamTrackState where
  show Live = "live"
  show Ended = "ended"

export
Eq MediaStreamTrackState where
  (==) = (==) `on` show

export
Ord MediaStreamTrackState where
  compare = compare `on` show

export
read : String -> Maybe MediaStreamTrackState
read "live" = Just Live
read "ended" = Just Ended
read _ = Nothing

export
ToFFI MediaStreamTrackState String where
  toFFI = show

export
FromFFI MediaStreamTrackState String where
  fromFFI = read
