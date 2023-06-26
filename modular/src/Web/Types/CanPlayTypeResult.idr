module Web.Types.CanPlayTypeResult

import JS

%default total

public export
data CanPlayTypeResult = Empty | Maybe | Probably

export
Show CanPlayTypeResult where
  show Empty = ""
  show Maybe = "maybe"
  show Probably = "probably"

export
Eq CanPlayTypeResult where
  (==) = (==) `on` show

export
Ord CanPlayTypeResult where
  compare = compare `on` show

export
read : String -> Maybe CanPlayTypeResult
read "" = Just Empty
read "maybe" = Just Maybe
read "probably" = Just Probably
read _ = Nothing

export
ToFFI CanPlayTypeResult String where
  toFFI = show

export
FromFFI CanPlayTypeResult String where
  fromFFI = read
