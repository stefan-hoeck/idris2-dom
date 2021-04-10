module JS.Promise

import JS.Marshall

export
data Promise : Type -> Type where [external]

export
ToFFI (Promise a) (Promise a) where toFFI = id

export
FromFFI (Promise a) (Promise a) where fromFFI = Just
