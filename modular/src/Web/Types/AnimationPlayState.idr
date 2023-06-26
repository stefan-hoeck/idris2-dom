module Web.Types.AnimationPlayState

import JS

%default total

public export
data AnimationPlayState = Idle | Running | Paused | Finished

export
Show AnimationPlayState where
  show Idle = "idle"
  show Running = "running"
  show Paused = "paused"
  show Finished = "finished"

export
Eq AnimationPlayState where
  (==) = (==) `on` show

export
Ord AnimationPlayState where
  compare = compare `on` show

export
read : String -> Maybe AnimationPlayState
read "idle" = Just Idle
read "running" = Just Running
read "paused" = Just Paused
read "finished" = Just Finished
read _ = Nothing

export
ToFFI AnimationPlayState String where
  toFFI = show

export
FromFFI AnimationPlayState String where
  fromFFI = read
