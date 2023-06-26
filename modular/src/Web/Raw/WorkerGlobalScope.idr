module Web.Raw.WorkerGlobalScope

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.OnErrorEventHandlerNonNull
import Web.Types.WindowOrWorkerGlobalScope
import Web.Types.WorkerGlobalScope
import Web.Types.WorkerLocation
import Web.Types.WorkerNavigator


%default total


export
%foreign "browser:lambda:x=>x.location"
prim__location : WorkerGlobalScope -> PrimIO WorkerLocation


export
%foreign "browser:lambda:x=>x.navigator"
prim__navigator : WorkerGlobalScope -> PrimIO WorkerNavigator


export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror :
     WorkerGlobalScope
  -> PrimIO (Nullable OnErrorEventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror :
     WorkerGlobalScope
  -> Nullable OnErrorEventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onlanguagechange"
prim__onlanguagechange :
     WorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onlanguagechange = v}"
prim__setOnlanguagechange :
     WorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onoffline"
prim__onoffline : WorkerGlobalScope -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onoffline = v}"
prim__setOnoffline :
     WorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ononline"
prim__ononline : WorkerGlobalScope -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ononline = v}"
prim__setOnonline :
     WorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onrejectionhandled"
prim__onrejectionhandled :
     WorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onrejectionhandled = v}"
prim__setOnrejectionhandled :
     WorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onunhandledrejection"
prim__onunhandledrejection :
     WorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onunhandledrejection = v}"
prim__setOnunhandledrejection :
     WorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.self"
prim__self : WorkerGlobalScope -> PrimIO WorkerGlobalScope


export
%foreign "browser:lambda:(x,va)=>x.importScripts(...va())"
prim__importScripts : WorkerGlobalScope -> IO (Array String) -> PrimIO ()


export
location :
     {auto _ : Cast t1 WorkerGlobalScope}
  -> (obj : t1)
  -> JSIO WorkerLocation
location a = primJS $ WorkerGlobalScope.prim__location (cast a)


export
navigator :
     {auto _ : Cast t1 WorkerGlobalScope}
  -> (obj : t1)
  -> JSIO WorkerNavigator
navigator a = primJS $ WorkerGlobalScope.prim__navigator (cast a)


export
onerror :
     {auto _ : Cast t WorkerGlobalScope}
  -> t
  -> Attribute False Maybe OnErrorEventHandlerNonNull
onerror v = fromNullablePrim
              "WorkerGlobalScope.getonerror"
              prim__onerror
              prim__setOnerror
              (cast {to = WorkerGlobalScope} v)


export
onlanguagechange :
     {auto _ : Cast t WorkerGlobalScope}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onlanguagechange v = fromNullablePrim
                       "WorkerGlobalScope.getonlanguagechange"
                       prim__onlanguagechange
                       prim__setOnlanguagechange
                       (cast {to = WorkerGlobalScope} v)


export
onoffline :
     {auto _ : Cast t WorkerGlobalScope}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onoffline v = fromNullablePrim
                "WorkerGlobalScope.getonoffline"
                prim__onoffline
                prim__setOnoffline
                (cast {to = WorkerGlobalScope} v)


export
ononline :
     {auto _ : Cast t WorkerGlobalScope}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ononline v = fromNullablePrim
               "WorkerGlobalScope.getononline"
               prim__ononline
               prim__setOnonline
               (cast {to = WorkerGlobalScope} v)


export
onrejectionhandled :
     {auto _ : Cast t WorkerGlobalScope}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onrejectionhandled v = fromNullablePrim
                         "WorkerGlobalScope.getonrejectionhandled"
                         prim__onrejectionhandled
                         prim__setOnrejectionhandled
                         (cast {to = WorkerGlobalScope} v)


export
onunhandledrejection :
     {auto _ : Cast t WorkerGlobalScope}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onunhandledrejection v = fromNullablePrim
                           "WorkerGlobalScope.getonunhandledrejection"
                           prim__onunhandledrejection
                           prim__setOnunhandledrejection
                           (cast {to = WorkerGlobalScope} v)


export
self :
     {auto _ : Cast t1 WorkerGlobalScope}
  -> (obj : t1)
  -> JSIO WorkerGlobalScope
self a = primJS $ WorkerGlobalScope.prim__self (cast a)


export
importScripts :
     {auto _ : Cast t1 WorkerGlobalScope}
  -> (obj : t1)
  -> (urls : List String)
  -> JSIO ()
importScripts a b = primJS $
  WorkerGlobalScope.prim__importScripts (cast a) (toFFI b)

