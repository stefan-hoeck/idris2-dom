module Web.Types.OffscreenRenderingContextId

import JS

%default total

public export
data OffscreenRenderingContextId = TwoD | Bitmaprenderer | Webgl | Webgl2

export
Show OffscreenRenderingContextId where
  show TwoD = "2d"
  show Bitmaprenderer = "bitmaprenderer"
  show Webgl = "webgl"
  show Webgl2 = "webgl2"

export
Eq OffscreenRenderingContextId where
  (==) = (==) `on` show

export
Ord OffscreenRenderingContextId where
  compare = compare `on` show

export
read : String -> Maybe OffscreenRenderingContextId
read "2d" = Just TwoD
read "bitmaprenderer" = Just Bitmaprenderer
read "webgl" = Just Webgl
read "webgl2" = Just Webgl2
read _ = Nothing

export
ToFFI OffscreenRenderingContextId String where
  toFFI = show

export
FromFFI OffscreenRenderingContextId String where
  fromFFI = read
