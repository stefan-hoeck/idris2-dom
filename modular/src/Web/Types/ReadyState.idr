module Web.Types.ReadyState

import JS

%default total

public export
data ReadyState = Closed | Open | Ended

export
Show ReadyState where
  show Closed = "closed"
  show Open = "open"
  show Ended = "ended"

export
Eq ReadyState where
  (==) = (==) `on` show

export
Ord ReadyState where
  compare = compare `on` show

export
read : String -> Maybe ReadyState
read "closed" = Just Closed
read "open" = Just Open
read "ended" = Just Ended
read _ = Nothing

export
ToFFI ReadyState String where
  toFFI = show

export
FromFFI ReadyState String where
  fromFFI = read
