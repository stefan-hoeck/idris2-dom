module Web.Types.MediaTrackSupportedConstraints

import JS


%default total

export data MediaTrackSupportedConstraints : Type where [external]

export
ToFFI MediaTrackSupportedConstraints MediaTrackSupportedConstraints where toFFI = id

export
FromFFI MediaTrackSupportedConstraints MediaTrackSupportedConstraints where fromFFI = Just


export %inline
Cast MediaTrackSupportedConstraints Object where cast = believe_me
