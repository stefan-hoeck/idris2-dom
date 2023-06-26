module Web.Types.SVGFitToViewBox

import JS


%default total

export data SVGFitToViewBox : Type where [external]

export
ToFFI SVGFitToViewBox SVGFitToViewBox where toFFI = id

export
FromFFI SVGFitToViewBox SVGFitToViewBox where fromFFI = Just

