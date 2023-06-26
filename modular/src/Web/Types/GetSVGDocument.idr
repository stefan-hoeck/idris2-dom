module Web.Types.GetSVGDocument

import JS


%default total

export data GetSVGDocument : Type where [external]

export
ToFFI GetSVGDocument GetSVGDocument where toFFI = id

export
FromFFI GetSVGDocument GetSVGDocument where fromFFI = Just

