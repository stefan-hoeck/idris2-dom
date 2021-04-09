module JS.Undefined

import JS.Util

export
data UndefOr : Type -> Type where [external]

export
undef : UndefOr a
undef = believe_me undefined

export
def : a -> UndefOr a
def = believe_me

export
maybeToUndef : Maybe a -> UndefOr a
maybeToUndef = maybe undef def

export
fromUndef : UndefOr a -> Maybe a
fromUndef v = if isUndefined v then Nothing else Just (believe_me v)
