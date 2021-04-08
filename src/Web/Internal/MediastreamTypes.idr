module Web.Internal.MediastreamTypes
 
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

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data ConstrainablePattern : Type where [external]

export
SafeCast ConstrainablePattern where
  safeCast = unsafeCastOnPrototypeName "ConstrainablePattern"

export data InputDeviceInfo : Type where [external]

export
SafeCast InputDeviceInfo where
  safeCast = unsafeCastOnPrototypeName "InputDeviceInfo"

export data MediaDeviceInfo : Type where [external]

export
SafeCast MediaDeviceInfo where
  safeCast = unsafeCastOnPrototypeName "MediaDeviceInfo"

export data MediaDevices : Type where [external]

export
SafeCast MediaDevices where
  safeCast = unsafeCastOnPrototypeName "MediaDevices"

export data MediaStream : Type where [external]

export
SafeCast MediaStream where
  safeCast = unsafeCastOnPrototypeName "MediaStream"

export data MediaStreamTrack : Type where [external]

export
SafeCast MediaStreamTrack where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrack"

export data MediaStreamTrackEvent : Type where [external]

export
SafeCast MediaStreamTrackEvent where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrackEvent"

export data OverconstrainedError : Type where [external]

export
SafeCast OverconstrainedError where
  safeCast = unsafeCastOnPrototypeName "OverconstrainedError"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data Capabilities : Type where [external]

export
SafeCast Capabilities where
  safeCast = unsafeCastOnPrototypeName "Capabilities"

export data ConstrainBooleanParameters : Type where [external]

export
SafeCast ConstrainBooleanParameters where
  safeCast = unsafeCastOnPrototypeName "ConstrainBooleanParameters"

export data ConstrainDOMStringParameters : Type where [external]

export
SafeCast ConstrainDOMStringParameters where
  safeCast = unsafeCastOnPrototypeName "ConstrainDOMStringParameters"

export data ConstrainDoubleRange : Type where [external]

export
SafeCast ConstrainDoubleRange where
  safeCast = unsafeCastOnPrototypeName "ConstrainDoubleRange"

export data ConstrainULongRange : Type where [external]

export
SafeCast ConstrainULongRange where
  safeCast = unsafeCastOnPrototypeName "ConstrainULongRange"

export data ConstraintSet : Type where [external]

export
SafeCast ConstraintSet where
  safeCast = unsafeCastOnPrototypeName "ConstraintSet"

export data Constraints : Type where [external]

export
SafeCast Constraints where
  safeCast = unsafeCastOnPrototypeName "Constraints"

export data DoubleRange : Type where [external]

export
SafeCast DoubleRange where
  safeCast = unsafeCastOnPrototypeName "DoubleRange"

export data MediaStreamConstraints : Type where [external]

export
SafeCast MediaStreamConstraints where
  safeCast = unsafeCastOnPrototypeName "MediaStreamConstraints"

export data MediaStreamTrackEventInit : Type where [external]

export
SafeCast MediaStreamTrackEventInit where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrackEventInit"

export data MediaTrackCapabilities : Type where [external]

export
SafeCast MediaTrackCapabilities where
  safeCast = unsafeCastOnPrototypeName "MediaTrackCapabilities"

export data MediaTrackConstraintSet : Type where [external]

export
SafeCast MediaTrackConstraintSet where
  safeCast = unsafeCastOnPrototypeName "MediaTrackConstraintSet"

export data MediaTrackConstraints : Type where [external]

export
SafeCast MediaTrackConstraints where
  safeCast = unsafeCastOnPrototypeName "MediaTrackConstraints"

export data MediaTrackSettings : Type where [external]

export
SafeCast MediaTrackSettings where
  safeCast = unsafeCastOnPrototypeName "MediaTrackSettings"

export data MediaTrackSupportedConstraints : Type where [external]

export
SafeCast MediaTrackSupportedConstraints where
  safeCast = unsafeCastOnPrototypeName "MediaTrackSupportedConstraints"

export data Settings : Type where [external]

export
SafeCast Settings where
  safeCast = unsafeCastOnPrototypeName "Settings"

export data ULongRange : Type where [external]

export
SafeCast ULongRange where
  safeCast = unsafeCastOnPrototypeName "ULongRange"


--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data NavigatorUserMediaErrorCallback : Type where [external]

export data NavigatorUserMediaSuccessCallback : Type where [external]