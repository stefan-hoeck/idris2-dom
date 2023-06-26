module Web.Raw.CSSPageRule

import JS
import Web.Types.CSSGroupingRule
import Web.Types.CSSPageRule
import Web.Types.CSSRule
import Web.Types.CSSStyleDeclaration


%default total


export
%foreign "browser:lambda:x=>x.selectorText"
prim__selectorText : CSSPageRule -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.selectorText = v}"
prim__setSelectorText : CSSPageRule -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.style"
prim__style : CSSPageRule -> PrimIO CSSStyleDeclaration


export
selectorText : CSSPageRule -> Attribute True Prelude.id String
selectorText v = fromPrim
                   "CSSPageRule.getselectorText"
                   prim__selectorText
                   prim__setSelectorText
                   v


export
style : (obj : CSSPageRule) -> JSIO CSSStyleDeclaration
style a = primJS $ CSSPageRule.prim__style a
