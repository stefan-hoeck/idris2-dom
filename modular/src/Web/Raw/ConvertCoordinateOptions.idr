module Web.Raw.ConvertCoordinateOptions

import JS
import Web.Types.CSSBoxType
import Web.Types.ConvertCoordinateOptions


%default total


export
%foreign "browser:lambda:(a,b)=> ({fromBox: a,toBox: b})"
prim__new : UndefOr String -> UndefOr String -> PrimIO ConvertCoordinateOptions


export
%foreign "browser:lambda:x=>x.fromBox"
prim__fromBox : ConvertCoordinateOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.fromBox = v}"
prim__setFromBox : ConvertCoordinateOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.toBox"
prim__toBox : ConvertCoordinateOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.toBox = v}"
prim__setToBox : ConvertCoordinateOptions -> UndefOr String -> PrimIO ()



export
new' :
     (fromBox : Optional CSSBoxType)
  -> (toBox : Optional CSSBoxType)
  -> JSIO ConvertCoordinateOptions
new' a b = primJS $ ConvertCoordinateOptions.prim__new (toFFI a) (toFFI b)

export
new : JSIO ConvertCoordinateOptions
new = primJS $ ConvertCoordinateOptions.prim__new undef undef


export
fromBox :
     {auto _ : Cast t ConvertCoordinateOptions}
  -> t
  -> Attribute False Optional CSSBoxType
fromBox v = fromUndefOrPrimNoDefault
              "ConvertCoordinateOptions.getfromBox"
              prim__fromBox
              prim__setFromBox
              (cast {to = ConvertCoordinateOptions} v)


export
toBox :
     {auto _ : Cast t ConvertCoordinateOptions}
  -> t
  -> Attribute False Optional CSSBoxType
toBox v = fromUndefOrPrimNoDefault
            "ConvertCoordinateOptions.gettoBox"
            prim__toBox
            prim__setToBox
            (cast {to = ConvertCoordinateOptions} v)

