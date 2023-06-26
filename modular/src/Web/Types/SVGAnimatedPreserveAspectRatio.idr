module Web.Types.SVGAnimatedPreserveAspectRatio

import JS


%default total

export data SVGAnimatedPreserveAspectRatio : Type where [external]

export
ToFFI SVGAnimatedPreserveAspectRatio SVGAnimatedPreserveAspectRatio where toFFI = id

export
FromFFI SVGAnimatedPreserveAspectRatio SVGAnimatedPreserveAspectRatio where fromFFI = Just

export
SafeCast SVGAnimatedPreserveAspectRatio where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedPreserveAspectRatio"


export %inline
Cast SVGAnimatedPreserveAspectRatio Object where cast = believe_me

