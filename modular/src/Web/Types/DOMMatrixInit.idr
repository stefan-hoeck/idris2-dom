module Web.Types.DOMMatrixInit

import JS
import Web.Types.DOMMatrix2DInit


%default total

export data DOMMatrixInit : Type where [external]

export
ToFFI DOMMatrixInit DOMMatrixInit where toFFI = id

export
FromFFI DOMMatrixInit DOMMatrixInit where fromFFI = Just


export %inline
Cast DOMMatrixInit DOMMatrix2DInit where cast = believe_me


export %inline
Cast DOMMatrixInit Object where cast = believe_me
