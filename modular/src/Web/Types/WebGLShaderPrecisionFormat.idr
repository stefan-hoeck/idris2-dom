module Web.Types.WebGLShaderPrecisionFormat

import JS


%default total

export data WebGLShaderPrecisionFormat : Type where [external]

export
ToFFI WebGLShaderPrecisionFormat WebGLShaderPrecisionFormat where toFFI = id

export
FromFFI WebGLShaderPrecisionFormat WebGLShaderPrecisionFormat where fromFFI = Just

export
SafeCast WebGLShaderPrecisionFormat where
  safeCast = unsafeCastOnPrototypeName "WebGLShaderPrecisionFormat"


export %inline
Cast WebGLShaderPrecisionFormat Object where cast = believe_me
