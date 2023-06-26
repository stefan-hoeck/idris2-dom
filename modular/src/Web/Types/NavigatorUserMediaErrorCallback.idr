module Web.Types.NavigatorUserMediaErrorCallback

import JS


%default total

export data NavigatorUserMediaErrorCallback : Type where [external]

export
ToFFI NavigatorUserMediaErrorCallback NavigatorUserMediaErrorCallback where toFFI = id

export
FromFFI NavigatorUserMediaErrorCallback NavigatorUserMediaErrorCallback where fromFFI = Just

