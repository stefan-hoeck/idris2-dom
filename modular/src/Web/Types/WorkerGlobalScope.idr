module Web.Types.WorkerGlobalScope

import JS
import Web.Types.EventTarget
import Web.Types.WindowOrWorkerGlobalScope


%default total

export data WorkerGlobalScope : Type where [external]

export
ToFFI WorkerGlobalScope WorkerGlobalScope where toFFI = id

export
FromFFI WorkerGlobalScope WorkerGlobalScope where fromFFI = Just

export
SafeCast WorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "WorkerGlobalScope"


export %inline
Cast WorkerGlobalScope EventTarget where cast = believe_me


export %inline
Cast WorkerGlobalScope Object where cast = believe_me


export %inline
Cast WorkerGlobalScope WindowOrWorkerGlobalScope where cast = believe_me

