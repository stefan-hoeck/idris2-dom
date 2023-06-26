module Web.Types.WebGL2RenderingContextBase

import JS


%default total

export data WebGL2RenderingContextBase : Type where [external]

export
ToFFI WebGL2RenderingContextBase WebGL2RenderingContextBase where toFFI = id

export
FromFFI WebGL2RenderingContextBase WebGL2RenderingContextBase where fromFFI = Just
