module Web.Raw.DocumentTimelineOptions

import JS
import Web.Types.DocumentTimelineOptions


%default total


export
%foreign "browser:lambda:(a)=> ({originTime: a})"
prim__new : UndefOr Double -> PrimIO DocumentTimelineOptions


export
%foreign "browser:lambda:x=>x.originTime"
prim__originTime : DocumentTimelineOptions -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.originTime = v}"
prim__setOriginTime : DocumentTimelineOptions -> UndefOr Double -> PrimIO ()



export
new' : (originTime : Optional Double) -> JSIO DocumentTimelineOptions
new' a = primJS $ DocumentTimelineOptions.prim__new (toFFI a)

export
new : JSIO DocumentTimelineOptions
new = primJS $ DocumentTimelineOptions.prim__new undef


export
originTime :
     {auto _ : Cast t DocumentTimelineOptions}
  -> t
  -> Attribute True Optional Double
originTime v = fromUndefOrPrim
                 "DocumentTimelineOptions.getoriginTime"
                 prim__originTime
                 prim__setOriginTime
                 0
                 (cast {to = DocumentTimelineOptions} v)

