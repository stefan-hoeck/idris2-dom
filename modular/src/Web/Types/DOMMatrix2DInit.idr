module Web.Types.DOMMatrix2DInit

import JS


%default total

export data DOMMatrix2DInit : Type where [external]

export
ToFFI DOMMatrix2DInit DOMMatrix2DInit where toFFI = id

export
FromFFI DOMMatrix2DInit DOMMatrix2DInit where fromFFI = Just


export %inline
Cast DOMMatrix2DInit Object where cast = believe_me
