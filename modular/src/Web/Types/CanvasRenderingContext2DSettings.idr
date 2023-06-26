module Web.Types.CanvasRenderingContext2DSettings

import JS


%default total

export data CanvasRenderingContext2DSettings : Type where [external]

export
ToFFI CanvasRenderingContext2DSettings CanvasRenderingContext2DSettings where toFFI = id

export
FromFFI CanvasRenderingContext2DSettings CanvasRenderingContext2DSettings where fromFFI = Just


export %inline
Cast CanvasRenderingContext2DSettings Object where cast = believe_me

