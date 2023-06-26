module Web.Types.MediaTrackCapabilities

import JS


%default total

export data MediaTrackCapabilities : Type where [external]

export
ToFFI MediaTrackCapabilities MediaTrackCapabilities where toFFI = id

export
FromFFI MediaTrackCapabilities MediaTrackCapabilities where fromFFI = Just


export %inline
Cast MediaTrackCapabilities Object where cast = believe_me
