module Web.Raw.ExtendableMessageEvent

import JS
import Web.Types.Client
import Web.Types.Event
import Web.Types.ExtendableEvent
import Web.Types.ExtendableMessageEvent
import Web.Types.ExtendableMessageEventInit
import Web.Types.MessagePort
import Web.Types.ServiceWorker


%default total


export
%foreign "browser:lambda:(a,b)=> new ExtendableMessageEvent(a,b)"
prim__new :
     String
  -> UndefOr ExtendableMessageEventInit
  -> PrimIO ExtendableMessageEvent


export
%foreign "browser:lambda:x=>x.data"
prim__data : ExtendableMessageEvent -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.lastEventId"
prim__lastEventId : ExtendableMessageEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.origin"
prim__origin : ExtendableMessageEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.ports"
prim__ports : ExtendableMessageEvent -> PrimIO (Array MessagePort)


export
%foreign "browser:lambda:x=>x.source"
prim__source :
     ExtendableMessageEvent
  -> PrimIO (Nullable (Union3 Client ServiceWorker MessagePort))


export
new' :
     {auto _ : Cast t2 ExtendableMessageEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO ExtendableMessageEvent
new' a b = primJS $ ExtendableMessageEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO ExtendableMessageEvent
new a = primJS $ ExtendableMessageEvent.prim__new a undef


export
data_ : (obj : ExtendableMessageEvent) -> JSIO Any
data_ a = tryJS "ExtendableMessageEvent.data_" $
  ExtendableMessageEvent.prim__data a


export
lastEventId : (obj : ExtendableMessageEvent) -> JSIO String
lastEventId a = primJS $ ExtendableMessageEvent.prim__lastEventId a


export
origin : (obj : ExtendableMessageEvent) -> JSIO String
origin a = primJS $ ExtendableMessageEvent.prim__origin a


export
ports : (obj : ExtendableMessageEvent) -> JSIO (Array MessagePort)
ports a = primJS $ ExtendableMessageEvent.prim__ports a


export
source :
     (obj : ExtendableMessageEvent)
  -> JSIO (Maybe (HSum [Client, ServiceWorker, MessagePort]))
source a = tryJS "ExtendableMessageEvent.source" $
  ExtendableMessageEvent.prim__source a
