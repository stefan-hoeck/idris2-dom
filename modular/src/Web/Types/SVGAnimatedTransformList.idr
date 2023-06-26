module Web.Types.SVGAnimatedTransformList

import JS


%default total

export data SVGAnimatedTransformList : Type where [external]

export
ToFFI SVGAnimatedTransformList SVGAnimatedTransformList where toFFI = id

export
FromFFI SVGAnimatedTransformList SVGAnimatedTransformList where fromFFI = Just

export
SafeCast SVGAnimatedTransformList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedTransformList"


export %inline
Cast SVGAnimatedTransformList Object where cast = believe_me
