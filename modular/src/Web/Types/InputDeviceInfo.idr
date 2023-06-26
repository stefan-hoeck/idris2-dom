module Web.Types.InputDeviceInfo

import JS
import Web.Types.MediaDeviceInfo


%default total

export data InputDeviceInfo : Type where [external]

export
ToFFI InputDeviceInfo InputDeviceInfo where toFFI = id

export
FromFFI InputDeviceInfo InputDeviceInfo where fromFFI = Just

export
SafeCast InputDeviceInfo where
  safeCast = unsafeCastOnPrototypeName "InputDeviceInfo"


export %inline
Cast InputDeviceInfo MediaDeviceInfo where cast = believe_me


export %inline
Cast InputDeviceInfo Object where cast = believe_me
