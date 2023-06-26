module Web.Types.BlobCallback

import JS


%default total

export data BlobCallback : Type where [external]

export
ToFFI BlobCallback BlobCallback where toFFI = id

export
FromFFI BlobCallback BlobCallback where fromFFI = Just
