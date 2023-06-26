module Web.Types.NavigatorPlugins

import JS


%default total

export data NavigatorPlugins : Type where [external]

export
ToFFI NavigatorPlugins NavigatorPlugins where toFFI = id

export
FromFFI NavigatorPlugins NavigatorPlugins where fromFFI = Just

