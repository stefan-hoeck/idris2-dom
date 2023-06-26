module Web.Raw.CheckVisibilityOptions

import JS
import Web.Types.CheckVisibilityOptions


%default total


export
%foreign "browser:lambda:(a,b)=> ({checkOpacity: a,checkVisibilityCSS: b})"
prim__new : UndefOr Boolean -> UndefOr Boolean -> PrimIO CheckVisibilityOptions


export
%foreign "browser:lambda:x=>x.checkOpacity"
prim__checkOpacity : CheckVisibilityOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.checkOpacity = v}"
prim__setCheckOpacity : CheckVisibilityOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.checkVisibilityCSS"
prim__checkVisibilityCSS : CheckVisibilityOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.checkVisibilityCSS = v}"
prim__setCheckVisibilityCSS :
     CheckVisibilityOptions
  -> UndefOr Boolean
  -> PrimIO ()



export
new' :
     (checkOpacity : Optional Bool)
  -> (checkVisibilityCSS : Optional Bool)
  -> JSIO CheckVisibilityOptions
new' a b = primJS $ CheckVisibilityOptions.prim__new (toFFI a) (toFFI b)

export
new : JSIO CheckVisibilityOptions
new = primJS $ CheckVisibilityOptions.prim__new undef undef


export
checkOpacity :
     {auto _ : Cast t CheckVisibilityOptions}
  -> t
  -> Attribute True Optional Bool
checkOpacity v = fromUndefOrPrim
                   "CheckVisibilityOptions.getcheckOpacity"
                   prim__checkOpacity
                   prim__setCheckOpacity
                   False
                   (cast {to = CheckVisibilityOptions} v)


export
checkVisibilityCSS :
     {auto _ : Cast t CheckVisibilityOptions}
  -> t
  -> Attribute True Optional Bool
checkVisibilityCSS v = fromUndefOrPrim
                         "CheckVisibilityOptions.getcheckVisibilityCSS"
                         prim__checkVisibilityCSS
                         prim__setCheckVisibilityCSS
                         False
                         (cast {to = CheckVisibilityOptions} v)

