module Web.Types.SelectionMode

import JS

%default total

public export
data SelectionMode = Select | Start | End | Preserve

export
Show SelectionMode where
  show Select = "select"
  show Start = "start"
  show End = "end"
  show Preserve = "preserve"

export
Eq SelectionMode where
  (==) = (==) `on` show

export
Ord SelectionMode where
  compare = compare `on` show

export
read : String -> Maybe SelectionMode
read "select" = Just Select
read "start" = Just Start
read "end" = Just End
read "preserve" = Just Preserve
read _ = Nothing

export
ToFFI SelectionMode String where
  toFFI = show

export
FromFFI SelectionMode String where
  fromFFI = read
