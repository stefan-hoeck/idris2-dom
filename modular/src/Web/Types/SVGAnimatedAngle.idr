module Web.Types.SVGAnimatedAngle

import JS


%default total

export data SVGAnimatedAngle : Type where [external]

export
ToFFI SVGAnimatedAngle SVGAnimatedAngle where toFFI = id

export
FromFFI SVGAnimatedAngle SVGAnimatedAngle where fromFFI = Just

export
SafeCast SVGAnimatedAngle where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedAngle"


export %inline
Cast SVGAnimatedAngle Object where cast = believe_me
