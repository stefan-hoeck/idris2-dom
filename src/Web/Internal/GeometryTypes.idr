module Web.Internal.GeometryTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data DOMMatrix : Type where [external]
export
ToFFI DOMMatrix DOMMatrix where toFFI = id
export
FromFFI DOMMatrix DOMMatrix where fromFFI = Just

export
SafeCast DOMMatrix where
  safeCast = unsafeCastOnPrototypeName "DOMMatrix"

export data DOMMatrixReadOnly : Type where [external]
export
ToFFI DOMMatrixReadOnly DOMMatrixReadOnly where toFFI = id
export
FromFFI DOMMatrixReadOnly DOMMatrixReadOnly where fromFFI = Just

export
SafeCast DOMMatrixReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMMatrixReadOnly"

export data DOMPoint : Type where [external]
export
ToFFI DOMPoint DOMPoint where toFFI = id
export
FromFFI DOMPoint DOMPoint where fromFFI = Just

export
SafeCast DOMPoint where
  safeCast = unsafeCastOnPrototypeName "DOMPoint"

export data DOMPointReadOnly : Type where [external]
export
ToFFI DOMPointReadOnly DOMPointReadOnly where toFFI = id
export
FromFFI DOMPointReadOnly DOMPointReadOnly where fromFFI = Just

export
SafeCast DOMPointReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMPointReadOnly"

export data DOMQuad : Type where [external]
export
ToFFI DOMQuad DOMQuad where toFFI = id
export
FromFFI DOMQuad DOMQuad where fromFFI = Just

export
SafeCast DOMQuad where
  safeCast = unsafeCastOnPrototypeName "DOMQuad"

export data DOMRect : Type where [external]
export
ToFFI DOMRect DOMRect where toFFI = id
export
FromFFI DOMRect DOMRect where fromFFI = Just

export
SafeCast DOMRect where
  safeCast = unsafeCastOnPrototypeName "DOMRect"

export data DOMRectList : Type where [external]
export
ToFFI DOMRectList DOMRectList where toFFI = id
export
FromFFI DOMRectList DOMRectList where fromFFI = Just

export
SafeCast DOMRectList where
  safeCast = unsafeCastOnPrototypeName "DOMRectList"

export data DOMRectReadOnly : Type where [external]
export
ToFFI DOMRectReadOnly DOMRectReadOnly where toFFI = id
export
FromFFI DOMRectReadOnly DOMRectReadOnly where fromFFI = Just

export
SafeCast DOMRectReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMRectReadOnly"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data DOMMatrix2DInit : Type where [external]
export
ToFFI DOMMatrix2DInit DOMMatrix2DInit where toFFI = id
export
FromFFI DOMMatrix2DInit DOMMatrix2DInit where fromFFI = Just

export
SafeCast DOMMatrix2DInit where
  safeCast = unsafeCastOnPrototypeName "DOMMatrix2DInit"

export data DOMMatrixInit : Type where [external]
export
ToFFI DOMMatrixInit DOMMatrixInit where toFFI = id
export
FromFFI DOMMatrixInit DOMMatrixInit where fromFFI = Just

export
SafeCast DOMMatrixInit where
  safeCast = unsafeCastOnPrototypeName "DOMMatrixInit"

export data DOMPointInit : Type where [external]
export
ToFFI DOMPointInit DOMPointInit where toFFI = id
export
FromFFI DOMPointInit DOMPointInit where fromFFI = Just

export
SafeCast DOMPointInit where
  safeCast = unsafeCastOnPrototypeName "DOMPointInit"

export data DOMQuadInit : Type where [external]
export
ToFFI DOMQuadInit DOMQuadInit where toFFI = id
export
FromFFI DOMQuadInit DOMQuadInit where fromFFI = Just

export
SafeCast DOMQuadInit where
  safeCast = unsafeCastOnPrototypeName "DOMQuadInit"

export data DOMRectInit : Type where [external]
export
ToFFI DOMRectInit DOMRectInit where toFFI = id
export
FromFFI DOMRectInit DOMRectInit where fromFFI = Just

export
SafeCast DOMRectInit where
  safeCast = unsafeCastOnPrototypeName "DOMRectInit"

