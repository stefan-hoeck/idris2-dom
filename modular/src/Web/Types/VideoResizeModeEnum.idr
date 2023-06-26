module Web.Types.VideoResizeModeEnum

import JS

%default total

public export
data VideoResizeModeEnum = None | CropAndScale

export
Show VideoResizeModeEnum where
  show None = "none"
  show CropAndScale = "crop-and-scale"

export
Eq VideoResizeModeEnum where
  (==) = (==) `on` show

export
Ord VideoResizeModeEnum where
  compare = compare `on` show

export
read : String -> Maybe VideoResizeModeEnum
read "none" = Just None
read "crop-and-scale" = Just CropAndScale
read _ = Nothing

export
ToFFI VideoResizeModeEnum String where
  toFFI = show

export
FromFFI VideoResizeModeEnum String where
  fromFFI = read
