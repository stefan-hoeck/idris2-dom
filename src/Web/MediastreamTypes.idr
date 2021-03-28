module Web.MediastreamTypes
import JS

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
    fromJS ptr = fromJS ptr >>= read

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
    fromJS ptr = fromJS ptr >>= read

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
    fromJS ptr = fromJS ptr >>= read

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
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data ConstrainablePattern : Type where [external]

export
SafeCast ConstrainablePattern where
  safeCast = unsafeCastOnPrototypeName "ConstrainablePattern"

export ToJS ConstrainablePattern where toJS = believe_me
export FromJS ConstrainablePattern where fromJS = safeCast
export data InputDeviceInfo : Type where [external]

export
SafeCast InputDeviceInfo where
  safeCast = unsafeCastOnPrototypeName "InputDeviceInfo"

export ToJS InputDeviceInfo where toJS = believe_me
export FromJS InputDeviceInfo where fromJS = safeCast
export data MediaDeviceInfo : Type where [external]

export
SafeCast MediaDeviceInfo where
  safeCast = unsafeCastOnPrototypeName "MediaDeviceInfo"

export ToJS MediaDeviceInfo where toJS = believe_me
export FromJS MediaDeviceInfo where fromJS = safeCast
export data MediaDevices : Type where [external]

export
SafeCast MediaDevices where
  safeCast = unsafeCastOnPrototypeName "MediaDevices"

export ToJS MediaDevices where toJS = believe_me
export FromJS MediaDevices where fromJS = safeCast
export data MediaStream : Type where [external]

export
SafeCast MediaStream where
  safeCast = unsafeCastOnPrototypeName "MediaStream"

export ToJS MediaStream where toJS = believe_me
export FromJS MediaStream where fromJS = safeCast
export data MediaStreamTrack : Type where [external]

export
SafeCast MediaStreamTrack where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrack"

export ToJS MediaStreamTrack where toJS = believe_me
export FromJS MediaStreamTrack where fromJS = safeCast
export data MediaStreamTrackEvent : Type where [external]

export
SafeCast MediaStreamTrackEvent where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrackEvent"

export ToJS MediaStreamTrackEvent where toJS = believe_me
export FromJS MediaStreamTrackEvent where fromJS = safeCast
export data OverconstrainedError : Type where [external]

export
SafeCast OverconstrainedError where
  safeCast = unsafeCastOnPrototypeName "OverconstrainedError"

export ToJS OverconstrainedError where toJS = believe_me
export FromJS OverconstrainedError where fromJS = safeCast


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export data Capabilities : Type where [external]

export
SafeCast Capabilities where
  safeCast = unsafeCastOnPrototypeName "Capabilities"

export ToJS Capabilities where toJS = believe_me
export FromJS Capabilities where fromJS = safeCast
export data ConstrainBooleanParameters : Type where [external]

export
SafeCast ConstrainBooleanParameters where
  safeCast = unsafeCastOnPrototypeName "ConstrainBooleanParameters"

export ToJS ConstrainBooleanParameters where toJS = believe_me
export FromJS ConstrainBooleanParameters where fromJS = safeCast
export data ConstrainDOMStringParameters : Type where [external]

export
SafeCast ConstrainDOMStringParameters where
  safeCast = unsafeCastOnPrototypeName "ConstrainDOMStringParameters"

export ToJS ConstrainDOMStringParameters where toJS = believe_me
export FromJS ConstrainDOMStringParameters where fromJS = safeCast
export data ConstrainDoubleRange : Type where [external]

export
SafeCast ConstrainDoubleRange where
  safeCast = unsafeCastOnPrototypeName "ConstrainDoubleRange"

export ToJS ConstrainDoubleRange where toJS = believe_me
export FromJS ConstrainDoubleRange where fromJS = safeCast
export data ConstrainULongRange : Type where [external]

export
SafeCast ConstrainULongRange where
  safeCast = unsafeCastOnPrototypeName "ConstrainULongRange"

export ToJS ConstrainULongRange where toJS = believe_me
export FromJS ConstrainULongRange where fromJS = safeCast
export data ConstraintSet : Type where [external]

export
SafeCast ConstraintSet where
  safeCast = unsafeCastOnPrototypeName "ConstraintSet"

export ToJS ConstraintSet where toJS = believe_me
export FromJS ConstraintSet where fromJS = safeCast
export data Constraints : Type where [external]

export
SafeCast Constraints where
  safeCast = unsafeCastOnPrototypeName "Constraints"

export ToJS Constraints where toJS = believe_me
export FromJS Constraints where fromJS = safeCast
export data DoubleRange : Type where [external]

export
SafeCast DoubleRange where
  safeCast = unsafeCastOnPrototypeName "DoubleRange"

export ToJS DoubleRange where toJS = believe_me
export FromJS DoubleRange where fromJS = safeCast
export data MediaStreamConstraints : Type where [external]

export
SafeCast MediaStreamConstraints where
  safeCast = unsafeCastOnPrototypeName "MediaStreamConstraints"

export ToJS MediaStreamConstraints where toJS = believe_me
export FromJS MediaStreamConstraints where fromJS = safeCast
export data MediaStreamTrackEventInit : Type where [external]

export
SafeCast MediaStreamTrackEventInit where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrackEventInit"

export ToJS MediaStreamTrackEventInit where toJS = believe_me
export FromJS MediaStreamTrackEventInit where fromJS = safeCast
export data MediaTrackCapabilities : Type where [external]

export
SafeCast MediaTrackCapabilities where
  safeCast = unsafeCastOnPrototypeName "MediaTrackCapabilities"

export ToJS MediaTrackCapabilities where toJS = believe_me
export FromJS MediaTrackCapabilities where fromJS = safeCast
export data MediaTrackConstraintSet : Type where [external]

export
SafeCast MediaTrackConstraintSet where
  safeCast = unsafeCastOnPrototypeName "MediaTrackConstraintSet"

export ToJS MediaTrackConstraintSet where toJS = believe_me
export FromJS MediaTrackConstraintSet where fromJS = safeCast
export data MediaTrackConstraints : Type where [external]

export
SafeCast MediaTrackConstraints where
  safeCast = unsafeCastOnPrototypeName "MediaTrackConstraints"

export ToJS MediaTrackConstraints where toJS = believe_me
export FromJS MediaTrackConstraints where fromJS = safeCast
export data MediaTrackSettings : Type where [external]

export
SafeCast MediaTrackSettings where
  safeCast = unsafeCastOnPrototypeName "MediaTrackSettings"

export ToJS MediaTrackSettings where toJS = believe_me
export FromJS MediaTrackSettings where fromJS = safeCast
export data MediaTrackSupportedConstraints : Type where [external]

export
SafeCast MediaTrackSupportedConstraints where
  safeCast = unsafeCastOnPrototypeName "MediaTrackSupportedConstraints"

export ToJS MediaTrackSupportedConstraints where toJS = believe_me
export FromJS MediaTrackSupportedConstraints where fromJS = safeCast
export data Settings : Type where [external]

export
SafeCast Settings where
  safeCast = unsafeCastOnPrototypeName "Settings"

export ToJS Settings where toJS = believe_me
export FromJS Settings where fromJS = safeCast
export data ULongRange : Type where [external]

export
SafeCast ULongRange where
  safeCast = unsafeCastOnPrototypeName "ULongRange"

export ToJS ULongRange where toJS = believe_me
export FromJS ULongRange where fromJS = safeCast