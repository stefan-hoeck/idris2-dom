module Web.Types.HTMLFormControlsCollection

import JS
import Web.Types.HTMLCollection


%default total

export data HTMLFormControlsCollection : Type where [external]

export
ToFFI HTMLFormControlsCollection HTMLFormControlsCollection where toFFI = id

export
FromFFI HTMLFormControlsCollection HTMLFormControlsCollection where fromFFI = Just

export
SafeCast HTMLFormControlsCollection where
  safeCast = unsafeCastOnPrototypeName "HTMLFormControlsCollection"


export %inline
Cast HTMLFormControlsCollection HTMLCollection where cast = believe_me


export %inline
Cast HTMLFormControlsCollection Object where cast = believe_me
