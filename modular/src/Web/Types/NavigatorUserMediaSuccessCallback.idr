module Web.Types.NavigatorUserMediaSuccessCallback

import JS


%default total

export data NavigatorUserMediaSuccessCallback : Type where [external]

export
ToFFI NavigatorUserMediaSuccessCallback NavigatorUserMediaSuccessCallback where toFFI = id

export
FromFFI NavigatorUserMediaSuccessCallback NavigatorUserMediaSuccessCallback where fromFFI = Just
