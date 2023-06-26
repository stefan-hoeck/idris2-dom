module Web.Types.UnderlyingSourceStartCallback

import JS


%default total

export data UnderlyingSourceStartCallback : Type where [external]

export
ToFFI UnderlyingSourceStartCallback UnderlyingSourceStartCallback where toFFI = id

export
FromFFI UnderlyingSourceStartCallback UnderlyingSourceStartCallback where fromFFI = Just

