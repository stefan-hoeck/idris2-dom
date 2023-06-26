module Web.Types.UnderlyingSinkStartCallback

import JS


%default total

export data UnderlyingSinkStartCallback : Type where [external]

export
ToFFI UnderlyingSinkStartCallback UnderlyingSinkStartCallback where toFFI = id

export
FromFFI UnderlyingSinkStartCallback UnderlyingSinkStartCallback where fromFFI = Just

