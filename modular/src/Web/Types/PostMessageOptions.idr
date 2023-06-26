module Web.Types.PostMessageOptions

import JS


%default total

export data PostMessageOptions : Type where [external]

export
ToFFI PostMessageOptions PostMessageOptions where toFFI = id

export
FromFFI PostMessageOptions PostMessageOptions where fromFFI = Just


export %inline
Cast PostMessageOptions Object where cast = believe_me

