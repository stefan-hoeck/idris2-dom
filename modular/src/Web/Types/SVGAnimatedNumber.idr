module Web.Types.SVGAnimatedNumber

import JS


%default total

export data SVGAnimatedNumber : Type where [external]

export
ToFFI SVGAnimatedNumber SVGAnimatedNumber where toFFI = id

export
FromFFI SVGAnimatedNumber SVGAnimatedNumber where fromFFI = Just

export
SafeCast SVGAnimatedNumber where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedNumber"


export %inline
Cast SVGAnimatedNumber Object where cast = believe_me

