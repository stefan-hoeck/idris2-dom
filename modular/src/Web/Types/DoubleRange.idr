module Web.Types.DoubleRange

import JS


%default total

export data DoubleRange : Type where [external]

export
ToFFI DoubleRange DoubleRange where toFFI = id

export
FromFFI DoubleRange DoubleRange where fromFFI = Just


export %inline
Cast DoubleRange Object where cast = believe_me
