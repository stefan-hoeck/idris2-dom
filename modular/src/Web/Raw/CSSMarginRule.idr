module Web.Raw.CSSMarginRule

import JS
import Web.Types.CSSMarginRule
import Web.Types.CSSRule
import Web.Types.CSSStyleDeclaration


%default total


export
%foreign "browser:lambda:x=>x.name"
prim__name : CSSMarginRule -> PrimIO String


export
%foreign "browser:lambda:x=>x.style"
prim__style : CSSMarginRule -> PrimIO CSSStyleDeclaration


export
name : (obj : CSSMarginRule) -> JSIO String
name a = primJS $ CSSMarginRule.prim__name a


export
style : (obj : CSSMarginRule) -> JSIO CSSStyleDeclaration
style a = primJS $ CSSMarginRule.prim__style a

