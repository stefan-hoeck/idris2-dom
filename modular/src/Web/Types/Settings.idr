module Web.Types.Settings

import JS


%default total

export data Settings : Type where [external]

export
ToFFI Settings Settings where toFFI = id

export
FromFFI Settings Settings where fromFFI = Just


export %inline
Cast Settings Object where cast = believe_me

