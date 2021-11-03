module JS.Record

import JS.Marshall

%default total

export
data Record : Type -> Type -> Type where [external]

export
ToFFI (Record a b) (Record a b) where toFFI = id

export
FromFFI (Record a b) (Record a b) where fromFFI = Just
