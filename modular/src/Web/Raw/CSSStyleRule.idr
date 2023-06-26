module Web.Raw.CSSStyleRule

import JS
import Web.Types.CSSRule
import Web.Types.CSSStyleDeclaration
import Web.Types.CSSStyleRule


%default total


export
%foreign "browser:lambda:x=>x.selectorText"
prim__selectorText : CSSStyleRule -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.selectorText = v}"
prim__setSelectorText : CSSStyleRule -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.style"
prim__style : CSSStyleRule -> PrimIO CSSStyleDeclaration


export
selectorText : CSSStyleRule -> Attribute True Prelude.id String
selectorText v = fromPrim
                   "CSSStyleRule.getselectorText"
                   prim__selectorText
                   prim__setSelectorText
                   v


export
style : (obj : CSSStyleRule) -> JSIO CSSStyleDeclaration
style a = primJS $ CSSStyleRule.prim__style a

