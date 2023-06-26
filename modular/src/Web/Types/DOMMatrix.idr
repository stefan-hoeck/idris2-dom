module Web.Types.DOMMatrix

import JS
import Web.Types.DOMMatrixReadOnly


%default total

export data DOMMatrix : Type where [external]

export
ToFFI DOMMatrix DOMMatrix where toFFI = id

export
FromFFI DOMMatrix DOMMatrix where fromFFI = Just

export
SafeCast DOMMatrix where
  safeCast = unsafeCastOnPrototypeName "DOMMatrix"


export %inline
Cast DOMMatrix DOMMatrixReadOnly where cast = believe_me


export %inline
Cast DOMMatrix Object where cast = believe_me

