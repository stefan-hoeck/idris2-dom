module Web.Types.WebGL2RenderingContext

import JS
import Web.Types.WebGL2RenderingContextBase
import Web.Types.WebGL2RenderingContextOverloads
import Web.Types.WebGLRenderingContextBase


%default total

export data WebGL2RenderingContext : Type where [external]

export
ToFFI WebGL2RenderingContext WebGL2RenderingContext where toFFI = id

export
FromFFI WebGL2RenderingContext WebGL2RenderingContext where fromFFI = Just

export
SafeCast WebGL2RenderingContext where
  safeCast = unsafeCastOnPrototypeName "WebGL2RenderingContext"


export %inline
Cast WebGL2RenderingContext Object where cast = believe_me


export %inline
Cast WebGL2RenderingContext WebGL2RenderingContextBase where cast = believe_me


export %inline
Cast WebGL2RenderingContext WebGL2RenderingContextOverloads where cast = believe_me


export %inline
Cast WebGL2RenderingContext WebGLRenderingContextBase where cast = believe_me
