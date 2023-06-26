module Web.Types.PermissionName

import JS

%default total

public export
data PermissionName =
    Geolocation
  | Notifications
  | Push
  | Midi
  | Camera
  | Microphone
  | SpeakerSelection
  | DeviceInfo
  | BackgroundFetch
  | BackgroundSync
  | Bluetooth
  | PersistentStorage
  | AmbientLightSensor
  | Accelerometer
  | Gyroscope
  | Magnetometer
  | ClipboardRead
  | ClipboardWrite
  | DisplayCapture
  | Nfc

export
Show PermissionName where
  show Geolocation = "geolocation"
  show Notifications = "notifications"
  show Push = "push"
  show Midi = "midi"
  show Camera = "camera"
  show Microphone = "microphone"
  show SpeakerSelection = "speaker-selection"
  show DeviceInfo = "device-info"
  show BackgroundFetch = "background-fetch"
  show BackgroundSync = "background-sync"
  show Bluetooth = "bluetooth"
  show PersistentStorage = "persistent-storage"
  show AmbientLightSensor = "ambient-light-sensor"
  show Accelerometer = "accelerometer"
  show Gyroscope = "gyroscope"
  show Magnetometer = "magnetometer"
  show ClipboardRead = "clipboard-read"
  show ClipboardWrite = "clipboard-write"
  show DisplayCapture = "display-capture"
  show Nfc = "nfc"

export
Eq PermissionName where
  (==) = (==) `on` show

export
Ord PermissionName where
  compare = compare `on` show

export
read : String -> Maybe PermissionName
read "geolocation" = Just Geolocation
read "notifications" = Just Notifications
read "push" = Just Push
read "midi" = Just Midi
read "camera" = Just Camera
read "microphone" = Just Microphone
read "speaker-selection" = Just SpeakerSelection
read "device-info" = Just DeviceInfo
read "background-fetch" = Just BackgroundFetch
read "background-sync" = Just BackgroundSync
read "bluetooth" = Just Bluetooth
read "persistent-storage" = Just PersistentStorage
read "ambient-light-sensor" = Just AmbientLightSensor
read "accelerometer" = Just Accelerometer
read "gyroscope" = Just Gyroscope
read "magnetometer" = Just Magnetometer
read "clipboard-read" = Just ClipboardRead
read "clipboard-write" = Just ClipboardWrite
read "display-capture" = Just DisplayCapture
read "nfc" = Just Nfc
read _ = Nothing

export
ToFFI PermissionName String where
  toFFI = show

export
FromFFI PermissionName String where
  fromFFI = read
