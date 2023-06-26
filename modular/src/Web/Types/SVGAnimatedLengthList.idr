module Web.Types.SVGAnimatedLengthList

import JS


%default total

export data SVGAnimatedLengthList : Type where [external]

export
ToFFI SVGAnimatedLengthList SVGAnimatedLengthList where toFFI = id

export
FromFFI SVGAnimatedLengthList SVGAnimatedLengthList where fromFFI = Just

export
SafeCast SVGAnimatedLengthList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedLengthList"


export %inline
Cast SVGAnimatedLengthList Object where cast = believe_me

