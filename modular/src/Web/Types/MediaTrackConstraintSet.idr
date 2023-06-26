module Web.Types.MediaTrackConstraintSet

import JS


%default total

export data MediaTrackConstraintSet : Type where [external]

export
ToFFI MediaTrackConstraintSet MediaTrackConstraintSet where toFFI = id

export
FromFFI MediaTrackConstraintSet MediaTrackConstraintSet where fromFFI = Just


export %inline
Cast MediaTrackConstraintSet Object where cast = believe_me

