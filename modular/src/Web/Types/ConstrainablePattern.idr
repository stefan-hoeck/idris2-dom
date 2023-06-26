module Web.Types.ConstrainablePattern

import JS


%default total

export data ConstrainablePattern : Type where [external]

export
ToFFI ConstrainablePattern ConstrainablePattern where toFFI = id

export
FromFFI ConstrainablePattern ConstrainablePattern where fromFFI = Just

export
SafeCast ConstrainablePattern where
  safeCast = unsafeCastOnPrototypeName "ConstrainablePattern"


export %inline
Cast ConstrainablePattern Object where cast = believe_me

