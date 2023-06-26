module Web.Types.SVGPointList

import JS


%default total

export data SVGPointList : Type where [external]

export
ToFFI SVGPointList SVGPointList where toFFI = id

export
FromFFI SVGPointList SVGPointList where fromFFI = Just

export
SafeCast SVGPointList where
  safeCast = unsafeCastOnPrototypeName "SVGPointList"


export %inline
Cast SVGPointList Object where cast = believe_me
