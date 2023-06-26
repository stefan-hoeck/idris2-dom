module Web.Types.ServiceWorkerContainer

import JS
import Web.Types.EventTarget


%default total

export data ServiceWorkerContainer : Type where [external]

export
ToFFI ServiceWorkerContainer ServiceWorkerContainer where toFFI = id

export
FromFFI ServiceWorkerContainer ServiceWorkerContainer where fromFFI = Just

export
SafeCast ServiceWorkerContainer where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerContainer"


export %inline
Cast ServiceWorkerContainer EventTarget where cast = believe_me


export %inline
Cast ServiceWorkerContainer Object where cast = believe_me

