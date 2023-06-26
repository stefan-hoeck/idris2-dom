module Web.Types.PermissionState

import JS

%default total

public export
data PermissionState = Granted | Denied | Prompt

export
Show PermissionState where
  show Granted = "granted"
  show Denied = "denied"
  show Prompt = "prompt"

export
Eq PermissionState where
  (==) = (==) `on` show

export
Ord PermissionState where
  compare = compare `on` show

export
read : String -> Maybe PermissionState
read "granted" = Just Granted
read "denied" = Just Denied
read "prompt" = Just Prompt
read _ = Nothing

export
ToFFI PermissionState String where
  toFFI = show

export
FromFFI PermissionState String where
  fromFFI = read
