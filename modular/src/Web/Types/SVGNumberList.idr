module Web.Types.SVGNumberList

import JS


%default total

export data SVGNumberList : Type where [external]

export
ToFFI SVGNumberList SVGNumberList where toFFI = id

export
FromFFI SVGNumberList SVGNumberList where fromFFI = Just

export
SafeCast SVGNumberList where
  safeCast = unsafeCastOnPrototypeName "SVGNumberList"


export %inline
Cast SVGNumberList Object where cast = believe_me

