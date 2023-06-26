module Web.Types.HTMLOptionsCollection

import JS
import Web.Types.HTMLCollection


%default total

export data HTMLOptionsCollection : Type where [external]

export
ToFFI HTMLOptionsCollection HTMLOptionsCollection where toFFI = id

export
FromFFI HTMLOptionsCollection HTMLOptionsCollection where fromFFI = Just

export
SafeCast HTMLOptionsCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLOptionsCollection"


export %inline
Cast HTMLOptionsCollection HTMLCollection where cast = believe_me


export %inline
Cast HTMLOptionsCollection Object where cast = believe_me

