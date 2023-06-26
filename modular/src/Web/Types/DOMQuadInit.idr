module Web.Types.DOMQuadInit

import JS


%default total

export data DOMQuadInit : Type where [external]

export
ToFFI DOMQuadInit DOMQuadInit where toFFI = id

export
FromFFI DOMQuadInit DOMQuadInit where fromFFI = Just


export %inline
Cast DOMQuadInit Object where cast = believe_me

