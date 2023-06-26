module Web.Types.WebGLProgram

import JS
import Web.Types.WebGLObject


%default total

export data WebGLProgram : Type where [external]

export
ToFFI WebGLProgram WebGLProgram where toFFI = id

export
FromFFI WebGLProgram WebGLProgram where fromFFI = Just

export
SafeCast WebGLProgram where
  safeCast = unsafeCastOnPrototypeName "WebGLProgram"


export %inline
Cast WebGLProgram WebGLObject where cast = believe_me


export %inline
Cast WebGLProgram Object where cast = believe_me
