module Web.Types.ImageBitmapRenderingContext

import JS


%default total

export data ImageBitmapRenderingContext : Type where [external]

export
ToFFI ImageBitmapRenderingContext ImageBitmapRenderingContext where toFFI = id

export
FromFFI ImageBitmapRenderingContext ImageBitmapRenderingContext where fromFFI = Just

export
SafeCast ImageBitmapRenderingContext where
  safeCast = unsafeCastOnPrototypeName "ImageBitmapRenderingContext"


export %inline
Cast ImageBitmapRenderingContext Object where cast = believe_me
