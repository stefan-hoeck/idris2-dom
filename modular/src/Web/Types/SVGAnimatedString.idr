module Web.Types.SVGAnimatedString

import JS


%default total

export data SVGAnimatedString : Type where [external]

export
ToFFI SVGAnimatedString SVGAnimatedString where toFFI = id

export
FromFFI SVGAnimatedString SVGAnimatedString where fromFFI = Just

export
SafeCast SVGAnimatedString where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedString"


export %inline
Cast SVGAnimatedString Object where cast = believe_me
