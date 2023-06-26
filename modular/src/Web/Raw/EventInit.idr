module Web.Raw.EventInit

import JS
import Web.Types.EventInit


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({bubbles: a,cancelable: b,composed: c})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO EventInit


export
%foreign "browser:lambda:x=>x.bubbles"
prim__bubbles : EventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.bubbles = v}"
prim__setBubbles : EventInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cancelable"
prim__cancelable : EventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.cancelable = v}"
prim__setCancelable : EventInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.composed"
prim__composed : EventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.composed = v}"
prim__setComposed : EventInit -> UndefOr Boolean -> PrimIO ()



export
new' :
     (bubbles : Optional Bool)
  -> (cancelable : Optional Bool)
  -> (composed : Optional Bool)
  -> JSIO EventInit
new' a b c = primJS $ EventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO EventInit
new = primJS $ EventInit.prim__new undef undef undef


export
bubbles : {auto _ : Cast t EventInit} -> t -> Attribute True Optional Bool
bubbles v = fromUndefOrPrim
              "EventInit.getbubbles"
              prim__bubbles
              prim__setBubbles
              False
              (cast {to = EventInit} v)


export
cancelable : {auto _ : Cast t EventInit} -> t -> Attribute True Optional Bool
cancelable v = fromUndefOrPrim
                 "EventInit.getcancelable"
                 prim__cancelable
                 prim__setCancelable
                 False
                 (cast {to = EventInit} v)


export
composed : {auto _ : Cast t EventInit} -> t -> Attribute True Optional Bool
composed v = fromUndefOrPrim
               "EventInit.getcomposed"
               prim__composed
               prim__setComposed
               False
               (cast {to = EventInit} v)
