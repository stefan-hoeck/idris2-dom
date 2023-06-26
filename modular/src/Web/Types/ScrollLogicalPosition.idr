module Web.Types.ScrollLogicalPosition

import JS

%default total

public export
data ScrollLogicalPosition = Start | Center | End | Nearest

export
Show ScrollLogicalPosition where
  show Start = "start"
  show Center = "center"
  show End = "end"
  show Nearest = "nearest"

export
Eq ScrollLogicalPosition where
  (==) = (==) `on` show

export
Ord ScrollLogicalPosition where
  compare = compare `on` show

export
read : String -> Maybe ScrollLogicalPosition
read "start" = Just Start
read "center" = Just Center
read "end" = Just End
read "nearest" = Just Nearest
read _ = Nothing

export
ToFFI ScrollLogicalPosition String where
  toFFI = show

export
FromFFI ScrollLogicalPosition String where
  fromFFI = read
