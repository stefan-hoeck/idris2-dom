module Web.Raw.ExtendableMessageEventInit

import JS
import Web.Types.Client
import Web.Types.EventInit
import Web.Types.ExtendableEventInit
import Web.Types.ExtendableMessageEventInit
import Web.Types.MessagePort
import Web.Types.ServiceWorker


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({data: a,origin: b,lastEventId: c,source: d,ports: e})"
prim__new :
     UndefOr AnyPtr
  -> UndefOr String
  -> UndefOr String
  -> UndefOr (Nullable (Union3 Client ServiceWorker MessagePort))
  -> UndefOr (Array MessagePort)
  -> PrimIO ExtendableMessageEventInit


export
%foreign "browser:lambda:x=>x.data"
prim__data : ExtendableMessageEventInit -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.data = v}"
prim__setData : ExtendableMessageEventInit -> UndefOr AnyPtr -> PrimIO ()



export
%foreign "browser:lambda:x=>x.lastEventId"
prim__lastEventId : ExtendableMessageEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.lastEventId = v}"
prim__setLastEventId : ExtendableMessageEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.origin"
prim__origin : ExtendableMessageEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.origin = v}"
prim__setOrigin : ExtendableMessageEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ports"
prim__ports : ExtendableMessageEventInit -> PrimIO (UndefOr (Array MessagePort))



export
%foreign "browser:lambda:(x,v)=>{x.ports = v}"
prim__setPorts :
     ExtendableMessageEventInit
  -> UndefOr (Array MessagePort)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.source"
prim__source :
     ExtendableMessageEventInit
  -> PrimIO (UndefOr (Nullable (Union3 Client ServiceWorker MessagePort)))



export
%foreign "browser:lambda:(x,v)=>{x.source = v}"
prim__setSource :
     ExtendableMessageEventInit
  -> UndefOr (Nullable (Union3 Client ServiceWorker MessagePort))
  -> PrimIO ()



export
new' :
     (data_ : Optional Any)
  -> (origin : Optional String)
  -> (lastEventId : Optional String)
  -> (source : Optional (Maybe (HSum [Client, ServiceWorker, MessagePort])))
  -> (ports : Optional (Array MessagePort))
  -> JSIO ExtendableMessageEventInit
new' a b c d e = primJS $
  ExtendableMessageEventInit.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
new : JSIO ExtendableMessageEventInit
new = primJS $
  ExtendableMessageEventInit.prim__new undef undef undef undef undef


export
data_ :
     {auto _ : Cast t ExtendableMessageEventInit}
  -> t
  -> Attribute True Optional Any
data_ v = fromUndefOrPrim
            "ExtendableMessageEventInit.getdata"
            prim__data
            prim__setData
            (MkAny $ null {a = ()})
            (cast {to = ExtendableMessageEventInit} v)


export
lastEventId :
     {auto _ : Cast t ExtendableMessageEventInit}
  -> t
  -> Attribute True Optional String
lastEventId v = fromUndefOrPrim
                  "ExtendableMessageEventInit.getlastEventId"
                  prim__lastEventId
                  prim__setLastEventId
                  ""
                  (cast {to = ExtendableMessageEventInit} v)


export
origin :
     {auto _ : Cast t ExtendableMessageEventInit}
  -> t
  -> Attribute True Optional String
origin v = fromUndefOrPrim
             "ExtendableMessageEventInit.getorigin"
             prim__origin
             prim__setOrigin
             ""
             (cast {to = ExtendableMessageEventInit} v)


export
ports :
     {auto _ : Cast t ExtendableMessageEventInit}
  -> t
  -> Attribute False Optional (Array MessagePort)
ports v = fromUndefOrPrimNoDefault
            "ExtendableMessageEventInit.getports"
            prim__ports
            prim__setPorts
            (cast {to = ExtendableMessageEventInit} v)


export
source :
     {auto _ : Cast t ExtendableMessageEventInit}
  -> t
  -> Attribute True Optional (Maybe (HSum [Client, ServiceWorker, MessagePort]))
source v = fromUndefOrPrim
             "ExtendableMessageEventInit.getsource"
             prim__source
             prim__setSource
             Nothing
             (cast {to = ExtendableMessageEventInit} v)
