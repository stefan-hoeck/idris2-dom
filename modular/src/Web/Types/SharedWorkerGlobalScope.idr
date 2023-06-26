module Web.Types.SharedWorkerGlobalScope

import JS
import Web.Types.EventTarget
import Web.Types.WindowOrWorkerGlobalScope
import Web.Types.WorkerGlobalScope


%default total

export data SharedWorkerGlobalScope : Type where [external]

export
ToFFI SharedWorkerGlobalScope SharedWorkerGlobalScope where toFFI = id

export
FromFFI SharedWorkerGlobalScope SharedWorkerGlobalScope where fromFFI = Just

export
SafeCast SharedWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "SharedWorkerGlobalScope"


export %inline
Cast SharedWorkerGlobalScope WorkerGlobalScope where cast = believe_me


export %inline
Cast SharedWorkerGlobalScope EventTarget where cast = believe_me


export %inline
Cast SharedWorkerGlobalScope Object where cast = believe_me


export %inline
Cast SharedWorkerGlobalScope WindowOrWorkerGlobalScope where cast = believe_me
