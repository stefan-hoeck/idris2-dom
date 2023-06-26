module Web.Types.SVGAnimatedPoints

import JS


%default total

export data SVGAnimatedPoints : Type where [external]

export
ToFFI SVGAnimatedPoints SVGAnimatedPoints where toFFI = id

export
FromFFI SVGAnimatedPoints SVGAnimatedPoints where fromFFI = Just
