module Web.Types.ULongRange

import JS


%default total

export data ULongRange : Type where [external]

export
ToFFI ULongRange ULongRange where toFFI = id

export
FromFFI ULongRange ULongRange where fromFFI = Just


export %inline
Cast ULongRange Object where cast = believe_me

