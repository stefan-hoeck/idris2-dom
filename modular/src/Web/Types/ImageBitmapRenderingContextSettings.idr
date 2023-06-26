module Web.Types.ImageBitmapRenderingContextSettings

import JS


%default total

export data ImageBitmapRenderingContextSettings : Type where [external]

export
ToFFI ImageBitmapRenderingContextSettings ImageBitmapRenderingContextSettings where toFFI = id

export
FromFFI ImageBitmapRenderingContextSettings ImageBitmapRenderingContextSettings where fromFFI = Just


export %inline
Cast ImageBitmapRenderingContextSettings Object where cast = believe_me
