module Web.Raw.ScrollToOptions

import JS
import Web.Types.ScrollOptions
import Web.Types.ScrollToOptions


%default total


export
%foreign "browser:lambda:(a,b)=> ({left: a,top: b})"
prim__new : UndefOr Double -> UndefOr Double -> PrimIO ScrollToOptions


export
%foreign "browser:lambda:x=>x.left"
prim__left : ScrollToOptions -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.left = v}"
prim__setLeft : ScrollToOptions -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.top"
prim__top : ScrollToOptions -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.top = v}"
prim__setTop : ScrollToOptions -> UndefOr Double -> PrimIO ()



export
new' :
     (left : Optional Double)
  -> (top : Optional Double)
  -> JSIO ScrollToOptions
new' a b = primJS $ ScrollToOptions.prim__new (toFFI a) (toFFI b)

export
new : JSIO ScrollToOptions
new = primJS $ ScrollToOptions.prim__new undef undef


export
left : {auto _ : Cast t ScrollToOptions} -> t -> Attribute False Optional Double
left v = fromUndefOrPrimNoDefault
           "ScrollToOptions.getleft"
           prim__left
           prim__setLeft
           (cast {to = ScrollToOptions} v)


export
top : {auto _ : Cast t ScrollToOptions} -> t -> Attribute False Optional Double
top v = fromUndefOrPrimNoDefault
          "ScrollToOptions.gettop"
          prim__top
          prim__setTop
          (cast {to = ScrollToOptions} v)
