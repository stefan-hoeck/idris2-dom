module Web.Types.Constraints

import JS
import Web.Types.ConstraintSet


%default total

export data Constraints : Type where [external]

export
ToFFI Constraints Constraints where toFFI = id

export
FromFFI Constraints Constraints where fromFFI = Just


export %inline
Cast Constraints ConstraintSet where cast = believe_me


export %inline
Cast Constraints Object where cast = believe_me
