module Web.Types.ImageBitmapOptions

import JS


%default total

export data ImageBitmapOptions : Type where [external]

export
ToFFI ImageBitmapOptions ImageBitmapOptions where toFFI = id

export
FromFFI ImageBitmapOptions ImageBitmapOptions where fromFFI = Just


export %inline
Cast ImageBitmapOptions Object where cast = believe_me

