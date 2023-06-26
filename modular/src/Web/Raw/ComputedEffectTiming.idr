module Web.Raw.ComputedEffectTiming

import JS
import Web.Types.ComputedEffectTiming
import Web.Types.EffectTiming


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({endTime: a,activeDuration: b,localTime: c,progress: d,currentIteration: e})"
prim__new :
     UndefOr Double
  -> UndefOr Double
  -> UndefOr (Nullable Double)
  -> UndefOr (Nullable Double)
  -> UndefOr (Nullable Double)
  -> PrimIO ComputedEffectTiming


export
%foreign "browser:lambda:x=>x.activeDuration"
prim__activeDuration : ComputedEffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.activeDuration = v}"
prim__setActiveDuration : ComputedEffectTiming -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.currentIteration"
prim__currentIteration :
     ComputedEffectTiming
  -> PrimIO (UndefOr (Nullable Double))



export
%foreign "browser:lambda:(x,v)=>{x.currentIteration = v}"
prim__setCurrentIteration :
     ComputedEffectTiming
  -> UndefOr (Nullable Double)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.endTime"
prim__endTime : ComputedEffectTiming -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.endTime = v}"
prim__setEndTime : ComputedEffectTiming -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.localTime"
prim__localTime : ComputedEffectTiming -> PrimIO (UndefOr (Nullable Double))



export
%foreign "browser:lambda:(x,v)=>{x.localTime = v}"
prim__setLocalTime :
     ComputedEffectTiming
  -> UndefOr (Nullable Double)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.progress"
prim__progress : ComputedEffectTiming -> PrimIO (UndefOr (Nullable Double))



export
%foreign "browser:lambda:(x,v)=>{x.progress = v}"
prim__setProgress :
     ComputedEffectTiming
  -> UndefOr (Nullable Double)
  -> PrimIO ()



export
new' :
     (endTime : Optional Double)
  -> (activeDuration : Optional Double)
  -> (localTime : Optional (Maybe Double))
  -> (progress : Optional (Maybe Double))
  -> (currentIteration : Optional (Maybe Double))
  -> JSIO ComputedEffectTiming
new' a b c d e = primJS $
  ComputedEffectTiming.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
new : JSIO ComputedEffectTiming
new = primJS $ ComputedEffectTiming.prim__new undef undef undef undef undef


export
activeDuration :
     {auto _ : Cast t ComputedEffectTiming}
  -> t
  -> Attribute False Optional Double
activeDuration v = fromUndefOrPrimNoDefault
                     "ComputedEffectTiming.getactiveDuration"
                     prim__activeDuration
                     prim__setActiveDuration
                     (cast {to = ComputedEffectTiming} v)


export
currentIteration :
     {auto _ : Cast t ComputedEffectTiming}
  -> t
  -> Attribute False Optional (Maybe Double)
currentIteration v = fromUndefOrPrimNoDefault
                       "ComputedEffectTiming.getcurrentIteration"
                       prim__currentIteration
                       prim__setCurrentIteration
                       (cast {to = ComputedEffectTiming} v)


export
endTime :
     {auto _ : Cast t ComputedEffectTiming}
  -> t
  -> Attribute False Optional Double
endTime v = fromUndefOrPrimNoDefault
              "ComputedEffectTiming.getendTime"
              prim__endTime
              prim__setEndTime
              (cast {to = ComputedEffectTiming} v)


export
localTime :
     {auto _ : Cast t ComputedEffectTiming}
  -> t
  -> Attribute False Optional (Maybe Double)
localTime v = fromUndefOrPrimNoDefault
                "ComputedEffectTiming.getlocalTime"
                prim__localTime
                prim__setLocalTime
                (cast {to = ComputedEffectTiming} v)


export
progress :
     {auto _ : Cast t ComputedEffectTiming}
  -> t
  -> Attribute False Optional (Maybe Double)
progress v = fromUndefOrPrimNoDefault
               "ComputedEffectTiming.getprogress"
               prim__progress
               prim__setProgress
               (cast {to = ComputedEffectTiming} v)
