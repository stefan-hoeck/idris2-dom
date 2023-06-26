module Web.Raw.XMLHttpRequestEventTarget

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.XMLHttpRequestEventTarget


%default total


export
%foreign "browser:lambda:x=>x.onabort"
prim__onabort :
     XMLHttpRequestEventTarget
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onabort = v}"
prim__setOnabort :
     XMLHttpRequestEventTarget
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror :
     XMLHttpRequestEventTarget
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror :
     XMLHttpRequestEventTarget
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onload"
prim__onload :
     XMLHttpRequestEventTarget
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onload = v}"
prim__setOnload :
     XMLHttpRequestEventTarget
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onloadend"
prim__onloadend :
     XMLHttpRequestEventTarget
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
prim__setOnloadend :
     XMLHttpRequestEventTarget
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onloadstart"
prim__onloadstart :
     XMLHttpRequestEventTarget
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
prim__setOnloadstart :
     XMLHttpRequestEventTarget
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onprogress"
prim__onprogress :
     XMLHttpRequestEventTarget
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
prim__setOnprogress :
     XMLHttpRequestEventTarget
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ontimeout"
prim__ontimeout :
     XMLHttpRequestEventTarget
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ontimeout = v}"
prim__setOntimeout :
     XMLHttpRequestEventTarget
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
onabort :
     {auto _ : Cast t XMLHttpRequestEventTarget}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onabort v = fromNullablePrim
              "XMLHttpRequestEventTarget.getonabort"
              prim__onabort
              prim__setOnabort
              (cast {to = XMLHttpRequestEventTarget} v)


export
onerror :
     {auto _ : Cast t XMLHttpRequestEventTarget}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onerror v = fromNullablePrim
              "XMLHttpRequestEventTarget.getonerror"
              prim__onerror
              prim__setOnerror
              (cast {to = XMLHttpRequestEventTarget} v)


export
onload :
     {auto _ : Cast t XMLHttpRequestEventTarget}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onload v = fromNullablePrim
             "XMLHttpRequestEventTarget.getonload"
             prim__onload
             prim__setOnload
             (cast {to = XMLHttpRequestEventTarget} v)


export
onloadend :
     {auto _ : Cast t XMLHttpRequestEventTarget}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onloadend v = fromNullablePrim
                "XMLHttpRequestEventTarget.getonloadend"
                prim__onloadend
                prim__setOnloadend
                (cast {to = XMLHttpRequestEventTarget} v)


export
onloadstart :
     {auto _ : Cast t XMLHttpRequestEventTarget}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onloadstart v = fromNullablePrim
                  "XMLHttpRequestEventTarget.getonloadstart"
                  prim__onloadstart
                  prim__setOnloadstart
                  (cast {to = XMLHttpRequestEventTarget} v)


export
onprogress :
     {auto _ : Cast t XMLHttpRequestEventTarget}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onprogress v = fromNullablePrim
                 "XMLHttpRequestEventTarget.getonprogress"
                 prim__onprogress
                 prim__setOnprogress
                 (cast {to = XMLHttpRequestEventTarget} v)


export
ontimeout :
     {auto _ : Cast t XMLHttpRequestEventTarget}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
ontimeout v = fromNullablePrim
                "XMLHttpRequestEventTarget.getontimeout"
                prim__ontimeout
                prim__setOntimeout
                (cast {to = XMLHttpRequestEventTarget} v)
