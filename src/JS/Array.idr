module JS.Array

import JS.Marshall

export
data Array : Type -> Type where [external]

export
ToFFI (Array a) (Array a) where toFFI = id

export
FromFFI (Array a) (Array a) where fromFFI = Just
