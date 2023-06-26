module Web.Types.WebGLTexture

import JS
import Web.Types.WebGLObject


%default total

export data WebGLTexture : Type where [external]

export
ToFFI WebGLTexture WebGLTexture where toFFI = id

export
FromFFI WebGLTexture WebGLTexture where fromFFI = Just

export
SafeCast WebGLTexture where
  safeCast = unsafeCastOnPrototypeName "WebGLTexture"


export %inline
Cast WebGLTexture WebGLObject where cast = believe_me


export %inline
Cast WebGLTexture Object where cast = believe_me
