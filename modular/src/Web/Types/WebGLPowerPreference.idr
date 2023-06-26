module Web.Types.WebGLPowerPreference

import JS

%default total

public export
data WebGLPowerPreference = Default | LowPower | HighPerformance

export
Show WebGLPowerPreference where
  show Default = "default"
  show LowPower = "low-power"
  show HighPerformance = "high-performance"

export
Eq WebGLPowerPreference where
  (==) = (==) `on` show

export
Ord WebGLPowerPreference where
  compare = compare `on` show

export
read : String -> Maybe WebGLPowerPreference
read "default" = Just Default
read "low-power" = Just LowPower
read "high-performance" = Just HighPerformance
read _ = Nothing

export
ToFFI WebGLPowerPreference String where
  toFFI = show

export
FromFFI WebGLPowerPreference String where
  fromFFI = read
