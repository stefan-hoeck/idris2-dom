module Web.Types.ConstrainULongRange

import JS
import Web.Types.ULongRange


%default total

export data ConstrainULongRange : Type where [external]

export
ToFFI ConstrainULongRange ConstrainULongRange where toFFI = id

export
FromFFI ConstrainULongRange ConstrainULongRange where fromFFI = Just


export %inline
Cast ConstrainULongRange ULongRange where cast = believe_me


export %inline
Cast ConstrainULongRange Object where cast = believe_me

