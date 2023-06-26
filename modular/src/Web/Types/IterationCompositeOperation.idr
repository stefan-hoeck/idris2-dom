module Web.Types.IterationCompositeOperation

import JS

%default total

public export
data IterationCompositeOperation = Replace | Accumulate

export
Show IterationCompositeOperation where
  show Replace = "replace"
  show Accumulate = "accumulate"

export
Eq IterationCompositeOperation where
  (==) = (==) `on` show

export
Ord IterationCompositeOperation where
  compare = compare `on` show

export
read : String -> Maybe IterationCompositeOperation
read "replace" = Just Replace
read "accumulate" = Just Accumulate
read _ = Nothing

export
ToFFI IterationCompositeOperation String where
  toFFI = show

export
FromFFI IterationCompositeOperation String where
  fromFFI = read
