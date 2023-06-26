module Web.Raw.CanvasRenderingContext2DSettings

import JS
import Web.Types.CanvasRenderingContext2DSettings


%default total


export
%foreign "browser:lambda:(a,b)=> ({alpha: a,desynchronized: b})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO CanvasRenderingContext2DSettings


export
%foreign "browser:lambda:x=>x.alpha"
prim__alpha : CanvasRenderingContext2DSettings -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.alpha = v}"
prim__setAlpha :
     CanvasRenderingContext2DSettings
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.desynchronized"
prim__desynchronized :
     CanvasRenderingContext2DSettings
  -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.desynchronized = v}"
prim__setDesynchronized :
     CanvasRenderingContext2DSettings
  -> UndefOr Boolean
  -> PrimIO ()



export
new' :
     (alpha : Optional Bool)
  -> (desynchronized : Optional Bool)
  -> JSIO CanvasRenderingContext2DSettings
new' a b = primJS $
  CanvasRenderingContext2DSettings.prim__new (toFFI a) (toFFI b)

export
new : JSIO CanvasRenderingContext2DSettings
new = primJS $ CanvasRenderingContext2DSettings.prim__new undef undef


export
alpha :
     {auto _ : Cast t CanvasRenderingContext2DSettings}
  -> t
  -> Attribute True Optional Bool
alpha v = fromUndefOrPrim
            "CanvasRenderingContext2DSettings.getalpha"
            prim__alpha
            prim__setAlpha
            True
            (cast {to = CanvasRenderingContext2DSettings} v)


export
desynchronized :
     {auto _ : Cast t CanvasRenderingContext2DSettings}
  -> t
  -> Attribute True Optional Bool
desynchronized v = fromUndefOrPrim
                     "CanvasRenderingContext2DSettings.getdesynchronized"
                     prim__desynchronized
                     prim__setDesynchronized
                     False
                     (cast {to = CanvasRenderingContext2DSettings} v)
