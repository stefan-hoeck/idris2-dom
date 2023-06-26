module Web.Raw.OptionalEffectTiming

import JS
import Web.Types.FillMode
import Web.Types.OptionalEffectTiming
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
  -> PrimIO OptionalEffectTiming


export
%foreign "browser:lambda:x=>x.delay"
prim__delay : OptionalEffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.delay = v}"
prim__setDelay : OptionalEffectTiming -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.direction"
prim__direction : OptionalEffectTiming -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.direction = v}"
prim__setDirection : OptionalEffectTiming -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.duration"
prim__duration : OptionalEffectTiming -> PrimIO (UndefOr (Union2 Double String))



export
%foreign "browser:lambda:(x,v)=>{x.duration = v}"
prim__setDuration :
     OptionalEffectTiming
  -> UndefOr (Union2 Double String)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.easing"
prim__easing : OptionalEffectTiming -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.easing = v}"
prim__setEasing : OptionalEffectTiming -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.endDelay"
prim__endDelay : OptionalEffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.endDelay = v}"
prim__setEndDelay : OptionalEffectTiming -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.fill"
prim__fill : OptionalEffectTiming -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.fill = v}"
prim__setFill : OptionalEffectTiming -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.iterationStart"
prim__iterationStart : OptionalEffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.iterationStart = v}"
prim__setIterationStart : OptionalEffectTiming -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.iterations"
prim__iterations : OptionalEffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.iterations = v}"
prim__setIterations : OptionalEffectTiming -> UndefOr Double -> PrimIO ()



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
  -> JSIO OptionalEffectTiming
new' a b c d e f g h = primJS $
  OptionalEffectTiming.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)

export
new : JSIO OptionalEffectTiming
new = primJS $
  OptionalEffectTiming.prim__new undef undef undef undef undef undef undef undef


export
delay :
     {auto _ : Cast t OptionalEffectTiming}
  -> t
  -> Attribute False Optional Double
delay v = fromUndefOrPrimNoDefault
            "OptionalEffectTiming.getdelay"
            prim__delay
            prim__setDelay
            (cast {to = OptionalEffectTiming} v)


export
direction :
     {auto _ : Cast t OptionalEffectTiming}
  -> t
  -> Attribute False Optional PlaybackDirection
direction v = fromUndefOrPrimNoDefault
                "OptionalEffectTiming.getdirection"
                prim__direction
                prim__setDirection
                (cast {to = OptionalEffectTiming} v)


export
duration :
     {auto _ : Cast t OptionalEffectTiming}
  -> t
  -> Attribute False Optional (HSum [Double, String])
duration v = fromUndefOrPrimNoDefault
               "OptionalEffectTiming.getduration"
               prim__duration
               prim__setDuration
               (cast {to = OptionalEffectTiming} v)


export
easing :
     {auto _ : Cast t OptionalEffectTiming}
  -> t
  -> Attribute False Optional String
easing v = fromUndefOrPrimNoDefault
             "OptionalEffectTiming.geteasing"
             prim__easing
             prim__setEasing
             (cast {to = OptionalEffectTiming} v)


export
endDelay :
     {auto _ : Cast t OptionalEffectTiming}
  -> t
  -> Attribute False Optional Double
endDelay v = fromUndefOrPrimNoDefault
               "OptionalEffectTiming.getendDelay"
               prim__endDelay
               prim__setEndDelay
               (cast {to = OptionalEffectTiming} v)


export
fill :
     {auto _ : Cast t OptionalEffectTiming}
  -> t
  -> Attribute False Optional FillMode
fill v = fromUndefOrPrimNoDefault
           "OptionalEffectTiming.getfill"
           prim__fill
           prim__setFill
           (cast {to = OptionalEffectTiming} v)


export
iterationStart :
     {auto _ : Cast t OptionalEffectTiming}
  -> t
  -> Attribute False Optional Double
iterationStart v = fromUndefOrPrimNoDefault
                     "OptionalEffectTiming.getiterationStart"
                     prim__iterationStart
                     prim__setIterationStart
                     (cast {to = OptionalEffectTiming} v)


export
iterations :
     {auto _ : Cast t OptionalEffectTiming}
  -> t
  -> Attribute False Optional Double
iterations v = fromUndefOrPrimNoDefault
                 "OptionalEffectTiming.getiterations"
                 prim__iterations
                 prim__setIterations
                 (cast {to = OptionalEffectTiming} v)

