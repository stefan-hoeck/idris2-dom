module Web.Types.ColorSpaceConversion

import JS

%default total

public export
data ColorSpaceConversion = None | Default

export
Show ColorSpaceConversion where
  show None = "none"
  show Default = "default"

export
Eq ColorSpaceConversion where
  (==) = (==) `on` show

export
Ord ColorSpaceConversion where
  compare = compare `on` show

export
read : String -> Maybe ColorSpaceConversion
read "none" = Just None
read "default" = Just Default
read _ = Nothing

export
ToFFI ColorSpaceConversion String where
  toFFI = show

export
FromFFI ColorSpaceConversion String where
  fromFFI = read
