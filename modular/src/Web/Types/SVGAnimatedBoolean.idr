module Web.Types.SVGAnimatedBoolean

import JS


%default total

export data SVGAnimatedBoolean : Type where [external]

export
ToFFI SVGAnimatedBoolean SVGAnimatedBoolean where toFFI = id

export
FromFFI SVGAnimatedBoolean SVGAnimatedBoolean where fromFFI = Just

export
SafeCast SVGAnimatedBoolean where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedBoolean"


export %inline
Cast SVGAnimatedBoolean Object where cast = believe_me
