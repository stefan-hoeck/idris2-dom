module Web.Mediastream
 
import JS
import Web.Internal.MediastreamPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ConstrainablePattern
  
  public export
  JSType ConstrainablePattern where
    parents =  [ Object ]

    mixins =  []

namespace InputDeviceInfo
  
  public export
  JSType InputDeviceInfo where
    parents =  [ MediaDeviceInfo , Object ]

    mixins =  []

namespace MediaDeviceInfo
  
  public export
  JSType MediaDeviceInfo where
    parents =  [ Object ]

    mixins =  []

namespace MediaDevices
  
  public export
  JSType MediaDevices where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace MediaStream
  
  public export
  JSType MediaStream where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace MediaStreamTrack
  
  public export
  JSType MediaStreamTrack where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace MediaStreamTrackEvent
  
  public export
  JSType MediaStreamTrackEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace OverconstrainedError
  
  public export
  JSType OverconstrainedError where
    parents =  [ DOMException , Object ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace Capabilities
  
  public export
  JSType Capabilities where
    parents =  [ Object ]

    mixins =  []

namespace ConstrainBooleanParameters
  
  public export
  JSType ConstrainBooleanParameters where
    parents =  [ Object ]

    mixins =  []

namespace ConstrainDOMStringParameters
  
  public export
  JSType ConstrainDOMStringParameters where
    parents =  [ Object ]

    mixins =  []

namespace ConstrainDoubleRange
  
  public export
  JSType ConstrainDoubleRange where
    parents =  [ DoubleRange , Object ]

    mixins =  []

namespace ConstrainULongRange
  
  public export
  JSType ConstrainULongRange where
    parents =  [ ULongRange , Object ]

    mixins =  []

namespace ConstraintSet
  
  public export
  JSType ConstraintSet where
    parents =  [ Object ]

    mixins =  []

namespace Constraints
  
  public export
  JSType Constraints where
    parents =  [ ConstraintSet , Object ]

    mixins =  []

namespace DoubleRange
  
  public export
  JSType DoubleRange where
    parents =  [ Object ]

    mixins =  []

namespace MediaStreamConstraints
  
  public export
  JSType MediaStreamConstraints where
    parents =  [ Object ]

    mixins =  []

namespace MediaStreamTrackEventInit
  
  public export
  JSType MediaStreamTrackEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace MediaTrackCapabilities
  
  public export
  JSType MediaTrackCapabilities where
    parents =  [ Object ]

    mixins =  []

namespace MediaTrackConstraintSet
  
  public export
  JSType MediaTrackConstraintSet where
    parents =  [ Object ]

    mixins =  []

namespace MediaTrackConstraints
  
  public export
  JSType MediaTrackConstraints where
    parents =  [ MediaTrackConstraintSet , Object ]

    mixins =  []

namespace MediaTrackSettings
  
  public export
  JSType MediaTrackSettings where
    parents =  [ Object ]

    mixins =  []

namespace MediaTrackSupportedConstraints
  
  public export
  JSType MediaTrackSupportedConstraints where
    parents =  [ Object ]

    mixins =  []

namespace Settings
  
  public export
  JSType Settings where
    parents =  [ Object ]

    mixins =  []

namespace ULongRange
  
  public export
  JSType ULongRange where
    parents =  [ Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

