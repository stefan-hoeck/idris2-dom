module Web.Types.WebGLSampler

import JS
import Web.Types.WebGLObject


%default total

export data WebGLSampler : Type where [external]

export
ToFFI WebGLSampler WebGLSampler where toFFI = id

export
FromFFI WebGLSampler WebGLSampler where fromFFI = Just

export
SafeCast WebGLSampler where
  safeCast = unsafeCastOnPrototypeName "WebGLSampler"


export %inline
Cast WebGLSampler WebGLObject where cast = believe_me


export %inline
Cast WebGLSampler Object where cast = believe_me

