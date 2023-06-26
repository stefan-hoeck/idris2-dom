module Web.Types.CanvasShadowStyles

import JS


%default total

export data CanvasShadowStyles : Type where [external]

export
ToFFI CanvasShadowStyles CanvasShadowStyles where toFFI = id

export
FromFFI CanvasShadowStyles CanvasShadowStyles where fromFFI = Just

