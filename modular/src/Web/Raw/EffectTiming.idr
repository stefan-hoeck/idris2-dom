module Web.Raw.EffectTiming

import JS
import Web.Types.EffectTiming
import Web.Types.FillMode
import Web.Types.PlaybackDirection


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h)=> ({delay: a,endDelay: b,fill: c,iterationStart: d,iterations: e,duration: f,direction: g,easing: h})"
prim__new :
     UndefOr Double
  -> UndefOr Double
  -> UndefOr String
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr (Union2 Double String)
  -> UndefOr String
  -> UndefOr String
  -> PrimIO EffectTiming


export
%foreign "browser:lambda:x=>x.delay"
prim__delay : EffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.delay = v}"
prim__setDelay : EffectTiming -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.direction"
prim__direction : EffectTiming -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.direction = v}"
prim__setDirection : EffectTiming -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.duration"
prim__duration : EffectTiming -> PrimIO (UndefOr (Union2 Double String))



export
%foreign "browser:lambda:(x,v)=>{x.duration = v}"
prim__setDuration : EffectTiming -> UndefOr (Union2 Double String) -> PrimIO ()



export
%foreign "browser:lambda:x=>x.easing"
prim__easing : EffectTiming -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.easing = v}"
prim__setEasing : EffectTiming -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.endDelay"
prim__endDelay : EffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.endDelay = v}"
prim__setEndDelay : EffectTiming -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.fill"
prim__fill : EffectTiming -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.fill = v}"
prim__setFill : EffectTiming -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.iterationStart"
prim__iterationStart : EffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.iterationStart = v}"
prim__setIterationStart : EffectTiming -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.iterations"
prim__iterations : EffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.iterations = v}"
prim__setIterations : EffectTiming -> UndefOr Double -> PrimIO ()



export
new' :
     (delay : Optional Double)
  -> (endDelay : Optional Double)
  -> (fill : Optional FillMode)
  -> (iterationStart : Optional Double)
  -> (iterations : Optional Double)
  -> (duration : Optional (HSum [Double, String]))
  -> (direction : Optional PlaybackDirection)
  -> (easing : Optional String)
  -> JSIO EffectTiming
new' a b c d e f g h = primJS $
  EffectTiming.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)

export
new : JSIO EffectTiming
new = primJS $
  EffectTiming.prim__new undef undef undef undef undef undef undef undef


export
delay : {auto _ : Cast t EffectTiming} -> t -> Attribute True Optional Double
delay v = fromUndefOrPrim
            "EffectTiming.getdelay"
            prim__delay
            prim__setDelay
            0
            (cast {to = EffectTiming} v)


export
direction :
     {auto _ : Cast t EffectTiming}
  -> t
  -> Attribute False Optional PlaybackDirection
direction v = fromUndefOrPrimNoDefault
                "EffectTiming.getdirection"
                prim__direction
                prim__setDirection
                (cast {to = EffectTiming} v)


export
duration :
     {auto _ : Cast t EffectTiming}
  -> t
  -> Attribute False Optional (HSum [Double, String])
duration v = fromUndefOrPrimNoDefault
               "EffectTiming.getduration"
               prim__duration
               prim__setDuration
               (cast {to = EffectTiming} v)


export
easing : {auto _ : Cast t EffectTiming} -> t -> Attribute True Optional String
easing v = fromUndefOrPrim
             "EffectTiming.geteasing"
             prim__easing
             prim__setEasing
             "linear"
             (cast {to = EffectTiming} v)


export
endDelay : {auto _ : Cast t EffectTiming} -> t -> Attribute True Optional Double
endDelay v = fromUndefOrPrim
               "EffectTiming.getendDelay"
               prim__endDelay
               prim__setEndDelay
               0
               (cast {to = EffectTiming} v)


export
fill : {auto _ : Cast t EffectTiming} -> t -> Attribute False Optional FillMode
fill v = fromUndefOrPrimNoDefault
           "EffectTiming.getfill"
           prim__fill
           prim__setFill
           (cast {to = EffectTiming} v)


export
iterationStart :
     {auto _ : Cast t EffectTiming}
  -> t
  -> Attribute True Optional Double
iterationStart v = fromUndefOrPrim
                     "EffectTiming.getiterationStart"
                     prim__iterationStart
                     prim__setIterationStart
                     0.0
                     (cast {to = EffectTiming} v)


export
iterations :
     {auto _ : Cast t EffectTiming}
  -> t
  -> Attribute True Optional Double
iterations v = fromUndefOrPrim
                 "EffectTiming.getiterations"
                 prim__iterations
                 prim__setIterations
                 1.0
                 (cast {to = EffectTiming} v)

