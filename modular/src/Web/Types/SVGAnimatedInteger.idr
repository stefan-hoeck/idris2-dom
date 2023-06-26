module Web.Types.SVGAnimatedInteger

import JS


%default total

export data SVGAnimatedInteger : Type where [external]

export
ToFFI SVGAnimatedInteger SVGAnimatedInteger where toFFI = id

export
FromFFI SVGAnimatedInteger SVGAnimatedInteger where fromFFI = Just

export
SafeCast SVGAnimatedInteger where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedInteger"


export %inline
Cast SVGAnimatedInteger Object where cast = believe_me

