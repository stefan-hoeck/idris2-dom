module Web.Types.MediaDeviceKind

import JS

%default total

public export
data MediaDeviceKind = Audioinput | Audiooutput | Videoinput

export
Show MediaDeviceKind where
  show Audioinput = "audioinput"
  show Audiooutput = "audiooutput"
  show Videoinput = "videoinput"

export
Eq MediaDeviceKind where
  (==) = (==) `on` show

export
Ord MediaDeviceKind where
  compare = compare `on` show

export
read : String -> Maybe MediaDeviceKind
read "audioinput" = Just Audioinput
read "audiooutput" = Just Audiooutput
read "videoinput" = Just Videoinput
read _ = Nothing

export
ToFFI MediaDeviceKind String where
  toFFI = show

export
FromFFI MediaDeviceKind String where
  fromFFI = read
