module Web.Types.UnderlyingSinkWriteCallback

import JS


%default total

export data UnderlyingSinkWriteCallback : Type where [external]

export
ToFFI UnderlyingSinkWriteCallback UnderlyingSinkWriteCallback where toFFI = id

export
FromFFI UnderlyingSinkWriteCallback UnderlyingSinkWriteCallback where fromFFI = Just
