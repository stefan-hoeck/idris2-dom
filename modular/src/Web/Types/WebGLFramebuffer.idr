module Web.Types.WebGLFramebuffer

import JS
import Web.Types.WebGLObject


%default total

export data WebGLFramebuffer : Type where [external]

export
ToFFI WebGLFramebuffer WebGLFramebuffer where toFFI = id

export
FromFFI WebGLFramebuffer WebGLFramebuffer where fromFFI = Just

export
SafeCast WebGLFramebuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLFramebuffer"


export %inline
Cast WebGLFramebuffer WebGLObject where cast = believe_me


export %inline
Cast WebGLFramebuffer Object where cast = believe_me

