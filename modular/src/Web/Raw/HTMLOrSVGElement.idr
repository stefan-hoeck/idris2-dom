module Web.Raw.HTMLOrSVGElement

import JS
import Web.Types.DOMStringMap
import Web.Types.FocusOptions
import Web.Types.HTMLOrSVGElement


%default total


export
%foreign "browser:lambda:x=>x.autofocus"
prim__autofocus : HTMLOrSVGElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.autofocus = v}"
prim__setAutofocus : HTMLOrSVGElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.dataset"
prim__dataset : HTMLOrSVGElement -> PrimIO DOMStringMap


export
%foreign "browser:lambda:x=>x.nonce"
prim__nonce : HTMLOrSVGElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.nonce = v}"
prim__setNonce : HTMLOrSVGElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.tabIndex"
prim__tabIndex : HTMLOrSVGElement -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.tabIndex = v}"
prim__setTabIndex : HTMLOrSVGElement -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.blur()"
prim__blur : HTMLOrSVGElement -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.focus(a)"
prim__focus : HTMLOrSVGElement -> UndefOr FocusOptions -> PrimIO ()


export
autofocus :
     {auto _ : Cast t HTMLOrSVGElement}
  -> t
  -> Attribute True Prelude.id Bool
autofocus v = fromPrim
                "HTMLOrSVGElement.getautofocus"
                prim__autofocus
                prim__setAutofocus
                (cast {to = HTMLOrSVGElement} v)


export
dataset : {auto _ : Cast t1 HTMLOrSVGElement} -> (obj : t1) -> JSIO DOMStringMap
dataset a = primJS $ HTMLOrSVGElement.prim__dataset (cast a)


export
nonce :
     {auto _ : Cast t HTMLOrSVGElement}
  -> t
  -> Attribute True Prelude.id String
nonce v = fromPrim
            "HTMLOrSVGElement.getnonce"
            prim__nonce
            prim__setNonce
            (cast {to = HTMLOrSVGElement} v)


export
tabIndex :
     {auto _ : Cast t HTMLOrSVGElement}
  -> t
  -> Attribute True Prelude.id Int32
tabIndex v = fromPrim
               "HTMLOrSVGElement.gettabIndex"
               prim__tabIndex
               prim__setTabIndex
               (cast {to = HTMLOrSVGElement} v)


export
blur : {auto _ : Cast t1 HTMLOrSVGElement} -> (obj : t1) -> JSIO ()
blur a = primJS $ HTMLOrSVGElement.prim__blur (cast a)


export
focus' :
     {auto _ : Cast t1 HTMLOrSVGElement}
  -> {auto _ : Cast t2 FocusOptions}
  -> (obj : t1)
  -> (options : Optional t2)
  -> JSIO ()
focus' a b = primJS $ HTMLOrSVGElement.prim__focus (cast a) (optUp b)

export
focus : {auto _ : Cast t1 HTMLOrSVGElement} -> (obj : t1) -> JSIO ()
focus a = primJS $ HTMLOrSVGElement.prim__focus (cast a) undef
