module Web.Types.Slottable

import JS


%default total

export data Slottable : Type where [external]

export
ToFFI Slottable Slottable where toFFI = id

export
FromFFI Slottable Slottable where fromFFI = Just
