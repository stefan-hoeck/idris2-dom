module Web.Types.WorkletOptions

import JS


%default total

export data WorkletOptions : Type where [external]

export
ToFFI WorkletOptions WorkletOptions where toFFI = id

export
FromFFI WorkletOptions WorkletOptions where fromFFI = Just


export %inline
Cast WorkletOptions Object where cast = believe_me

