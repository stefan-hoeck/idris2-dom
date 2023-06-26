module Web.Types.EventInit

import JS


%default total

export data EventInit : Type where [external]

export
ToFFI EventInit EventInit where toFFI = id

export
FromFFI EventInit EventInit where fromFFI = Just


export %inline
Cast EventInit Object where cast = believe_me

