module Web.Types.SVGStringList

import JS


%default total

export data SVGStringList : Type where [external]

export
ToFFI SVGStringList SVGStringList where toFFI = id

export
FromFFI SVGStringList SVGStringList where fromFFI = Just

export
SafeCast SVGStringList where
  safeCast = unsafeCastOnPrototypeName "SVGStringList"


export %inline
Cast SVGStringList Object where cast = believe_me

