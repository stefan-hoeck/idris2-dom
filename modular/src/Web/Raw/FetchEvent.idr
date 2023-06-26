module Web.Raw.FetchEvent

import JS
import Web.Types.Event
import Web.Types.ExtendableEvent
import Web.Types.FetchEvent
import Web.Types.FetchEventInit
import Web.Types.Request
import Web.Types.Response


%default total


export
%foreign "browser:lambda:(a,b)=> new FetchEvent(a,b)"
prim__new : String -> FetchEventInit -> PrimIO FetchEvent


export
%foreign "browser:lambda:x=>x.clientId"
prim__clientId : FetchEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.handled"
prim__handled : FetchEvent -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.preloadResponse"
prim__preloadResponse : FetchEvent -> PrimIO (Promise AnyPtr)


export
%foreign "browser:lambda:x=>x.replacesClientId"
prim__replacesClientId : FetchEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.request"
prim__request : FetchEvent -> PrimIO Request


export
%foreign "browser:lambda:x=>x.resultingClientId"
prim__resultingClientId : FetchEvent -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.respondWith(a)"
prim__respondWith : FetchEvent -> Promise Response -> PrimIO ()


export
new :
     {auto _ : Cast t2 FetchEventInit}
  -> (type : String)
  -> (eventInitDict : t2)
  -> JSIO FetchEvent
new a b = primJS $ FetchEvent.prim__new a (cast b)


export
clientId : (obj : FetchEvent) -> JSIO String
clientId a = primJS $ FetchEvent.prim__clientId a


export
handled : (obj : FetchEvent) -> JSIO (Promise Undefined)
handled a = primJS $ FetchEvent.prim__handled a


export
preloadResponse : (obj : FetchEvent) -> JSIO (Promise AnyPtr)
preloadResponse a = primJS $ FetchEvent.prim__preloadResponse a


export
replacesClientId : (obj : FetchEvent) -> JSIO String
replacesClientId a = primJS $ FetchEvent.prim__replacesClientId a


export
request : (obj : FetchEvent) -> JSIO Request
request a = primJS $ FetchEvent.prim__request a


export
resultingClientId : (obj : FetchEvent) -> JSIO String
resultingClientId a = primJS $ FetchEvent.prim__resultingClientId a


export
respondWith : (obj : FetchEvent) -> (r : Promise Response) -> JSIO ()
respondWith a b = primJS $ FetchEvent.prim__respondWith a b
