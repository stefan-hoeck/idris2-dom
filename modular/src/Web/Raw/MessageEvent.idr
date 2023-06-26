module Web.Raw.MessageEvent

import JS
import Web.Types.Event
import Web.Types.MessageEvent
import Web.Types.MessageEventInit
import Web.Types.MessagePort
import Web.Types.ServiceWorker


%default total


export
%foreign "browser:lambda:(a,b)=> new MessageEvent(a,b)"
prim__new : String -> UndefOr MessageEventInit -> PrimIO MessageEvent


export
%foreign "browser:lambda:x=>x.data"
prim__data : MessageEvent -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.lastEventId"
prim__lastEventId : MessageEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.origin"
prim__origin : MessageEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.ports"
prim__ports : MessageEvent -> PrimIO (Array MessagePort)


export
%foreign "browser:lambda:x=>x.source"
prim__source :
     MessageEvent
  -> PrimIO (Nullable (Union3 WindowProxy MessagePort ServiceWorker))


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.initMessageEvent(a,b,c,d,e,f,g,h)"
prim__initMessageEvent :
     MessageEvent
  -> String
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr AnyPtr
  -> UndefOr String
  -> UndefOr String
  -> UndefOr (Nullable (Union3 WindowProxy MessagePort ServiceWorker))
  -> UndefOr (Array MessagePort)
  -> PrimIO ()


export
new' :
     {auto _ : Cast t2 MessageEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO MessageEvent
new' a b = primJS $ MessageEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO MessageEvent
new a = primJS $ MessageEvent.prim__new a undef


export
data_ : (obj : MessageEvent) -> JSIO Any
data_ a = tryJS "MessageEvent.data_" $ MessageEvent.prim__data a


export
lastEventId : (obj : MessageEvent) -> JSIO String
lastEventId a = primJS $ MessageEvent.prim__lastEventId a


export
origin : (obj : MessageEvent) -> JSIO String
origin a = primJS $ MessageEvent.prim__origin a


export
ports : (obj : MessageEvent) -> JSIO (Array MessagePort)
ports a = primJS $ MessageEvent.prim__ports a


export
source :
     (obj : MessageEvent)
  -> JSIO (Maybe (Union3 WindowProxy MessagePort ServiceWorker))
source a = tryJS "MessageEvent.source" $ MessageEvent.prim__source a


export
initMessageEvent' :
     (obj : MessageEvent)
  -> (type : String)
  -> (bubbles : Optional Bool)
  -> (cancelable : Optional Bool)
  -> (data_ : Optional Any)
  -> (origin : Optional String)
  -> (lastEventId : Optional String)
  -> (source : Optional
                 (Maybe (HSum [WindowProxy, MessagePort, ServiceWorker])))
  -> (ports : Optional (Array MessagePort))
  -> JSIO ()
initMessageEvent' a b c d e f g h i = primJS $
  MessageEvent.prim__initMessageEvent
    a
    b
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)
    (toFFI i)

export
initMessageEvent : (obj : MessageEvent) -> (type : String) -> JSIO ()
initMessageEvent a b = primJS $
  MessageEvent.prim__initMessageEvent
    a
    b
    undef
    undef
    undef
    undef
    undef
    undef
    undef
