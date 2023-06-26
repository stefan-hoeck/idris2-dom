module Web.Raw.MessageEventInit

import JS
import Web.Types.EventInit
import Web.Types.MessageEventInit
import Web.Types.MessagePort
import Web.Types.ServiceWorker


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({data: a,origin: b,lastEventId: c,source: d,ports: e})"
prim__new :
     UndefOr AnyPtr
  -> UndefOr String
  -> UndefOr String
  -> UndefOr (Nullable (Union3 WindowProxy MessagePort ServiceWorker))
  -> UndefOr (Array MessagePort)
  -> PrimIO MessageEventInit


export
%foreign "browser:lambda:x=>x.data"
prim__data : MessageEventInit -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.data = v}"
prim__setData : MessageEventInit -> UndefOr AnyPtr -> PrimIO ()



export
%foreign "browser:lambda:x=>x.lastEventId"
prim__lastEventId : MessageEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.lastEventId = v}"
prim__setLastEventId : MessageEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.origin"
prim__origin : MessageEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.origin = v}"
prim__setOrigin : MessageEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ports"
prim__ports : MessageEventInit -> PrimIO (UndefOr (Array MessagePort))



export
%foreign "browser:lambda:(x,v)=>{x.ports = v}"
prim__setPorts : MessageEventInit -> UndefOr (Array MessagePort) -> PrimIO ()



export
%foreign "browser:lambda:x=>x.source"
prim__source :
     MessageEventInit
  -> PrimIO (UndefOr (Nullable (Union3 WindowProxy MessagePort ServiceWorker)))



export
%foreign "browser:lambda:(x,v)=>{x.source = v}"
prim__setSource :
     MessageEventInit
  -> UndefOr (Nullable (Union3 WindowProxy MessagePort ServiceWorker))
  -> PrimIO ()



export
new' :
     (data_ : Optional Any)
  -> (origin : Optional String)
  -> (lastEventId : Optional String)
  -> (source : Optional
                 (Maybe (HSum [WindowProxy, MessagePort, ServiceWorker])))
  -> (ports : Optional (Array MessagePort))
  -> JSIO MessageEventInit
new' a b c d e = primJS $
  MessageEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
new : JSIO MessageEventInit
new = primJS $ MessageEventInit.prim__new undef undef undef undef undef


export
data_ : {auto _ : Cast t MessageEventInit} -> t -> Attribute True Optional Any
data_ v = fromUndefOrPrim
            "MessageEventInit.getdata"
            prim__data
            prim__setData
            (MkAny $ null {a = ()})
            (cast {to = MessageEventInit} v)


export
lastEventId :
     {auto _ : Cast t MessageEventInit}
  -> t
  -> Attribute True Optional String
lastEventId v = fromUndefOrPrim
                  "MessageEventInit.getlastEventId"
                  prim__lastEventId
                  prim__setLastEventId
                  ""
                  (cast {to = MessageEventInit} v)


export
origin :
     {auto _ : Cast t MessageEventInit}
  -> t
  -> Attribute True Optional String
origin v = fromUndefOrPrim
             "MessageEventInit.getorigin"
             prim__origin
             prim__setOrigin
             ""
             (cast {to = MessageEventInit} v)


export
ports :
     {auto _ : Cast t MessageEventInit}
  -> t
  -> Attribute False Optional (Array MessagePort)
ports v = fromUndefOrPrimNoDefault
            "MessageEventInit.getports"
            prim__ports
            prim__setPorts
            (cast {to = MessageEventInit} v)


export
source :
     {auto _ : Cast t MessageEventInit}
  -> t
  -> Attribute True Optional (Maybe
                                (Union3 WindowProxy MessagePort ServiceWorker))
source v = fromUndefOrPrim
             "MessageEventInit.getsource"
             prim__source
             prim__setSource
             Nothing
             (cast {to = MessageEventInit} v)

