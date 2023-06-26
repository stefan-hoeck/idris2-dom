module Web.Types.MutationCallback

import JS


%default total

export data MutationCallback : Type where [external]

export
ToFFI MutationCallback MutationCallback where toFFI = id

export
FromFFI MutationCallback MutationCallback where fromFFI = Just
