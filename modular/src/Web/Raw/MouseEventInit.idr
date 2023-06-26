module Web.Raw.MouseEventInit

import JS
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.EventTarget
import Web.Types.MouseEventInit
import Web.Types.UIEventInit


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g)=> ({button: a,buttons: b,relatedTarget: c,screenX: d,screenY: e,clientX: f,clientY: g})"
prim__new :
     UndefOr Int16
  -> UndefOr Bits16
  -> UndefOr (Nullable EventTarget)
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO MouseEventInit


export
%foreign "browser:lambda:x=>x.button"
prim__button : MouseEventInit -> PrimIO (UndefOr Int16)



export
%foreign "browser:lambda:(x,v)=>{x.button = v}"
prim__setButton : MouseEventInit -> UndefOr Int16 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.buttons"
prim__buttons : MouseEventInit -> PrimIO (UndefOr Bits16)



export
%foreign "browser:lambda:(x,v)=>{x.buttons = v}"
prim__setButtons : MouseEventInit -> UndefOr Bits16 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.clientX"
prim__clientX : MouseEventInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.clientX = v}"
prim__setClientX : MouseEventInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.clientY"
prim__clientY : MouseEventInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.clientY = v}"
prim__setClientY : MouseEventInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.relatedTarget"
prim__relatedTarget : MouseEventInit -> PrimIO (UndefOr (Nullable EventTarget))



export
%foreign "browser:lambda:(x,v)=>{x.relatedTarget = v}"
prim__setRelatedTarget :
     MouseEventInit
  -> UndefOr (Nullable EventTarget)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.screenX"
prim__screenX : MouseEventInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.screenX = v}"
prim__setScreenX : MouseEventInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.screenY"
prim__screenY : MouseEventInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.screenY = v}"
prim__setScreenY : MouseEventInit -> UndefOr Double -> PrimIO ()



export
new' :
     {auto _ : Cast t3 EventTarget}
  -> (button : Optional Int16)
  -> (buttons : Optional Bits16)
  -> (relatedTarget : Optional (Maybe t3))
  -> (screenX : Optional Double)
  -> (screenY : Optional Double)
  -> (clientX : Optional Double)
  -> (clientY : Optional Double)
  -> JSIO MouseEventInit
new' a b c d e f g = primJS $
  MouseEventInit.prim__new
    (toFFI a)
    (toFFI b)
    (omyUp c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)

export
new : JSIO MouseEventInit
new = primJS $
  MouseEventInit.prim__new undef undef undef undef undef undef undef


export
button : {auto _ : Cast t MouseEventInit} -> t -> Attribute True Optional Int16
button v = fromUndefOrPrim
             "MouseEventInit.getbutton"
             prim__button
             prim__setButton
             0
             (cast {to = MouseEventInit} v)


export
buttons :
     {auto _ : Cast t MouseEventInit}
  -> t
  -> Attribute True Optional Bits16
buttons v = fromUndefOrPrim
              "MouseEventInit.getbuttons"
              prim__buttons
              prim__setButtons
              0
              (cast {to = MouseEventInit} v)


export
clientX :
     {auto _ : Cast t MouseEventInit}
  -> t
  -> Attribute True Optional Double
clientX v = fromUndefOrPrim
              "MouseEventInit.getclientX"
              prim__clientX
              prim__setClientX
              0.0
              (cast {to = MouseEventInit} v)


export
clientY :
     {auto _ : Cast t MouseEventInit}
  -> t
  -> Attribute True Optional Double
clientY v = fromUndefOrPrim
              "MouseEventInit.getclientY"
              prim__clientY
              prim__setClientY
              0.0
              (cast {to = MouseEventInit} v)


export
relatedTarget :
     {auto _ : Cast t MouseEventInit}
  -> t
  -> Attribute True Optional (Maybe EventTarget)
relatedTarget v = fromUndefOrPrim
                    "MouseEventInit.getrelatedTarget"
                    prim__relatedTarget
                    prim__setRelatedTarget
                    Nothing
                    (cast {to = MouseEventInit} v)


export
screenX :
     {auto _ : Cast t MouseEventInit}
  -> t
  -> Attribute True Optional Double
screenX v = fromUndefOrPrim
              "MouseEventInit.getscreenX"
              prim__screenX
              prim__setScreenX
              0.0
              (cast {to = MouseEventInit} v)


export
screenY :
     {auto _ : Cast t MouseEventInit}
  -> t
  -> Attribute True Optional Double
screenY v = fromUndefOrPrim
              "MouseEventInit.getscreenY"
              prim__screenY
              prim__setScreenY
              0.0
              (cast {to = MouseEventInit} v)

