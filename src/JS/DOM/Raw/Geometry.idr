module JS.DOM.Raw.Geometry

import JS.DOM.Raw.Types

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