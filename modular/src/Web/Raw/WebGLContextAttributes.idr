module Web.Raw.WebGLContextAttributes

import JS
import Web.Types.WebGLContextAttributes
import Web.Types.WebGLPowerPreference


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i)=> ({alpha: a,depth: b,stencil: c,antialias: d,premultipliedAlpha: e,preserveDrawingBuffer: f,powerPreference: g,failIfMajorPerformanceCaveat: h,desynchronized: i})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr String
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO WebGLContextAttributes


export
%foreign "browser:lambda:x=>x.alpha"
prim__alpha : WebGLContextAttributes -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.alpha = v}"
prim__setAlpha : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.antialias"
prim__antialias : WebGLContextAttributes -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.antialias = v}"
prim__setAntialias : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.depth"
prim__depth : WebGLContextAttributes -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.depth = v}"
prim__setDepth : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.desynchronized"
prim__desynchronized : WebGLContextAttributes -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.desynchronized = v}"
prim__setDesynchronized : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.failIfMajorPerformanceCaveat"
prim__failIfMajorPerformanceCaveat :
     WebGLContextAttributes
  -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.failIfMajorPerformanceCaveat = v}"
prim__setFailIfMajorPerformanceCaveat :
     WebGLContextAttributes
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.powerPreference"
prim__powerPreference : WebGLContextAttributes -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.powerPreference = v}"
prim__setPowerPreference : WebGLContextAttributes -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.premultipliedAlpha"
prim__premultipliedAlpha : WebGLContextAttributes -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.premultipliedAlpha = v}"
prim__setPremultipliedAlpha :
     WebGLContextAttributes
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.preserveDrawingBuffer"
prim__preserveDrawingBuffer : WebGLContextAttributes -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.preserveDrawingBuffer = v}"
prim__setPreserveDrawingBuffer :
     WebGLContextAttributes
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.stencil"
prim__stencil : WebGLContextAttributes -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.stencil = v}"
prim__setStencil : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()



export
new' :
     (alpha : Optional Bool)
  -> (depth : Optional Bool)
  -> (stencil : Optional Bool)
  -> (antialias : Optional Bool)
  -> (premultipliedAlpha : Optional Bool)
  -> (preserveDrawingBuffer : Optional Bool)
  -> (powerPreference : Optional WebGLPowerPreference)
  -> (failIfMajorPerformanceCaveat : Optional Bool)
  -> (desynchronized : Optional Bool)
  -> JSIO WebGLContextAttributes
new' a b c d e f g h i = primJS $
  WebGLContextAttributes.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)
    (toFFI i)

export
new : JSIO WebGLContextAttributes
new = primJS $
  WebGLContextAttributes.prim__new
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef


export
alpha :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute True Optional Bool
alpha v = fromUndefOrPrim
            "WebGLContextAttributes.getalpha"
            prim__alpha
            prim__setAlpha
            True
            (cast {to = WebGLContextAttributes} v)


export
antialias :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute True Optional Bool
antialias v = fromUndefOrPrim
                "WebGLContextAttributes.getantialias"
                prim__antialias
                prim__setAntialias
                True
                (cast {to = WebGLContextAttributes} v)


export
depth :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute True Optional Bool
depth v = fromUndefOrPrim
            "WebGLContextAttributes.getdepth"
            prim__depth
            prim__setDepth
            True
            (cast {to = WebGLContextAttributes} v)


export
desynchronized :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute True Optional Bool
desynchronized v = fromUndefOrPrim
                     "WebGLContextAttributes.getdesynchronized"
                     prim__desynchronized
                     prim__setDesynchronized
                     False
                     (cast {to = WebGLContextAttributes} v)


export
failIfMajorPerformanceCaveat :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute True Optional Bool
failIfMajorPerformanceCaveat v = fromUndefOrPrim
                                   "WebGLContextAttributes.getfailIfMajorPerformanceCaveat"
                                   prim__failIfMajorPerformanceCaveat
                                   prim__setFailIfMajorPerformanceCaveat
                                   False
                                   (cast {to = WebGLContextAttributes} v)


export
powerPreference :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute False Optional WebGLPowerPreference
powerPreference v = fromUndefOrPrimNoDefault
                      "WebGLContextAttributes.getpowerPreference"
                      prim__powerPreference
                      prim__setPowerPreference
                      (cast {to = WebGLContextAttributes} v)


export
premultipliedAlpha :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute True Optional Bool
premultipliedAlpha v = fromUndefOrPrim
                         "WebGLContextAttributes.getpremultipliedAlpha"
                         prim__premultipliedAlpha
                         prim__setPremultipliedAlpha
                         True
                         (cast {to = WebGLContextAttributes} v)


export
preserveDrawingBuffer :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute True Optional Bool
preserveDrawingBuffer v = fromUndefOrPrim
                            "WebGLContextAttributes.getpreserveDrawingBuffer"
                            prim__preserveDrawingBuffer
                            prim__setPreserveDrawingBuffer
                            False
                            (cast {to = WebGLContextAttributes} v)


export
stencil :
     {auto _ : Cast t WebGLContextAttributes}
  -> t
  -> Attribute True Optional Bool
stencil v = fromUndefOrPrim
              "WebGLContextAttributes.getstencil"
              prim__stencil
              prim__setStencil
              False
              (cast {to = WebGLContextAttributes} v)

