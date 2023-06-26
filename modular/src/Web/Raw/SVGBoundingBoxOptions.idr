module Web.Raw.SVGBoundingBoxOptions

import JS
import Web.Types.SVGBoundingBoxOptions


%default total


export
%foreign "browser:lambda:(a,b,c,d)=> ({fill: a,stroke: b,markers: c,clipped: d})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO SVGBoundingBoxOptions


export
%foreign "browser:lambda:x=>x.clipped"
prim__clipped : SVGBoundingBoxOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.clipped = v}"
prim__setClipped : SVGBoundingBoxOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.fill"
prim__fill : SVGBoundingBoxOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.fill = v}"
prim__setFill : SVGBoundingBoxOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.markers"
prim__markers : SVGBoundingBoxOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.markers = v}"
prim__setMarkers : SVGBoundingBoxOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.stroke"
prim__stroke : SVGBoundingBoxOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.stroke = v}"
prim__setStroke : SVGBoundingBoxOptions -> UndefOr Boolean -> PrimIO ()



export
new' :
     (fill : Optional Bool)
  -> (stroke : Optional Bool)
  -> (markers : Optional Bool)
  -> (clipped : Optional Bool)
  -> JSIO SVGBoundingBoxOptions
new' a b c d = primJS $
  SVGBoundingBoxOptions.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

export
new : JSIO SVGBoundingBoxOptions
new = primJS $ SVGBoundingBoxOptions.prim__new undef undef undef undef


export
clipped :
     {auto _ : Cast t SVGBoundingBoxOptions}
  -> t
  -> Attribute True Optional Bool
clipped v = fromUndefOrPrim
              "SVGBoundingBoxOptions.getclipped"
              prim__clipped
              prim__setClipped
              False
              (cast {to = SVGBoundingBoxOptions} v)


export
fill :
     {auto _ : Cast t SVGBoundingBoxOptions}
  -> t
  -> Attribute True Optional Bool
fill v = fromUndefOrPrim
           "SVGBoundingBoxOptions.getfill"
           prim__fill
           prim__setFill
           True
           (cast {to = SVGBoundingBoxOptions} v)


export
markers :
     {auto _ : Cast t SVGBoundingBoxOptions}
  -> t
  -> Attribute True Optional Bool
markers v = fromUndefOrPrim
              "SVGBoundingBoxOptions.getmarkers"
              prim__markers
              prim__setMarkers
              False
              (cast {to = SVGBoundingBoxOptions} v)


export
stroke :
     {auto _ : Cast t SVGBoundingBoxOptions}
  -> t
  -> Attribute True Optional Bool
stroke v = fromUndefOrPrim
             "SVGBoundingBoxOptions.getstroke"
             prim__stroke
             prim__setStroke
             False
             (cast {to = SVGBoundingBoxOptions} v)

