module Web.Raw.EventSource

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventSource
import Web.Types.EventSourceInit
import Web.Types.EventTarget


%default total


export
CLOSED : Bits16
CLOSED = 2


export
CONNECTING : Bits16
CONNECTING = 0


export
OPEN : Bits16
OPEN = 1


export
%foreign "browser:lambda:(a,b)=> new EventSource(a,b)"
prim__new : String -> UndefOr EventSourceInit -> PrimIO EventSource


export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror : EventSource -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror : EventSource -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage : EventSource -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage : EventSource -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onopen"
prim__onopen : EventSource -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onopen = v}"
prim__setOnopen : EventSource -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : EventSource -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.url"
prim__url : EventSource -> PrimIO String


export
%foreign "browser:lambda:x=>x.withCredentials"
prim__withCredentials : EventSource -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.close()"
prim__close : EventSource -> PrimIO ()


export
new' :
     {auto _ : Cast t2 EventSourceInit}
  -> (url : String)
  -> (eventSourceInitDict : Optional t2)
  -> JSIO EventSource
new' a b = primJS $ EventSource.prim__new a (optUp b)

export
new : (url : String) -> JSIO EventSource
new a = primJS $ EventSource.prim__new a undef


export
onerror : EventSource -> Attribute False Maybe EventHandlerNonNull
onerror v = fromNullablePrim
              "EventSource.getonerror"
              prim__onerror
              prim__setOnerror
              v


export
onmessage : EventSource -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "EventSource.getonmessage"
                prim__onmessage
                prim__setOnmessage
                v


export
onopen : EventSource -> Attribute False Maybe EventHandlerNonNull
onopen v = fromNullablePrim
             "EventSource.getonopen"
             prim__onopen
             prim__setOnopen
             v


export
readyState : (obj : EventSource) -> JSIO Bits16
readyState a = primJS $ EventSource.prim__readyState a


export
url : (obj : EventSource) -> JSIO String
url a = primJS $ EventSource.prim__url a


export
withCredentials : (obj : EventSource) -> JSIO Bool
withCredentials a = tryJS "EventSource.withCredentials" $
  EventSource.prim__withCredentials a


export
close : (obj : EventSource) -> JSIO ()
close a = primJS $ EventSource.prim__close a
