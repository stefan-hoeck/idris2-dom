module Web.GeometryTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export
data DOMMatrix  : Type where [external]

export
ToJS DOMMatrix where
  toJS = believe_me

export
FromJS DOMMatrix where
  fromJS = believe_me
export
data DOMMatrixReadOnly  : Type where [external]

export
ToJS DOMMatrixReadOnly where
  toJS = believe_me

export
FromJS DOMMatrixReadOnly where
  fromJS = believe_me
export
data DOMPoint  : Type where [external]

export
ToJS DOMPoint where
  toJS = believe_me

export
FromJS DOMPoint where
  fromJS = believe_me
export
data DOMPointReadOnly  : Type where [external]

export
ToJS DOMPointReadOnly where
  toJS = believe_me

export
FromJS DOMPointReadOnly where
  fromJS = believe_me
export
data DOMQuad  : Type where [external]

export
ToJS DOMQuad where
  toJS = believe_me

export
FromJS DOMQuad where
  fromJS = believe_me
export
data DOMRect  : Type where [external]

export
ToJS DOMRect where
  toJS = believe_me

export
FromJS DOMRect where
  fromJS = believe_me
export
data DOMRectList  : Type where [external]

export
ToJS DOMRectList where
  toJS = believe_me

export
FromJS DOMRectList where
  fromJS = believe_me
export
data DOMRectReadOnly  : Type where [external]

export
ToJS DOMRectReadOnly where
  toJS = believe_me

export
FromJS DOMRectReadOnly where
  fromJS = believe_me


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export
data DOMMatrix2DInit  : Type where [external]

export
ToJS DOMMatrix2DInit where
  toJS = believe_me

export
FromJS DOMMatrix2DInit where
  fromJS = believe_me
export
data DOMMatrixInit  : Type where [external]

export
ToJS DOMMatrixInit where
  toJS = believe_me

export
FromJS DOMMatrixInit where
  fromJS = believe_me
export
data DOMPointInit  : Type where [external]

export
ToJS DOMPointInit where
  toJS = believe_me

export
FromJS DOMPointInit where
  fromJS = believe_me
export
data DOMQuadInit  : Type where [external]

export
ToJS DOMQuadInit where
  toJS = believe_me

export
FromJS DOMQuadInit where
  fromJS = believe_me
export
data DOMRectInit  : Type where [external]

export
ToJS DOMRectInit where
  toJS = believe_me

export
FromJS DOMRectInit where
  fromJS = believe_me