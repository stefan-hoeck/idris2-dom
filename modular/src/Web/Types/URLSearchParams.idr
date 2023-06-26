module Web.Types.URLSearchParams

import JS


%default total

export data URLSearchParams : Type where [external]

export
ToFFI URLSearchParams URLSearchParams where toFFI = id

export
FromFFI URLSearchParams URLSearchParams where fromFFI = Just

export
SafeCast URLSearchParams where
  safeCast = unsafeCastOnPrototypeName "URLSearchParams"


export %inline
Cast URLSearchParams Object where cast = believe_me
