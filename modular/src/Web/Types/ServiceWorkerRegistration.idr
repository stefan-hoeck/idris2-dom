module Web.Types.ServiceWorkerRegistration

import JS
import Web.Types.EventTarget


%default total

export data ServiceWorkerRegistration : Type where [external]

export
ToFFI ServiceWorkerRegistration ServiceWorkerRegistration where toFFI = id

export
FromFFI ServiceWorkerRegistration ServiceWorkerRegistration where fromFFI = Just

export
SafeCast ServiceWorkerRegistration where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerRegistration"


export %inline
Cast ServiceWorkerRegistration EventTarget where cast = believe_me


export %inline
Cast ServiceWorkerRegistration Object where cast = believe_me
