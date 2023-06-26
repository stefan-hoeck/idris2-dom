module Web.Types.CompositeOperationOrAuto

import JS

%default total

public export
data CompositeOperationOrAuto = Replace | Add | Accumulate | Auto

export
Show CompositeOperationOrAuto where
  show Replace = "replace"
  show Add = "add"
  show Accumulate = "accumulate"
  show Auto = "auto"

export
Eq CompositeOperationOrAuto where
  (==) = (==) `on` show

export
Ord CompositeOperationOrAuto where
  compare = compare `on` show

export
read : String -> Maybe CompositeOperationOrAuto
read "replace" = Just Replace
read "add" = Just Add
read "accumulate" = Just Accumulate
read "auto" = Just Auto
read _ = Nothing

export
ToFFI CompositeOperationOrAuto String where
  toFFI = show

export
FromFFI CompositeOperationOrAuto String where
  fromFFI = read
