module JS.Object

import JS.Inheritance
import JS.Marshall

export
data Object : Type where [external]

export
ToFFI Object Object where toFFI = id

export
FromFFI Object Object where fromFFI = Just

export
SafeCast Object where
  safeCast = unsafeCastOnPrototypeName "object"
