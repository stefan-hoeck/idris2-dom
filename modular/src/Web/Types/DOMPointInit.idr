module Web.Types.DOMPointInit

import JS


%default total

export data DOMPointInit : Type where [external]

export
ToFFI DOMPointInit DOMPointInit where toFFI = id

export
FromFFI DOMPointInit DOMPointInit where fromFFI = Just


export %inline
Cast DOMPointInit Object where cast = believe_me

