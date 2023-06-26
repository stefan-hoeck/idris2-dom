module Web.Types.DOMMatrixReadOnly

import JS


%default total

export data DOMMatrixReadOnly : Type where [external]

export
ToFFI DOMMatrixReadOnly DOMMatrixReadOnly where toFFI = id

export
FromFFI DOMMatrixReadOnly DOMMatrixReadOnly where fromFFI = Just

export
SafeCast DOMMatrixReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMMatrixReadOnly"


export %inline
Cast DOMMatrixReadOnly Object where cast = believe_me
