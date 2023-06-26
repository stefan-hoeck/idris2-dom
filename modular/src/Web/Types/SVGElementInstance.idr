module Web.Types.SVGElementInstance

import JS


%default total

export data SVGElementInstance : Type where [external]

export
ToFFI SVGElementInstance SVGElementInstance where toFFI = id

export
FromFFI SVGElementInstance SVGElementInstance where fromFFI = Just

