module Web.Raw.WheelEventInit

import JS
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.MouseEventInit
import Web.Types.UIEventInit
import Web.Types.WheelEventInit


%default total


export
%foreign "browser:lambda:(a,b,c,d)=> ({deltaX: a,deltaY: b,deltaZ: c,deltaMode: d})"
prim__new :
     UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Bits32
  -> PrimIO WheelEventInit


export
%foreign "browser:lambda:x=>x.deltaMode"
prim__deltaMode : WheelEventInit -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.deltaMode = v}"
prim__setDeltaMode : WheelEventInit -> UndefOr Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.deltaX"
prim__deltaX : WheelEventInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.deltaX = v}"
prim__setDeltaX : WheelEventInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.deltaY"
prim__deltaY : WheelEventInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.deltaY = v}"
prim__setDeltaY : WheelEventInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.deltaZ"
prim__deltaZ : WheelEventInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.deltaZ = v}"
prim__setDeltaZ : WheelEventInit -> UndefOr Double -> PrimIO ()



export
new' :
     (deltaX : Optional Double)
  -> (deltaY : Optional Double)
  -> (deltaZ : Optional Double)
  -> (deltaMode : Optional Bits32)
  -> JSIO WheelEventInit
new' a b c d = primJS $
  WheelEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

export
new : JSIO WheelEventInit
new = primJS $ WheelEventInit.prim__new undef undef undef undef


export
deltaMode :
     {auto _ : Cast t WheelEventInit}
  -> t
  -> Attribute True Optional Bits32
deltaMode v = fromUndefOrPrim
                "WheelEventInit.getdeltaMode"
                prim__deltaMode
                prim__setDeltaMode
                0
                (cast {to = WheelEventInit} v)


export
deltaX : {auto _ : Cast t WheelEventInit} -> t -> Attribute True Optional Double
deltaX v = fromUndefOrPrim
             "WheelEventInit.getdeltaX"
             prim__deltaX
             prim__setDeltaX
             0.0
             (cast {to = WheelEventInit} v)


export
deltaY : {auto _ : Cast t WheelEventInit} -> t -> Attribute True Optional Double
deltaY v = fromUndefOrPrim
             "WheelEventInit.getdeltaY"
             prim__deltaY
             prim__setDeltaY
             0.0
             (cast {to = WheelEventInit} v)


export
deltaZ : {auto _ : Cast t WheelEventInit} -> t -> Attribute True Optional Double
deltaZ v = fromUndefOrPrim
             "WheelEventInit.getdeltaZ"
             prim__deltaZ
             prim__setDeltaZ
             0.0
             (cast {to = WheelEventInit} v)
