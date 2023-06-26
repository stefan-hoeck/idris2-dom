module Web.Types.ElementCreationOptions

import JS


%default total

export data ElementCreationOptions : Type where [external]

export
ToFFI ElementCreationOptions ElementCreationOptions where toFFI = id

export
FromFFI ElementCreationOptions ElementCreationOptions where fromFFI = Just


export %inline
Cast ElementCreationOptions Object where cast = believe_me

