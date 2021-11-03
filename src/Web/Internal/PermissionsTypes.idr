module Web.Internal.PermissionsTypes

import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace PermissionState
  
  public export
  data PermissionState = Granted | Denied | Prompt

  public export
  Show PermissionState where
    show Granted = "granted"
    show Denied = "denied"
    show Prompt = "prompt"

  public export
  Eq PermissionState where
    (==) = (==) `on` show

  public export
  Ord PermissionState where
    compare = compare `on` show

  public export
  read : String -> Maybe PermissionState
  read "granted" = Just Granted
  read "denied" = Just Denied
  read "prompt" = Just Prompt
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (PermissionState.read s)}
             -> PermissionState
  fromString s = fromJust $ read s

  export
  ToFFI PermissionState String where
    toFFI = show

  export
  FromFFI PermissionState String where
    fromFFI = read

namespace PermissionName
  
  public export
  data PermissionName = Geolocation
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

  public export
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

  public export
  Eq PermissionName where
    (==) = (==) `on` show

  public export
  Ord PermissionName where
    compare = compare `on` show

  public export
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

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (PermissionName.read s)}
             -> PermissionName
  fromString s = fromJust $ read s

  export
  ToFFI PermissionName String where
    toFFI = show

  export
  FromFFI PermissionName String where
    fromFFI = read


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data PermissionStatus : Type where [external]

export
ToFFI PermissionStatus PermissionStatus where toFFI = id

export
FromFFI PermissionStatus PermissionStatus where fromFFI = Just

export
SafeCast PermissionStatus where
  safeCast = unsafeCastOnPrototypeName "PermissionStatus"

export data Permissions : Type where [external]

export
ToFFI Permissions Permissions where toFFI = id

export
FromFFI Permissions Permissions where fromFFI = Just

export
SafeCast Permissions where
  safeCast = unsafeCastOnPrototypeName "Permissions"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data CameraDevicePermissionDescriptor : Type where [external]

export
ToFFI CameraDevicePermissionDescriptor CameraDevicePermissionDescriptor where toFFI = id

export
FromFFI CameraDevicePermissionDescriptor CameraDevicePermissionDescriptor where fromFFI = Just

export data DevicePermissionDescriptor : Type where [external]

export
ToFFI DevicePermissionDescriptor DevicePermissionDescriptor where toFFI = id

export
FromFFI DevicePermissionDescriptor DevicePermissionDescriptor where fromFFI = Just

export data MidiPermissionDescriptor : Type where [external]

export
ToFFI MidiPermissionDescriptor MidiPermissionDescriptor where toFFI = id

export
FromFFI MidiPermissionDescriptor MidiPermissionDescriptor where fromFFI = Just

export data PermissionDescriptor : Type where [external]

export
ToFFI PermissionDescriptor PermissionDescriptor where toFFI = id

export
FromFFI PermissionDescriptor PermissionDescriptor where fromFFI = Just

export data PermissionSetParameters : Type where [external]

export
ToFFI PermissionSetParameters PermissionSetParameters where toFFI = id

export
FromFFI PermissionSetParameters PermissionSetParameters where fromFFI = Just

export data PushPermissionDescriptor : Type where [external]

export
ToFFI PushPermissionDescriptor PushPermissionDescriptor where toFFI = id

export
FromFFI PushPermissionDescriptor PushPermissionDescriptor where fromFFI = Just



