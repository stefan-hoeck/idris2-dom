module Web.Types.UnderlyingSinkAbortCallback

import JS


%default total

export data UnderlyingSinkAbortCallback : Type where [external]

export
ToFFI UnderlyingSinkAbortCallback UnderlyingSinkAbortCallback where toFFI = id

export
FromFFI UnderlyingSinkAbortCallback UnderlyingSinkAbortCallback where fromFFI = Just
