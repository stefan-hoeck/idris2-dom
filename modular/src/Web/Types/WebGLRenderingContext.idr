module Web.Types.WebGLRenderingContext

import JS
import Web.Types.WebGLRenderingContextBase
import Web.Types.WebGLRenderingContextOverloads


%default total

export data WebGLRenderingContext : Type where [external]

export
ToFFI WebGLRenderingContext WebGLRenderingContext where toFFI = id

export
FromFFI WebGLRenderingContext WebGLRenderingContext where fromFFI = Just

export
SafeCast WebGLRenderingContext where
  safeCast = unsafeCastOnPrototypeName "WebGLRenderingContext"


export %inline
Cast WebGLRenderingContext Object where cast = believe_me


export %inline
Cast WebGLRenderingContext WebGLRenderingContextBase where cast = believe_me


export %inline
Cast WebGLRenderingContext WebGLRenderingContextOverloads where cast = believe_me

