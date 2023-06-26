module Web.Types.UnderlyingSourceCancelCallback

import JS


%default total

export data UnderlyingSourceCancelCallback : Type where [external]

export
ToFFI UnderlyingSourceCancelCallback UnderlyingSourceCancelCallback where toFFI = id

export
FromFFI UnderlyingSourceCancelCallback UnderlyingSourceCancelCallback where fromFFI = Just
