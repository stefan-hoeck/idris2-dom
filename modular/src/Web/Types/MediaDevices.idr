module Web.Types.MediaDevices

import JS
import Web.Types.EventTarget


%default total

export data MediaDevices : Type where [external]

export
ToFFI MediaDevices MediaDevices where toFFI = id

export
FromFFI MediaDevices MediaDevices where fromFFI = Just

export
SafeCast MediaDevices where
  safeCast = unsafeCastOnPrototypeName "MediaDevices"


export %inline
Cast MediaDevices EventTarget where cast = believe_me


export %inline
Cast MediaDevices Object where cast = believe_me
