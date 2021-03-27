module Web.MediastreamTypes
import JS.Util

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace MediaStreamTrackState
  
  public export
  data MediaStreamTrackState = Live | Ended

  public export
  Show MediaStreamTrackState where
    show Live = "live"
    show Ended = "ended"

  public export
  Eq MediaStreamTrackState where
    (==) = (==) `on` show

  public export
  Ord MediaStreamTrackState where
    compare = compare `on` show

  public export
  read : String -> Maybe MediaStreamTrackState
  read "live" = Just Live
  read "ended" = Just Ended
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (MediaStreamTrackState.read s)}
             -> MediaStreamTrackState
  fromString s = fromJust $ read s

  export
  ToJS MediaStreamTrackState where
    toJS = toJS . show

  export
  FromJS MediaStreamTrackState where
    fromJS = fromMaybe Live . read . fromJS

namespace VideoFacingModeEnum
  
  public export
  data VideoFacingModeEnum = User | Environment | Left | Right

  public export
  Show VideoFacingModeEnum where
    show User = "user"
    show Environment = "environment"
    show Left = "left"
    show Right = "right"

  public export
  Eq VideoFacingModeEnum where
    (==) = (==) `on` show

  public export
  Ord VideoFacingModeEnum where
    compare = compare `on` show

  public export
  read : String -> Maybe VideoFacingModeEnum
  read "user" = Just User
  read "environment" = Just Environment
  read "left" = Just Left
  read "right" = Just Right
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (VideoFacingModeEnum.read s)}
             -> VideoFacingModeEnum
  fromString s = fromJust $ read s

  export
  ToJS VideoFacingModeEnum where
    toJS = toJS . show

  export
  FromJS VideoFacingModeEnum where
    fromJS = fromMaybe User . read . fromJS

namespace VideoResizeModeEnum
  
  public export
  data VideoResizeModeEnum = None | CropAndScale

  public export
  Show VideoResizeModeEnum where
    show None = "none"
    show CropAndScale = "crop-and-scale"

  public export
  Eq VideoResizeModeEnum where
    (==) = (==) `on` show

  public export
  Ord VideoResizeModeEnum where
    compare = compare `on` show

  public export
  read : String -> Maybe VideoResizeModeEnum
  read "none" = Just None
  read "crop-and-scale" = Just CropAndScale
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (VideoResizeModeEnum.read s)}
             -> VideoResizeModeEnum
  fromString s = fromJust $ read s

  export
  ToJS VideoResizeModeEnum where
    toJS = toJS . show

  export
  FromJS VideoResizeModeEnum where
    fromJS = fromMaybe None . read . fromJS

namespace MediaDeviceKind
  
  public export
  data MediaDeviceKind = Audioinput | Audiooutput | Videoinput

  public export
  Show MediaDeviceKind where
    show Audioinput = "audioinput"
    show Audiooutput = "audiooutput"
    show Videoinput = "videoinput"

  public export
  Eq MediaDeviceKind where
    (==) = (==) `on` show

  public export
  Ord MediaDeviceKind where
    compare = compare `on` show

  public export
  read : String -> Maybe MediaDeviceKind
  read "audioinput" = Just Audioinput
  read "audiooutput" = Just Audiooutput
  read "videoinput" = Just Videoinput
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (MediaDeviceKind.read s)}
             -> MediaDeviceKind
  fromString s = fromJust $ read s

  export
  ToJS MediaDeviceKind where
    toJS = toJS . show

  export
  FromJS MediaDeviceKind where
    fromJS = fromMaybe Audioinput . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export
data ConstrainablePattern  : Type where [external]

export
ToJS ConstrainablePattern where
  toJS = believe_me

export
FromJS ConstrainablePattern where
  fromJS = believe_me
export
data InputDeviceInfo  : Type where [external]

export
ToJS InputDeviceInfo where
  toJS = believe_me

export
FromJS InputDeviceInfo where
  fromJS = believe_me
export
data MediaDeviceInfo  : Type where [external]

export
ToJS MediaDeviceInfo where
  toJS = believe_me

export
FromJS MediaDeviceInfo where
  fromJS = believe_me
export
data MediaDevices  : Type where [external]

