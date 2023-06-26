module Web.Types.DocumentReadyState

import JS

%default total

public export
data DocumentReadyState = Loading | Interactive | Complete

export
Show DocumentReadyState where
  show Loading = "loading"
  show Interactive = "interactive"
  show Complete = "complete"

export
Eq DocumentReadyState where
  (==) = (==) `on` show

export
Ord DocumentReadyState where
  compare = compare `on` show

export
read : String -> Maybe DocumentReadyState
read "loading" = Just Loading
read "interactive" = Just Interactive
read "complete" = Just Complete
read _ = Nothing

export
ToFFI DocumentReadyState String where
  toFFI = show

export
FromFFI DocumentReadyState String where
  fromFFI = read
