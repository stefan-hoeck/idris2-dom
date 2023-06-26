module Web.Types.MediaTrackConstraints

import JS
import Web.Types.MediaTrackConstraintSet


%default total

export data MediaTrackConstraints : Type where [external]

export
ToFFI MediaTrackConstraints MediaTrackConstraints where toFFI = id

export
FromFFI MediaTrackConstraints MediaTrackConstraints where fromFFI = Just


export %inline
Cast MediaTrackConstraints MediaTrackConstraintSet where cast = believe_me


export %inline
Cast MediaTrackConstraints Object where cast = believe_me

