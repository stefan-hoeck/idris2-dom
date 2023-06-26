module Web.Types.SVGAnimatedLength

import JS


%default total

export data SVGAnimatedLength : Type where [external]

export
ToFFI SVGAnimatedLength SVGAnimatedLength where toFFI = id

export
FromFFI SVGAnimatedLength SVGAnimatedLength where fromFFI = Just

export
SafeCast SVGAnimatedLength where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedLength"


export %inline
Cast SVGAnimatedLength Object where cast = believe_me
