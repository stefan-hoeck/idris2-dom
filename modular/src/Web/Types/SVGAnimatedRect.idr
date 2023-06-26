module Web.Types.SVGAnimatedRect

import JS


%default total

export data SVGAnimatedRect : Type where [external]

export
ToFFI SVGAnimatedRect SVGAnimatedRect where toFFI = id

export
FromFFI SVGAnimatedRect SVGAnimatedRect where fromFFI = Just

export
SafeCast SVGAnimatedRect where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedRect"


export %inline
Cast SVGAnimatedRect Object where cast = believe_me
