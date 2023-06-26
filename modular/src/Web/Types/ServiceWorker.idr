module Web.Types.ServiceWorker

import JS
import Web.Types.AbstractWorker
import Web.Types.EventTarget


%default total

export data ServiceWorker : Type where [external]

export
ToFFI ServiceWorker ServiceWorker where toFFI = id

export
FromFFI ServiceWorker ServiceWorker where fromFFI = Just

export
SafeCast ServiceWorker where
  safeCast = unsafeCastOnPrototypeName "ServiceWorker"


export %inline
Cast ServiceWorker EventTarget where cast = believe_me


export %inline
Cast ServiceWorker Object where cast = believe_me


export %inline
Cast ServiceWorker AbstractWorker where cast = believe_me

