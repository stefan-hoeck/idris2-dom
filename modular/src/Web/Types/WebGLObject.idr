module Web.Types.WebGLObject

import JS


%default total

export data WebGLObject : Type where [external]

export
ToFFI WebGLObject WebGLObject where toFFI = id

export
FromFFI WebGLObject WebGLObject where fromFFI = Just

export
SafeCast WebGLObject where
  safeCast = unsafeCastOnPrototypeName "WebGLObject"


export %inline
Cast WebGLObject Object where cast = believe_me

