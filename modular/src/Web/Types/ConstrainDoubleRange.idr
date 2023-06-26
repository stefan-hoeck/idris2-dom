module Web.Types.ConstrainDoubleRange

import JS
import Web.Types.DoubleRange


%default total

export data ConstrainDoubleRange : Type where [external]

export
ToFFI ConstrainDoubleRange ConstrainDoubleRange where toFFI = id

export
FromFFI ConstrainDoubleRange ConstrainDoubleRange where fromFFI = Just


export %inline
Cast ConstrainDoubleRange DoubleRange where cast = believe_me


export %inline
Cast ConstrainDoubleRange Object where cast = believe_me
