module JS.ByteString

import JS.Marshall

%default total

export
data ByteString : Type where [external]

export
ToFFI ByteString ByteString where toFFI = id

export
FromFFI ByteString ByteString where fromFFI = Just
