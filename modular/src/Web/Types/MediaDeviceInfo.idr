module Web.Types.MediaDeviceInfo

import JS


%default total

export data MediaDeviceInfo : Type where [external]

export
ToFFI MediaDeviceInfo MediaDeviceInfo where toFFI = id

export
FromFFI MediaDeviceInfo MediaDeviceInfo where fromFFI = Just

export
SafeCast MediaDeviceInfo where
  safeCast = unsafeCastOnPrototypeName "MediaDeviceInfo"


export %inline
Cast MediaDeviceInfo Object where cast = believe_me
