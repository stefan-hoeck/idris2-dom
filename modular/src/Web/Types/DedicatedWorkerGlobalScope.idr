module Web.Types.DedicatedWorkerGlobalScope

import JS
import Web.Types.EventTarget
import Web.Types.WindowOrWorkerGlobalScope
import Web.Types.WorkerGlobalScope


%default total

export data DedicatedWorkerGlobalScope : Type where [external]

export
ToFFI DedicatedWorkerGlobalScope DedicatedWorkerGlobalScope where toFFI = id

export
FromFFI DedicatedWorkerGlobalScope DedicatedWorkerGlobalScope where fromFFI = Just

export
SafeCast DedicatedWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "DedicatedWorkerGlobalScope"


export %inline
Cast DedicatedWorkerGlobalScope WorkerGlobalScope where cast = believe_me


export %inline
Cast DedicatedWorkerGlobalScope EventTarget where cast = believe_me


export %inline
Cast DedicatedWorkerGlobalScope Object where cast = believe_me


export %inline
Cast DedicatedWorkerGlobalScope WindowOrWorkerGlobalScope where cast = believe_me
