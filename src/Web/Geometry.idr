module Web.Geometry

import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast DOMMatrix DOMMatrixReadOnly where
  cast = believe_me

export
Cast DOMMatrixInit DOMMatrix2DInit where
  cast = believe_me

export
Cast DOMPoint DOMPointReadOnly where
  cast = believe_me

export
Cast DOMRect DOMRectReadOnly where
  cast = believe_me