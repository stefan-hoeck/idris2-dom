module Web.Types.WebGLUniformLocation

import JS


%default total

export data WebGLUniformLocation : Type where [external]

export
ToFFI WebGLUniformLocation WebGLUniformLocation where toFFI = id

export
FromFFI WebGLUniformLocation WebGLUniformLocation where fromFFI = Just

export
SafeCast WebGLUniformLocation where
  safeCast = unsafeCastOnPrototypeName "WebGLUniformLocation"


export %inline
Cast WebGLUniformLocation Object where cast = believe_me

