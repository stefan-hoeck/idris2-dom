module Web.Types.Animatable

import JS


%default total

export data Animatable : Type where [external]

export
ToFFI Animatable Animatable where toFFI = id

export
FromFFI Animatable Animatable where fromFFI = Just
