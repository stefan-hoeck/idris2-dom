module Web.Types.WebGLRenderbuffer

import JS
import Web.Types.WebGLObject


%default total

export data WebGLRenderbuffer : Type where [external]

export
ToFFI WebGLRenderbuffer WebGLRenderbuffer where toFFI = id

export
FromFFI WebGLRenderbuffer WebGLRenderbuffer where fromFFI = Just

export
SafeCast WebGLRenderbuffer where
  safeCast = unsafeCastOnPrototypeName "WebGLRenderbuffer"


export %inline
Cast WebGLRenderbuffer WebGLObject where cast = believe_me


export %inline
Cast WebGLRenderbuffer Object where cast = believe_me
