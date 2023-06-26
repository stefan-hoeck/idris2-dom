module Web.Raw.ServiceWorkerRegistration

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.NavigationPreloadManager
import Web.Types.ServiceWorker
import Web.Types.ServiceWorkerRegistration
import Web.Types.ServiceWorkerUpdateViaCache


%default total


export
%foreign "browser:lambda:x=>x.active"
prim__active : ServiceWorkerRegistration -> PrimIO (Nullable ServiceWorker)


export
%foreign "browser:lambda:x=>x.installing"
prim__installing : ServiceWorkerRegistration -> PrimIO (Nullable ServiceWorker)


export
%foreign "browser:lambda:x=>x.navigationPreload"
prim__navigationPreload :
     ServiceWorkerRegistration
  -> PrimIO NavigationPreloadManager


export
%foreign "browser:lambda:x=>x.onupdatefound"
prim__onupdatefound :
     ServiceWorkerRegistration
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onupdatefound = v}"
prim__setOnupdatefound :
     ServiceWorkerRegistration
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scope"
prim__scope : ServiceWorkerRegistration -> PrimIO String


export
%foreign "browser:lambda:x=>x.updateViaCache"
prim__updateViaCache : ServiceWorkerRegistration -> PrimIO String


export
%foreign "browser:lambda:x=>x.waiting"
prim__waiting : ServiceWorkerRegistration -> PrimIO (Nullable ServiceWorker)


export
%foreign "browser:lambda:x=>x.unregister()"
prim__unregister : ServiceWorkerRegistration -> PrimIO (Promise Boolean)


export
%foreign "browser:lambda:x=>x.update()"
prim__update : ServiceWorkerRegistration -> PrimIO (Promise Undefined)


export
active : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
active a = tryJS "ServiceWorkerRegistration.active" $
  ServiceWorkerRegistration.prim__active a


export
installing : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
installing a = tryJS "ServiceWorkerRegistration.installing" $
  ServiceWorkerRegistration.prim__installing a


export
navigationPreload :
     (obj : ServiceWorkerRegistration)
  -> JSIO NavigationPreloadManager
navigationPreload a = primJS $
  ServiceWorkerRegistration.prim__navigationPreload a


export
onupdatefound :
     ServiceWorkerRegistration
  -> Attribute False Maybe EventHandlerNonNull
onupdatefound v = fromNullablePrim
                    "ServiceWorkerRegistration.getonupdatefound"
                    prim__onupdatefound
                    prim__setOnupdatefound
                    v


export
scope : (obj : ServiceWorkerRegistration) -> JSIO String
scope a = primJS $ ServiceWorkerRegistration.prim__scope a


export
updateViaCache :
     (obj : ServiceWorkerRegistration)
  -> JSIO ServiceWorkerUpdateViaCache
updateViaCache a = tryJS "ServiceWorkerRegistration.updateViaCache" $
  ServiceWorkerRegistration.prim__updateViaCache a


export
waiting : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
waiting a = tryJS "ServiceWorkerRegistration.waiting" $
  ServiceWorkerRegistration.prim__waiting a


export
unregister : (obj : ServiceWorkerRegistration) -> JSIO (Promise Boolean)
unregister a = primJS $ ServiceWorkerRegistration.prim__unregister a


export
update : (obj : ServiceWorkerRegistration) -> JSIO (Promise Undefined)
update a = primJS $ ServiceWorkerRegistration.prim__update a

