module Web.Types.HTMLAllCollection

import JS


%default total

export data HTMLAllCollection : Type where [external]

export
ToFFI HTMLAllCollection HTMLAllCollection where toFFI = id

export
FromFFI HTMLAllCollection HTMLAllCollection where fromFFI = Just

export
SafeCast HTMLAllCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLAllCollection"


export %inline
Cast HTMLAllCollection Object where cast = believe_me
