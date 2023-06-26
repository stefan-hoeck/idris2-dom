module Web.Types.CompositeOperation

import JS

%default total

public export
data CompositeOperation = Replace | Add | Accumulate

export
Show CompositeOperation where
  show Replace = "replace"
  show Add = "add"
  show Accumulate = "accumulate"

export
Eq CompositeOperation where
  (==) = (==) `on` show

export
Ord CompositeOperation where
  compare = compare `on` show

export
read : String -> Maybe CompositeOperation
read "replace" = Just Replace
read "add" = Just Add
read "accumulate" = Just Accumulate
read _ = Nothing

export
ToFFI CompositeOperation String where
  toFFI = show

export
FromFFI CompositeOperation String where
  fromFFI = read
