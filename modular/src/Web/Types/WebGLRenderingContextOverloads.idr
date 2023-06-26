module Web.Types.WebGLRenderingContextOverloads

import JS


%default total

export data WebGLRenderingContextOverloads : Type where [external]

export
ToFFI WebGLRenderingContextOverloads WebGLRenderingContextOverloads where toFFI = id

export
FromFFI WebGLRenderingContextOverloads WebGLRenderingContextOverloads where fromFFI = Just

