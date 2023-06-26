module Web.Types.WebGLRenderingContextBase

import JS


%default total

export data WebGLRenderingContextBase : Type where [external]

export
ToFFI WebGLRenderingContextBase WebGLRenderingContextBase where toFFI = id

export
FromFFI WebGLRenderingContextBase WebGLRenderingContextBase where fromFFI = Just

