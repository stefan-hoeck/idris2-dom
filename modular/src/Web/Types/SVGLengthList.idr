module Web.Types.SVGLengthList

import JS


%default total

export data SVGLengthList : Type where [external]

export
ToFFI SVGLengthList SVGLengthList where toFFI = id

export
FromFFI SVGLengthList SVGLengthList where fromFFI = Just

export
SafeCast SVGLengthList where
  safeCast = unsafeCastOnPrototypeName "SVGLengthList"


export %inline
Cast SVGLengthList Object where cast = believe_me
