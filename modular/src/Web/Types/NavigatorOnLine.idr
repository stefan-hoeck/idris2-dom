module Web.Types.NavigatorOnLine

import JS


%default total

export data NavigatorOnLine : Type where [external]

export
ToFFI NavigatorOnLine NavigatorOnLine where toFFI = id

export
FromFFI NavigatorOnLine NavigatorOnLine where fromFFI = Just
