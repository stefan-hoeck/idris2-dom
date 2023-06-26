module Web.Raw.AddEventListenerOptions

import JS
import Web.Types.AbortSignal
import Web.Types.AddEventListenerOptions
import Web.Types.EventListenerOptions


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({passive: a,once: b,signal: c})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr AbortSignal
  -> PrimIO AddEventListenerOptions


export
%foreign "browser:lambda:x=>x.once"
prim__once : AddEventListenerOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.once = v}"
prim__setOnce : AddEventListenerOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.passive"
prim__passive : AddEventListenerOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.passive = v}"
prim__setPassive : AddEventListenerOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.signal"
prim__signal : AddEventListenerOptions -> PrimIO (UndefOr AbortSignal)



export
%foreign "browser:lambda:(x,v)=>{x.signal = v}"
prim__setSignal : AddEventListenerOptions -> UndefOr AbortSignal -> PrimIO ()



export
new' :
     (passive : Optional Bool)
  -> (once : Optional Bool)
  -> (signal : Optional AbortSignal)
  -> JSIO AddEventListenerOptions
new' a b c = primJS $
  AddEventListenerOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO AddEventListenerOptions
new = primJS $ AddEventListenerOptions.prim__new undef undef undef


export
once :
     {auto _ : Cast t AddEventListenerOptions}
  -> t
  -> Attribute True Optional Bool
once v = fromUndefOrPrim
           "AddEventListenerOptions.getonce"
           prim__once
           prim__setOnce
           False
           (cast {to = AddEventListenerOptions} v)


export
passive :
     {auto _ : Cast t AddEventListenerOptions}
  -> t
  -> Attribute True Optional Bool
passive v = fromUndefOrPrim
              "AddEventListenerOptions.getpassive"
              prim__passive
              prim__setPassive
              False
              (cast {to = AddEventListenerOptions} v)


export
signal :
     {auto _ : Cast t AddEventListenerOptions}
  -> t
  -> Attribute False Optional AbortSignal
signal v = fromUndefOrPrimNoDefault
             "AddEventListenerOptions.getsignal"
             prim__signal
             prim__setSignal
             (cast {to = AddEventListenerOptions} v)

