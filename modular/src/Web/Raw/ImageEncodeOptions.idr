module Web.Raw.ImageEncodeOptions

import JS
import Web.Types.ImageEncodeOptions


%default total


export
%foreign "browser:lambda:(a,b)=> ({type: a,quality: b})"
prim__new : UndefOr String -> UndefOr Double -> PrimIO ImageEncodeOptions


export
%foreign "browser:lambda:x=>x.quality"
prim__quality : ImageEncodeOptions -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.quality = v}"
prim__setQuality : ImageEncodeOptions -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : ImageEncodeOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : ImageEncodeOptions -> UndefOr String -> PrimIO ()



export
new' :
     (type : Optional String)
  -> (quality : Optional Double)
  -> JSIO ImageEncodeOptions
new' a b = primJS $ ImageEncodeOptions.prim__new (toFFI a) (toFFI b)

export
new : JSIO ImageEncodeOptions
new = primJS $ ImageEncodeOptions.prim__new undef undef


export
quality :
     {auto _ : Cast t ImageEncodeOptions}
  -> t
  -> Attribute False Optional Double
quality v = fromUndefOrPrimNoDefault
              "ImageEncodeOptions.getquality"
              prim__quality
              prim__setQuality
              (cast {to = ImageEncodeOptions} v)


export
type :
     {auto _ : Cast t ImageEncodeOptions}
  -> t
  -> Attribute True Optional String
type v = fromUndefOrPrim
           "ImageEncodeOptions.gettype"
           prim__type
           prim__setType
           "image/png"
           (cast {to = ImageEncodeOptions} v)

