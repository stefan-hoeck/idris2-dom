module Web.Types.PremultiplyAlpha

import JS

%default total

public export
data PremultiplyAlpha = None | Premultiply | Default

export
Show PremultiplyAlpha where
  show None = "none"
  show Premultiply = "premultiply"
  show Default = "default"

export
Eq PremultiplyAlpha where
  (==) = (==) `on` show

export
Ord PremultiplyAlpha where
  compare = compare `on` show

export
read : String -> Maybe PremultiplyAlpha
read "none" = Just None
read "premultiply" = Just Premultiply
read "default" = Just Default
read _ = Nothing

export
ToFFI PremultiplyAlpha String where
  toFFI = show

export
FromFFI PremultiplyAlpha String where
  fromFFI = read
