module Web.Types.SVGAnimatedNumberList

import JS


%default total

export data SVGAnimatedNumberList : Type where [external]

export
ToFFI SVGAnimatedNumberList SVGAnimatedNumberList where toFFI = id

export
FromFFI SVGAnimatedNumberList SVGAnimatedNumberList where fromFFI = Just

export
SafeCast SVGAnimatedNumberList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedNumberList"


export %inline
Cast SVGAnimatedNumberList Object where cast = believe_me

