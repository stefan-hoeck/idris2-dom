module Web.Types.CanvasFillStrokeStyles

import JS


%default total

export data CanvasFillStrokeStyles : Type where [external]

export
ToFFI CanvasFillStrokeStyles CanvasFillStrokeStyles where toFFI = id

export
FromFFI CanvasFillStrokeStyles CanvasFillStrokeStyles where fromFFI = Just