export
ToJS MediaDevices where
  toJS = believe_me

export
FromJS MediaDevices where
  fromJS = believe_me
export
data MediaStream  : Type where [external]

export
ToJS MediaStream where
  toJS = believe_me

export
FromJS MediaStream where
  fromJS = believe_me
export
data MediaStreamTrack  : Type where [external]

export
ToJS MediaStreamTrack where
  toJS = believe_me

export
FromJS MediaStreamTrack where
  fromJS = believe_me
export
data MediaStreamTrackEvent  : Type where [external]

export
ToJS MediaStreamTrackEvent where
  toJS = believe_me

export
FromJS MediaStreamTrackEvent where
  fromJS = believe_me
export
data OverconstrainedError  : Type where [external]

export
ToJS OverconstrainedError where
  toJS = believe_me

export
FromJS OverconstrainedError where
  fromJS = believe_me


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export
data Capabilities  : Type where [external]

export
ToJS Capabilities where
  toJS = believe_me

export
FromJS Capabilities where
  fromJS = believe_me
export
data ConstrainBooleanParameters  : Type where [external]

export
ToJS ConstrainBooleanParameters where
  toJS = believe_me

export
FromJS ConstrainBooleanParameters where
  fromJS = believe_me
export
data ConstrainDOMStringParameters  : Type where [external]

export
ToJS ConstrainDOMStringParameters where
  toJS = believe_me

export
FromJS ConstrainDOMStringParameters where
  fromJS = believe_me
export
data ConstrainDoubleRange  : Type where [external]

export
ToJS ConstrainDoubleRange where
  toJS = believe_me

export
FromJS ConstrainDoubleRange where
  fromJS = believe_me
export
data ConstrainULongRange  : Type where [external]

export
ToJS ConstrainULongRange where
  toJS = believe_me

export
FromJS ConstrainULongRange where
  fromJS = believe_me
export
data ConstraintSet  : Type where [external]

export
ToJS ConstraintSet where
  toJS = believe_me

export
FromJS ConstraintSet where
  fromJS = believe_me
export
data Constraints  : Type where [external]

export
ToJS Constraints where
  toJS = believe_me

export
FromJS Constraints where
  fromJS = believe_me
export
data DoubleRange  : Type where [external]

export
ToJS DoubleRange where
  toJS = believe_me

export
FromJS DoubleRange where
  fromJS = believe_me
export
data MediaStreamConstraints  : Type where [external]

export
ToJS MediaStreamConstraints where
  toJS = believe_me

export
FromJS MediaStreamConstraints where
  fromJS = believe_me
export
data MediaStreamTrackEventInit  : Type where [external]

export
ToJS MediaStreamTrackEventInit where
  toJS = believe_me

export
FromJS MediaStreamTrackEventInit where
  fromJS = believe_me
export
data MediaTrackCapabilities  : Type where [external]

export
ToJS MediaTrackCapabilities where
  toJS = believe_me

export
FromJS MediaTrackCapabilities where
  fromJS = believe_me
export
data MediaTrackConstraintSet  : Type where [external]

export
ToJS MediaTrackConstraintSet where
  toJS = believe_me

export
FromJS MediaTrackConstraintSet where
  fromJS = believe_me
export
data MediaTrackConstraints  : Type where [external]

export
ToJS MediaTrackConstraints where
  toJS = believe_me

export
FromJS MediaTrackConstraints where
  fromJS = believe_me
export
data MediaTrackSettings  : Type where [external]

export
ToJS MediaTrackSettings where
  toJS = believe_me

export
FromJS MediaTrackSettings where
  fromJS = believe_me
export
data MediaTrackSupportedConstraints  : Type where [external]

export
ToJS MediaTrackSupportedConstraints where
  toJS = believe_me

export
FromJS MediaTrackSupportedConstraints where
  fromJS = believe_me
export
data Settings  : Type where [external]

export
ToJS Settings where
  toJS = believe_me

export
FromJS Settings where
  fromJS = believe_me
export
data ULongRange  : Type where [external]

export
ToJS ULongRange where
  toJS = believe_me

export
FromJS ULongRange where
  fromJS = believe_me