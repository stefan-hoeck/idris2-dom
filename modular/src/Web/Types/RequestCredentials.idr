module Web.Types.RequestCredentials

import JS

%default total

public export
data RequestCredentials = Omit | SameOrigin | Include

export
Show RequestCredentials where
  show Omit = "omit"
  show SameOrigin = "same-origin"
  show Include = "include"

export
Eq RequestCredentials where
  (==) = (==) `on` show

export
Ord RequestCredentials where
  compare = compare `on` show

export
read : String -> Maybe RequestCredentials
read "omit" = Just Omit
read "same-origin" = Just SameOrigin
read "include" = Just Include
read _ = Nothing

export
ToFFI RequestCredentials String where
  toFFI = show

export
FromFFI RequestCredentials String where
  fromFFI = read
