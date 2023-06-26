module Web.Types.ServiceWorkerGlobalScope

import JS
import Web.Types.EventTarget
import Web.Types.WindowOrWorkerGlobalScope
import Web.Types.WorkerGlobalScope


%default total

export data ServiceWorkerGlobalScope : Type where [external]

export
ToFFI ServiceWorkerGlobalScope ServiceWorkerGlobalScope where toFFI = id

export
FromFFI ServiceWorkerGlobalScope ServiceWorkerGlobalScope where fromFFI = Just

export
SafeCast ServiceWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerGlobalScope"


export %inline
Cast ServiceWorkerGlobalScope WorkerGlobalScope where cast = believe_me


export %inline
Cast ServiceWorkerGlobalScope EventTarget where cast = believe_me


export %inline
Cast ServiceWorkerGlobalScope Object where cast = believe_me


export %inline
Cast ServiceWorkerGlobalScope WindowOrWorkerGlobalScope where cast = believe_me

