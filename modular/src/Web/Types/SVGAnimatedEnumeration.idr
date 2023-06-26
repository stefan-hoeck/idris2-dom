module Web.Types.SVGAnimatedEnumeration

import JS


%default total

export data SVGAnimatedEnumeration : Type where [external]

export
ToFFI SVGAnimatedEnumeration SVGAnimatedEnumeration where toFFI = id

export
FromFFI SVGAnimatedEnumeration SVGAnimatedEnumeration where fromFFI = Just

export
SafeCast SVGAnimatedEnumeration where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedEnumeration"


export %inline
Cast SVGAnimatedEnumeration Object where cast = believe_me

