module Web.Raw.Client

import JS
import Web.Types.Client
import Web.Types.ClientType
import Web.Types.FrameType
import Web.Types.PostMessageOptions


%default total


export
%foreign "browser:lambda:x=>x.frameType"
prim__frameType : Client -> PrimIO String


export
%foreign "browser:lambda:x=>x.id"
prim__id : Client -> PrimIO String


export
%foreign "browser:lambda:x=>x.type"
prim__type : Client -> PrimIO String


export
%foreign "browser:lambda:x=>x.url"
prim__url : Client -> PrimIO String


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage : Client -> AnyPtr -> Array Object -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage1 : Client -> AnyPtr -> UndefOr PostMessageOptions -> PrimIO ()


export
frameType : {auto _ : Cast t1 Client} -> (obj : t1) -> JSIO FrameType
frameType a = tryJS "Client.frameType" $ Client.prim__frameType (cast a)


export
id : {auto _ : Cast t1 Client} -> (obj : t1) -> JSIO String
id a = primJS $ Client.prim__id (cast a)


export
type : {auto _ : Cast t1 Client} -> (obj : t1) -> JSIO ClientType
type a = tryJS "Client.type" $ Client.prim__type (cast a)


export
url : {auto _ : Cast t1 Client} -> (obj : t1) -> JSIO String
url a = primJS $ Client.prim__url (cast a)


export
postMessage :
     {auto _ : Cast t1 Client}
  -> (obj : t1)
  -> (message : Any)
  -> (transfer : Array Object)
  -> JSIO ()
postMessage a b c = primJS $ Client.prim__postMessage (cast a) (toFFI b) c


export
postMessage1' :
     {auto _ : Cast t1 Client}
  -> {auto _ : Cast t3 PostMessageOptions}
  -> (obj : t1)
  -> (message : Any)
  -> (options : Optional t3)
  -> JSIO ()
postMessage1' a b c = primJS $
  Client.prim__postMessage1 (cast a) (toFFI b) (optUp c)

export
postMessage1 :
     {auto _ : Cast t1 Client}
  -> (obj : t1)
  -> (message : Any)
  -> JSIO ()
postMessage1 a b = primJS $ Client.prim__postMessage1 (cast a) (toFFI b) undef

