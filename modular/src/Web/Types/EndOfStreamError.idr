module Web.Types.EndOfStreamError

import JS

%default total

public export
data EndOfStreamError = Network | Decode

export
Show EndOfStreamError where
  show Network = "network"
  show Decode = "decode"

export
Eq EndOfStreamError where
  (==) = (==) `on` show

export
Ord EndOfStreamError where
  compare = compare `on` show

export
read : String -> Maybe EndOfStreamError
read "network" = Just Network
read "decode" = Just Decode
read _ = Nothing

export
ToFFI EndOfStreamError String where
  toFFI = show

export
FromFFI EndOfStreamError String where
  fromFFI = read
