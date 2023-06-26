module Web.Raw.CSSRuleList

import JS
import Web.Types.CSSRule
import Web.Types.CSSRuleList


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : CSSRuleList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : CSSRuleList -> Bits32 -> PrimIO (Nullable CSSRule)


export
length : (obj : CSSRuleList) -> JSIO Bits32
length a = primJS $ CSSRuleList.prim__length a


export
item : (obj : CSSRuleList) -> (index : Bits32) -> JSIO (Maybe CSSRule)
item a b = tryJS "CSSRuleList.item" $ CSSRuleList.prim__item a b
