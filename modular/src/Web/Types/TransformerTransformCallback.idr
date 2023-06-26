module Web.Types.TransformerTransformCallback

import JS


%default total

export data TransformerTransformCallback : Type where [external]

export
ToFFI TransformerTransformCallback TransformerTransformCallback where toFFI = id

export
FromFFI TransformerTransformCallback TransformerTransformCallback where fromFFI = Just

