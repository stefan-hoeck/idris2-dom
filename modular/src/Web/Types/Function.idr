module Web.Types.Function

import JS


%default total

export data Function : Type where [external]

export
ToFFI Function Function where toFFI = id

export
FromFFI Function Function where fromFFI = Just
