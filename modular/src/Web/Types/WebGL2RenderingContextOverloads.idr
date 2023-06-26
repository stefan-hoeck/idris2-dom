module Web.Types.WebGL2RenderingContextOverloads

import JS


%default total

export data WebGL2RenderingContextOverloads : Type where [external]

export
ToFFI WebGL2RenderingContextOverloads WebGL2RenderingContextOverloads where toFFI = id

export
FromFFI WebGL2RenderingContextOverloads WebGL2RenderingContextOverloads where fromFFI = Just
