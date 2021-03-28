module Web.GeometryTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data DOMMatrix : Type where [external]

export
SafeCast DOMMatrix where
  safeCast = unsafeCastOnPrototypeName "DOMMatrix"

export ToJS DOMMatrix where toJS = believe_me
export FromJS DOMMatrix where fromJS = safeCast
export data DOMMatrixReadOnly : Type where [external]

export
SafeCast DOMMatrixReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMMatrixReadOnly"

export ToJS DOMMatrixReadOnly where toJS = believe_me
export FromJS DOMMatrixReadOnly where fromJS = safeCast
export data DOMPoint : Type where [external]

export
SafeCast DOMPoint where
  safeCast = unsafeCastOnPrototypeName "DOMPoint"

export ToJS DOMPoint where toJS = believe_me
export FromJS DOMPoint where fromJS = safeCast
export data DOMPointReadOnly : Type where [external]

export
SafeCast DOMPointReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMPointReadOnly"

export ToJS DOMPointReadOnly where toJS = believe_me
export FromJS DOMPointReadOnly where fromJS = safeCast
export data DOMQuad : Type where [external]

export
SafeCast DOMQuad where
  safeCast = unsafeCastOnPrototypeName "DOMQuad"

export ToJS DOMQuad where toJS = believe_me
export FromJS DOMQuad where fromJS = safeCast
export data DOMRect : Type where [external]

export
SafeCast DOMRect where
  safeCast = unsafeCastOnPrototypeName "DOMRect"

export ToJS DOMRect where toJS = believe_me
export FromJS DOMRect where fromJS = safeCast
export data DOMRectList : Type where [external]

export
SafeCast DOMRectList where
  safeCast = unsafeCastOnPrototypeName "DOMRectList"

export ToJS DOMRectList where toJS = believe_me
export FromJS DOMRectList where fromJS = safeCast
export data DOMRectReadOnly : Type where [external]

export
SafeCast DOMRectReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMRectReadOnly"

export ToJS DOMRectReadOnly where toJS = believe_me
export FromJS DOMRectReadOnly where fromJS = safeCast


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export data DOMMatrix2DInit : Type where [external]

export
SafeCast DOMMatrix2DInit where
  safeCast = unsafeCastOnPrototypeName "DOMMatrix2DInit"

export ToJS DOMMatrix2DInit where toJS = believe_me
export FromJS DOMMatrix2DInit where fromJS = safeCast
export data DOMMatrixInit : Type where [external]

export
SafeCast DOMMatrixInit where
  safeCast = unsafeCastOnPrototypeName "DOMMatrixInit"

export ToJS DOMMatrixInit where toJS = believe_me
export FromJS DOMMatrixInit where fromJS = safeCast
export data DOMPointInit : Type where [external]

export
SafeCast DOMPointInit where
  safeCast = unsafeCastOnPrototypeName "DOMPointInit"

export ToJS DOMPointInit where toJS = believe_me
export FromJS DOMPointInit where fromJS = safeCast
export data DOMQuadInit : Type where [external]

export
SafeCast DOMQuadInit where
  safeCast = unsafeCastOnPrototypeName "DOMQuadInit"

export ToJS DOMQuadInit where toJS = believe_me
export FromJS DOMQuadInit where fromJS = safeCast
export data DOMRectInit : Type where [external]

export
SafeCast DOMRectInit where
  safeCast = unsafeCastOnPrototypeName "DOMRectInit"

export ToJS DOMRectInit where toJS = believe_me
export FromJS DOMRectInit where fromJS = safeCast