module Web.Types.ConstraintSet

import JS


%default total

export data ConstraintSet : Type where [external]

export
ToFFI ConstraintSet ConstraintSet where toFFI = id

export
FromFFI ConstraintSet ConstraintSet where fromFFI = Just


export %inline
Cast ConstraintSet Object where cast = believe_me

