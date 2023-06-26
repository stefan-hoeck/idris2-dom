module Web.Types.HTMLCollection

import JS


%default total

export data HTMLCollection : Type where [external]

export
ToFFI HTMLCollection HTMLCollection where toFFI = id

export
FromFFI HTMLCollection HTMLCollection where fromFFI = Just

export
SafeCast HTMLCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLCollection"


export %inline
Cast HTMLCollection Object where cast = believe_me
