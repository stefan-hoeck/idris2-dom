module Web.Types.SharedWorker

import JS
import Web.Types.AbstractWorker
import Web.Types.EventTarget


%default total

export data SharedWorker : Type where [external]

export
ToFFI SharedWorker SharedWorker where toFFI = id

export
FromFFI SharedWorker SharedWorker where fromFFI = Just

export
SafeCast SharedWorker where
  safeCast = unsafeCastOnPrototypeName "SharedWorker"


export %inline
Cast SharedWorker EventTarget where cast = believe_me


export %inline
Cast SharedWorker Object where cast = believe_me


export %inline
Cast SharedWorker AbstractWorker where cast = believe_me
