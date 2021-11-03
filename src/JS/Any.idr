module JS.Any

import JS.Inheritance
import JS.Marshall

%default total

public export
record Any where
  constructor MkAny
  value : tpe

export
ToFFI Any AnyPtr where
  toFFI (MkAny v) = believe_me v

export
FromFFI Any AnyPtr where
  fromFFI = Just . MkAny

export
SafeCast Any where
  safeCast = Just . MkAny
