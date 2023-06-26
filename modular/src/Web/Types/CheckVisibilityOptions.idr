module Web.Types.CheckVisibilityOptions

import JS


%default total

export data CheckVisibilityOptions : Type where [external]

export
ToFFI CheckVisibilityOptions CheckVisibilityOptions where toFFI = id

export
FromFFI CheckVisibilityOptions CheckVisibilityOptions where fromFFI = Just


export %inline
Cast CheckVisibilityOptions Object where cast = believe_me

