module Web.Types.VideoFacingModeEnum

import JS

%default total

public export
data VideoFacingModeEnum = User | Environment | Left | Right

export
Show VideoFacingModeEnum where
  show User = "user"
  show Environment = "environment"
  show Left = "left"
  show Right = "right"

export
Eq VideoFacingModeEnum where
  (==) = (==) `on` show

export
Ord VideoFacingModeEnum where
  compare = compare `on` show

export
read : String -> Maybe VideoFacingModeEnum
read "user" = Just User
read "environment" = Just Environment
read "left" = Just Left
read "right" = Just Right
read _ = Nothing

export
ToFFI VideoFacingModeEnum String where
  toFFI = show

export
FromFFI VideoFacingModeEnum String where
  fromFFI = read
