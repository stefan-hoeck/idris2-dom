module Web.Types.ConstrainBooleanParameters

import JS


%default total

export data ConstrainBooleanParameters : Type where [external]

export
ToFFI ConstrainBooleanParameters ConstrainBooleanParameters where toFFI = id

export
FromFFI ConstrainBooleanParameters ConstrainBooleanParameters where fromFFI = Just


export %inline
Cast ConstrainBooleanParameters Object where cast = believe_me
