module Web.Internal.GeometryTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data DOMMatrix : Type where [external]

export
SafeCast DOMMatrix where
  safeCast = unsafeCastOnPrototypeName "DOMMatrix"

export data DOMMatrixReadOnly : Type where [external]

export
SafeCast DOMMatrixReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMMatrixReadOnly"

export data DOMPoint : Type where [external]

export
SafeCast DOMPoint where
  safeCast = unsafeCastOnPrototypeName "DOMPoint"

export data DOMPointReadOnly : Type where [external]

export
SafeCast DOMPointReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMPointReadOnly"

export data DOMQuad : Type where [external]

export
SafeCast DOMQuad where
  safeCast = unsafeCastOnPrototypeName "DOMQuad"

export data DOMRect : Type where [external]

export
SafeCast DOMRect where
  safeCast = unsafeCastOnPrototypeName "DOMRect"

export data DOMRectList : Type where [external]

export
SafeCast DOMRectList where
  safeCast = unsafeCastOnPrototypeName "DOMRectList"

export data DOMRectReadOnly : Type where [external]

export
SafeCast DOMRectReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMRectReadOnly"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data DOMMatrix2DInit : Type where [external]

export
SafeCast DOMMatrix2DInit where
  safeCast = unsafeCastOnPrototypeName "DOMMatrix2DInit"

export data DOMMatrixInit : Type where [external]

export
SafeCast DOMMatrixInit where
  safeCast = unsafeCastOnPrototypeName "DOMMatrixInit"

export data DOMPointInit : Type where [external]

export
SafeCast DOMPointInit where
  safeCast = unsafeCastOnPrototypeName "DOMPointInit"

export data DOMQuadInit : Type where [external]

export
SafeCast DOMQuadInit where
  safeCast = unsafeCastOnPrototypeName "DOMQuadInit"

export data DOMRectInit : Type where [external]

export
SafeCast DOMRectInit where
  safeCast = unsafeCastOnPrototypeName "DOMRectInit"

