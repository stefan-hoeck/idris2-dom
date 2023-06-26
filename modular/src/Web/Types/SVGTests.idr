module Web.Types.SVGTests

import JS


%default total

export data SVGTests : Type where [external]

export
ToFFI SVGTests SVGTests where toFFI = id

export
FromFFI SVGTests SVGTests where fromFFI = Just
