module Web.Types.ImageBitmap

import JS


%default total

export data ImageBitmap : Type where [external]

export
ToFFI ImageBitmap ImageBitmap where toFFI = id

export
FromFFI ImageBitmap ImageBitmap where fromFFI = Just

export
SafeCast ImageBitmap where
  safeCast = unsafeCastOnPrototypeName "ImageBitmap"


export %inline
Cast ImageBitmap Object where cast = believe_me
