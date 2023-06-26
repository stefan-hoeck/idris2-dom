module Web.Types.EventSourceInit

import JS


%default total

export data EventSourceInit : Type where [external]

export
ToFFI EventSourceInit EventSourceInit where toFFI = id

export
FromFFI EventSourceInit EventSourceInit where fromFFI = Just


export %inline
Cast EventSourceInit Object where cast = believe_me

