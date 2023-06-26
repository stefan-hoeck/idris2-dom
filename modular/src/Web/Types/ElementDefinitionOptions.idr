module Web.Types.ElementDefinitionOptions

import JS


%default total

export data ElementDefinitionOptions : Type where [external]

export
ToFFI ElementDefinitionOptions ElementDefinitionOptions where toFFI = id

export
FromFFI ElementDefinitionOptions ElementDefinitionOptions where fromFFI = Just


export %inline
Cast ElementDefinitionOptions Object where cast = believe_me

