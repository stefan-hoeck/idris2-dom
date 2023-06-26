module Web.Types.SVGTransformList

import JS


%default total

export data SVGTransformList : Type where [external]

export
ToFFI SVGTransformList SVGTransformList where toFFI = id

export
FromFFI SVGTransformList SVGTransformList where fromFFI = Just

export
SafeCast SVGTransformList where
  safeCast = unsafeCastOnPrototypeName "SVGTransformList"


export %inline
Cast SVGTransformList Object where cast = believe_me

