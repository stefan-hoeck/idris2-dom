module Web.Types.UnderlyingSourcePullCallback

import JS


%default total

export data UnderlyingSourcePullCallback : Type where [external]

export
ToFFI UnderlyingSourcePullCallback UnderlyingSourcePullCallback where toFFI = id

export
FromFFI UnderlyingSourcePullCallback UnderlyingSourcePullCallback where fromFFI = Just

