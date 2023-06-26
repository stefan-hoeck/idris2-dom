module Web.Types.GenericTransformStream

import JS


%default total

export data GenericTransformStream : Type where [external]

export
ToFFI GenericTransformStream GenericTransformStream where toFFI = id

export
FromFFI GenericTransformStream GenericTransformStream where fromFFI = Just
