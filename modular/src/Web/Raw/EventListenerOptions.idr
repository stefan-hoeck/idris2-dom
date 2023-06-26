module Web.Raw.EventListenerOptions

import JS
import Web.Types.EventListenerOptions


%default total


export
%foreign "browser:lambda:(a)=> ({capture: a})"
prim__new : UndefOr Boolean -> PrimIO EventListenerOptions


export
%foreign "browser:lambda:x=>x.capture"
prim__capture : EventListenerOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.capture = v}"
prim__setCapture : EventListenerOptions -> UndefOr Boolean -> PrimIO ()



export
new' : (capture : Optional Bool) -> JSIO EventListenerOptions
new' a = primJS $ EventListenerOptions.prim__new (toFFI a)

export
new : JSIO EventListenerOptions
new = primJS $ EventListenerOptions.prim__new undef


export
capture :
     {auto _ : Cast t EventListenerOptions}
  -> t
  -> Attribute True Optional Bool
capture v = fromUndefOrPrim
              "EventListenerOptions.getcapture"
              prim__capture
              prim__setCapture
              False
              (cast {to = EventListenerOptions} v)

