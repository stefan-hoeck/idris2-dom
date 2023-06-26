module Web.Types.SVGURIReference

import JS


%default total

export data SVGURIReference : Type where [external]

export
ToFFI SVGURIReference SVGURIReference where toFFI = id

export
FromFFI SVGURIReference SVGURIReference where fromFFI = Just
