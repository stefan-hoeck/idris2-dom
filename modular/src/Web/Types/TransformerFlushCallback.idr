module Web.Types.TransformerFlushCallback

import JS


%default total

export data TransformerFlushCallback : Type where [external]

export
ToFFI TransformerFlushCallback TransformerFlushCallback where toFFI = id

export
FromFFI TransformerFlushCallback TransformerFlushCallback where fromFFI = Just
