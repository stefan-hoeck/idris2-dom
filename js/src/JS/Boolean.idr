module JS.Boolean

import JS.Marshall
import JS.Inheritance
import JS.Util

%default total

export
data Boolean : Type where [external]

export
%foreign "javascript:lambda:()=>true"
true : Boolean

export
%foreign "javascript:lambda:()=>false"
false : Boolean

export
ToFFI Bool Boolean where
  toFFI True  = true
  toFFI False = false

export
FromFFI Bool Boolean where
  fromFFI v = if eqv v true then Just True
              else if eqv v false then Just False
              else Nothing

export
SafeCast Boolean where
  safeCast = unsafeCastOnTypeof "boolean"
