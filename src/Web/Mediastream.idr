module Web.Mediastream

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ConstrainDoubleRange DoubleRange where
  cast = believe_me

export
Cast ConstrainULongRange ULongRange where
  cast = believe_me

export
Cast Constraints ConstraintSet where
  cast = believe_me

export
Cast InputDeviceInfo MediaDeviceInfo where
  cast = believe_me

export
Cast MediaDevices EventTarget where
  cast = believe_me

export
Cast MediaStream EventTarget where
  cast = believe_me

export
Cast MediaStreamTrack EventTarget where
  cast = believe_me

export
Cast MediaStreamTrackEvent Event where
  cast = believe_me

export
Cast MediaStreamTrackEventInit EventInit where
  cast = believe_me

export
Cast MediaTrackConstraints MediaTrackConstraintSet where
  cast = believe_me

export
Cast OverconstrainedError DOMException where
  cast = believe_me