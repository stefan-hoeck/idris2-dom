module Web.Types.CanvasDrawImage

import JS


%default total

export data CanvasDrawImage : Type where [external]

export
ToFFI CanvasDrawImage CanvasDrawImage where toFFI = id

export
FromFFI CanvasDrawImage CanvasDrawImage where fromFFI = Just
