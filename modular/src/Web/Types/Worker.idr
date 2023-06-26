module Web.Types.Worker

import JS
import Web.Types.AbstractWorker
import Web.Types.EventTarget


%default total

export data Worker : Type where [external]

export
ToFFI Worker Worker where toFFI = id

export
FromFFI Worker Worker where fromFFI = Just

export
SafeCast Worker where
  safeCast = unsafeCastOnPrototypeName "Worker"


export %inline
Cast Worker EventTarget where cast = believe_me


export %inline
Cast Worker Object where cast = believe_me


export %inline
Cast Worker AbstractWorker where cast = believe_me

