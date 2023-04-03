module Web.Internal.MediastreamTypes

import JS

%default total


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

  export
  ToFFI MediaStreamTrackState String where
    toFFI = show

  export
  FromFFI MediaStreamTrackState String where
    fromFFI = read


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

  export
  ToFFI VideoFacingModeEnum String where
    toFFI = show

  export
  FromFFI VideoFacingModeEnum String where
    fromFFI = read


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

  export
  ToFFI VideoResizeModeEnum String where
    toFFI = show

  export
  FromFFI VideoResizeModeEnum String where
    fromFFI = read


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

  export
  ToFFI MediaDeviceKind String where
    toFFI = show

  export
  FromFFI MediaDeviceKind String where
    fromFFI = read



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data ConstrainablePattern : Type where [external]

export
ToFFI ConstrainablePattern ConstrainablePattern where toFFI = id

export
FromFFI ConstrainablePattern ConstrainablePattern where fromFFI = Just

export
SafeCast ConstrainablePattern where
  safeCast = unsafeCastOnPrototypeName "ConstrainablePattern"

export data InputDeviceInfo : Type where [external]

export
ToFFI InputDeviceInfo InputDeviceInfo where toFFI = id

export
FromFFI InputDeviceInfo InputDeviceInfo where fromFFI = Just

export
SafeCast InputDeviceInfo where
  safeCast = unsafeCastOnPrototypeName "InputDeviceInfo"

export data MediaDeviceInfo : Type where [external]

export
ToFFI MediaDeviceInfo MediaDeviceInfo where toFFI = id

export
FromFFI MediaDeviceInfo MediaDeviceInfo where fromFFI = Just

export
SafeCast MediaDeviceInfo where
  safeCast = unsafeCastOnPrototypeName "MediaDeviceInfo"

export data MediaDevices : Type where [external]

export
ToFFI MediaDevices MediaDevices where toFFI = id

export
FromFFI MediaDevices MediaDevices where fromFFI = Just

export
SafeCast MediaDevices where
  safeCast = unsafeCastOnPrototypeName "MediaDevices"

export data MediaStream : Type where [external]

export
ToFFI MediaStream MediaStream where toFFI = id

export
FromFFI MediaStream MediaStream where fromFFI = Just

export
SafeCast MediaStream where
  safeCast = unsafeCastOnPrototypeName "MediaStream"

export data MediaStreamTrack : Type where [external]

export
ToFFI MediaStreamTrack MediaStreamTrack where toFFI = id

export
FromFFI MediaStreamTrack MediaStreamTrack where fromFFI = Just

export
SafeCast MediaStreamTrack where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrack"

export data MediaStreamTrackEvent : Type where [external]

export
ToFFI MediaStreamTrackEvent MediaStreamTrackEvent where toFFI = id

export
FromFFI MediaStreamTrackEvent MediaStreamTrackEvent where fromFFI = Just

export
SafeCast MediaStreamTrackEvent where
  safeCast = unsafeCastOnPrototypeName "MediaStreamTrackEvent"

export data OverconstrainedError : Type where [external]

export
ToFFI OverconstrainedError OverconstrainedError where toFFI = id

export
FromFFI OverconstrainedError OverconstrainedError where fromFFI = Just

export
SafeCast OverconstrainedError where
  safeCast = unsafeCastOnPrototypeName "OverconstrainedError"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data Capabilities : Type where [external]

export
ToFFI Capabilities Capabilities where toFFI = id

export
FromFFI Capabilities Capabilities where fromFFI = Just

export data ConstrainBooleanParameters : Type where [external]

export
ToFFI ConstrainBooleanParameters ConstrainBooleanParameters where toFFI = id

export
FromFFI ConstrainBooleanParameters ConstrainBooleanParameters where fromFFI = Just

export data ConstrainDOMStringParameters : Type where [external]

export
ToFFI ConstrainDOMStringParameters ConstrainDOMStringParameters where toFFI = id

export
FromFFI ConstrainDOMStringParameters ConstrainDOMStringParameters where fromFFI = Just

export data ConstrainDoubleRange : Type where [external]

export
ToFFI ConstrainDoubleRange ConstrainDoubleRange where toFFI = id

export
FromFFI ConstrainDoubleRange ConstrainDoubleRange where fromFFI = Just

export data ConstrainULongRange : Type where [external]

export
ToFFI ConstrainULongRange ConstrainULongRange where toFFI = id

export
FromFFI ConstrainULongRange ConstrainULongRange where fromFFI = Just

export data ConstraintSet : Type where [external]

export
ToFFI ConstraintSet ConstraintSet where toFFI = id

export
FromFFI ConstraintSet ConstraintSet where fromFFI = Just

export data Constraints : Type where [external]

export
ToFFI Constraints Constraints where toFFI = id

export
FromFFI Constraints Constraints where fromFFI = Just

export data DoubleRange : Type where [external]

export
ToFFI DoubleRange DoubleRange where toFFI = id

export
FromFFI DoubleRange DoubleRange where fromFFI = Just

export data MediaStreamConstraints : Type where [external]

export
ToFFI MediaStreamConstraints MediaStreamConstraints where toFFI = id

export
FromFFI MediaStreamConstraints MediaStreamConstraints where fromFFI = Just

export data MediaStreamTrackEventInit : Type where [external]

export
ToFFI MediaStreamTrackEventInit MediaStreamTrackEventInit where toFFI = id

export
FromFFI MediaStreamTrackEventInit MediaStreamTrackEventInit where fromFFI = Just

export data MediaTrackCapabilities : Type where [external]

export
ToFFI MediaTrackCapabilities MediaTrackCapabilities where toFFI = id

export
FromFFI MediaTrackCapabilities MediaTrackCapabilities where fromFFI = Just

export data MediaTrackConstraintSet : Type where [external]

export
ToFFI MediaTrackConstraintSet MediaTrackConstraintSet where toFFI = id

export
FromFFI MediaTrackConstraintSet MediaTrackConstraintSet where fromFFI = Just

export data MediaTrackConstraints : Type where [external]

export
ToFFI MediaTrackConstraints MediaTrackConstraints where toFFI = id

export
FromFFI MediaTrackConstraints MediaTrackConstraints where fromFFI = Just

export data MediaTrackSettings : Type where [external]

export
ToFFI MediaTrackSettings MediaTrackSettings where toFFI = id

export
FromFFI MediaTrackSettings MediaTrackSettings where fromFFI = Just

export data MediaTrackSupportedConstraints : Type where [external]

export
ToFFI MediaTrackSupportedConstraints MediaTrackSupportedConstraints where toFFI = id

export
FromFFI MediaTrackSupportedConstraints MediaTrackSupportedConstraints where fromFFI = Just

export data Settings : Type where [external]

export
ToFFI Settings Settings where toFFI = id

export
FromFFI Settings Settings where fromFFI = Just

export data ULongRange : Type where [external]

export
ToFFI ULongRange ULongRange where toFFI = id

export
FromFFI ULongRange ULongRange where fromFFI = Just



--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export data NavigatorUserMediaErrorCallback : Type where [external]

export
ToFFI NavigatorUserMediaErrorCallback NavigatorUserMediaErrorCallback where toFFI = id

export
FromFFI NavigatorUserMediaErrorCallback NavigatorUserMediaErrorCallback where fromFFI = Just

export data NavigatorUserMediaSuccessCallback : Type where [external]

export
ToFFI NavigatorUserMediaSuccessCallback NavigatorUserMediaSuccessCallback where toFFI = id

export
FromFFI NavigatorUserMediaSuccessCallback NavigatorUserMediaSuccessCallback where fromFFI = Just
