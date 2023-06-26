module Web.Types.TransformerStartCallback

import JS


%default total

export data TransformerStartCallback : Type where [external]

export
ToFFI TransformerStartCallback TransformerStartCallback where toFFI = id

export
FromFFI TransformerStartCallback TransformerStartCallback where fromFFI = Just

