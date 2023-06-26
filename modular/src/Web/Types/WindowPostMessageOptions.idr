module Web.Types.WindowPostMessageOptions

import JS
import Web.Types.PostMessageOptions


%default total

export data WindowPostMessageOptions : Type where [external]

export
ToFFI WindowPostMessageOptions WindowPostMessageOptions where toFFI = id

export
FromFFI WindowPostMessageOptions WindowPostMessageOptions where fromFFI = Just


export %inline
Cast WindowPostMessageOptions PostMessageOptions where cast = believe_me


export %inline
Cast WindowPostMessageOptions Object where cast = believe_me
