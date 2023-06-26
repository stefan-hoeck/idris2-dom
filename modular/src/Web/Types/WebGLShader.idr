module Web.Types.WebGLShader

import JS
import Web.Types.WebGLObject


%default total

export data WebGLShader : Type where [external]

export
ToFFI WebGLShader WebGLShader where toFFI = id

export
FromFFI WebGLShader WebGLShader where fromFFI = Just

export
SafeCast WebGLShader where
  safeCast = unsafeCastOnPrototypeName "WebGLShader"


export %inline
Cast WebGLShader WebGLObject where cast = believe_me


export %inline
Cast WebGLShader Object where cast = believe_me

