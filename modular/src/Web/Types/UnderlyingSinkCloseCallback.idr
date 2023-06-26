module Web.Types.UnderlyingSinkCloseCallback

import JS


%default total

export data UnderlyingSinkCloseCallback : Type where [external]

export
ToFFI UnderlyingSinkCloseCallback UnderlyingSinkCloseCallback where toFFI = id

export
FromFFI UnderlyingSinkCloseCallback UnderlyingSinkCloseCallback where fromFFI = Just
