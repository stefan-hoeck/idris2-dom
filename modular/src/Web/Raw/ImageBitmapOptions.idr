module Web.Raw.ImageBitmapOptions

import JS
import Web.Types.ColorSpaceConversion
import Web.Types.ImageBitmapOptions
import Web.Types.ImageOrientation
import Web.Types.PremultiplyAlpha
import Web.Types.ResizeQuality


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f)=> ({imageOrientation: a,premultiplyAlpha: b,colorSpaceConversion: c,resizeWidth: d,resizeHeight: e,resizeQuality: f})"
prim__new :
     UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> UndefOr String
  -> PrimIO ImageBitmapOptions


export
%foreign "browser:lambda:x=>x.colorSpaceConversion"
prim__colorSpaceConversion : ImageBitmapOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.colorSpaceConversion = v}"
prim__setColorSpaceConversion :
     ImageBitmapOptions
  -> UndefOr String
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.imageOrientation"
prim__imageOrientation : ImageBitmapOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.imageOrientation = v}"
prim__setImageOrientation : ImageBitmapOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.premultiplyAlpha"
prim__premultiplyAlpha : ImageBitmapOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.premultiplyAlpha = v}"
prim__setPremultiplyAlpha : ImageBitmapOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.resizeHeight"
prim__resizeHeight : ImageBitmapOptions -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.resizeHeight = v}"
prim__setResizeHeight : ImageBitmapOptions -> UndefOr Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.resizeQuality"
prim__resizeQuality : ImageBitmapOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.resizeQuality = v}"
prim__setResizeQuality : ImageBitmapOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.resizeWidth"
prim__resizeWidth : ImageBitmapOptions -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.resizeWidth = v}"
prim__setResizeWidth : ImageBitmapOptions -> UndefOr Bits32 -> PrimIO ()



export
new' :
     (imageOrientation : Optional ImageOrientation)
  -> (premultiplyAlpha : Optional PremultiplyAlpha)
  -> (colorSpaceConversion : Optional ColorSpaceConversion)
  -> (resizeWidth : Optional Bits32)
  -> (resizeHeight : Optional Bits32)
  -> (resizeQuality : Optional ResizeQuality)
  -> JSIO ImageBitmapOptions
new' a b c d e f = primJS $
  ImageBitmapOptions.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)

export
new : JSIO ImageBitmapOptions
new = primJS $ ImageBitmapOptions.prim__new undef undef undef undef undef undef


export
colorSpaceConversion :
     {auto _ : Cast t ImageBitmapOptions}
  -> t
  -> Attribute False Optional ColorSpaceConversion
colorSpaceConversion v = fromUndefOrPrimNoDefault
                           "ImageBitmapOptions.getcolorSpaceConversion"
                           prim__colorSpaceConversion
                           prim__setColorSpaceConversion
                           (cast {to = ImageBitmapOptions} v)


export
imageOrientation :
     {auto _ : Cast t ImageBitmapOptions}
  -> t
  -> Attribute False Optional ImageOrientation
imageOrientation v = fromUndefOrPrimNoDefault
                       "ImageBitmapOptions.getimageOrientation"
                       prim__imageOrientation
                       prim__setImageOrientation
                       (cast {to = ImageBitmapOptions} v)


export
premultiplyAlpha :
     {auto _ : Cast t ImageBitmapOptions}
  -> t
  -> Attribute False Optional PremultiplyAlpha
premultiplyAlpha v = fromUndefOrPrimNoDefault
                       "ImageBitmapOptions.getpremultiplyAlpha"
                       prim__premultiplyAlpha
                       prim__setPremultiplyAlpha
                       (cast {to = ImageBitmapOptions} v)


export
resizeHeight :
     {auto _ : Cast t ImageBitmapOptions}
  -> t
  -> Attribute False Optional Bits32
resizeHeight v = fromUndefOrPrimNoDefault
                   "ImageBitmapOptions.getresizeHeight"
                   prim__resizeHeight
                   prim__setResizeHeight
                   (cast {to = ImageBitmapOptions} v)


export
resizeQuality :
     {auto _ : Cast t ImageBitmapOptions}
  -> t
  -> Attribute False Optional ResizeQuality
resizeQuality v = fromUndefOrPrimNoDefault
                    "ImageBitmapOptions.getresizeQuality"
                    prim__resizeQuality
                    prim__setResizeQuality
                    (cast {to = ImageBitmapOptions} v)


export
resizeWidth :
     {auto _ : Cast t ImageBitmapOptions}
  -> t
  -> Attribute False Optional Bits32
resizeWidth v = fromUndefOrPrimNoDefault
                  "ImageBitmapOptions.getresizeWidth"
                  prim__resizeWidth
                  prim__setResizeWidth
                  (cast {to = ImageBitmapOptions} v)
