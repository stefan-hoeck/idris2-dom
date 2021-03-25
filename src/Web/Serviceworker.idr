module Web.Serviceworker

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ExtendableEvent Event where
  cast = believe_me

export
Cast ExtendableEventInit EventInit where
  cast = believe_me

export
Cast ExtendableMessageEvent ExtendableEvent where
  cast = believe_me

export
Cast ExtendableMessageEventInit ExtendableEventInit where
  cast = believe_me

export
Cast FetchEvent ExtendableEvent where
  cast = believe_me

export
Cast FetchEventInit ExtendableEventInit where
  cast = believe_me

export
Cast MultiCacheQueryOptions CacheQueryOptions where
  cast = believe_me

export
Cast ServiceWorker AbstractWorker where
  cast = believe_me

export
Cast ServiceWorker EventTarget where
  cast = believe_me

export
Cast ServiceWorkerContainer EventTarget where
  cast = believe_me

export
Cast ServiceWorkerGlobalScope WorkerGlobalScope where
  cast = believe_me

export
Cast ServiceWorkerRegistration EventTarget where
  cast = believe_me

export
Cast WindowClient Client where
  cast = believe_me