module Web.Types.ScrollRestoration

import JS

%default total

public export
data ScrollRestoration = Auto | Manual

export
Show ScrollRestoration where
  show Auto = "auto"
  show Manual = "manual"

export
Eq ScrollRestoration where
  (==) = (==) `on` show

export
Ord ScrollRestoration where
  compare = compare `on` show

export
read : String -> Maybe ScrollRestoration
read "auto" = Just Auto
read "manual" = Just Manual
read _ = Nothing

export
ToFFI ScrollRestoration String where
  toFFI = show

export
FromFFI ScrollRestoration String where
  fromFFI = read
