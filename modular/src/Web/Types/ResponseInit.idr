module Web.Types.ResponseInit

import JS


%default total

export data ResponseInit : Type where [external]

export
ToFFI ResponseInit ResponseInit where toFFI = id

export
FromFFI ResponseInit ResponseInit where fromFFI = Just


export %inline
Cast ResponseInit Object where cast = believe_me
