module Web.Types.WebGLBuffer

import JS
import Web.Types.WebGLObject


%default total

export data WebGLBuffer : Type where [external]

export
ToFFI WebGLBuffer WebGLBuffer where toFFI = id

export
FromFFI WebGLBuffer WebGLBuffer where fromFFI = Just

export
SafeCast WebGLBuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLBuffer"


export %inline
Cast WebGLBuffer WebGLObject where cast = believe_me


export %inline
Cast WebGLBuffer Object where cast = believe_me
