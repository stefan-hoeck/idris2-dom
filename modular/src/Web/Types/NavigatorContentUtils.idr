module Web.Types.NavigatorContentUtils

import JS


%default total

export data NavigatorContentUtils : Type where [external]

export
ToFFI NavigatorContentUtils NavigatorContentUtils where toFFI = id

export
FromFFI NavigatorContentUtils NavigatorContentUtils where fromFFI = Just

