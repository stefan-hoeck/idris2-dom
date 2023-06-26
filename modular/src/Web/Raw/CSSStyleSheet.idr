module Web.Raw.CSSStyleSheet

import JS
import Web.Types.CSSRule
import Web.Types.CSSRuleList
import Web.Types.CSSStyleSheet
import Web.Types.StyleSheet


%default total


export
%foreign "browser:lambda:x=>x.cssRules"
prim__cssRules : CSSStyleSheet -> PrimIO CSSRuleList


export
%foreign "browser:lambda:x=>x.ownerRule"
prim__ownerRule : CSSStyleSheet -> PrimIO (Nullable CSSRule)


export
%foreign "browser:lambda:x=>x.rules"
prim__rules : CSSStyleSheet -> PrimIO CSSRuleList


export
%foreign "browser:lambda:(x,a,b,c)=>x.addRule(a,b,c)"
prim__addRule :
     CSSStyleSheet
  -> UndefOr String
  -> UndefOr String
  -> UndefOr Bits32
  -> PrimIO Int32


export
%foreign "browser:lambda:(x,a)=>x.deleteRule(a)"
prim__deleteRule : CSSStyleSheet -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.insertRule(a,b)"
prim__insertRule : CSSStyleSheet -> String -> UndefOr Bits32 -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.removeRule(a)"
prim__removeRule : CSSStyleSheet -> UndefOr Bits32 -> PrimIO ()


export
cssRules : (obj : CSSStyleSheet) -> JSIO CSSRuleList
cssRules a = primJS $ CSSStyleSheet.prim__cssRules a


export
ownerRule : (obj : CSSStyleSheet) -> JSIO (Maybe CSSRule)
ownerRule a = tryJS "CSSStyleSheet.ownerRule" $ CSSStyleSheet.prim__ownerRule a


export
rules : (obj : CSSStyleSheet) -> JSIO CSSRuleList
rules a = primJS $ CSSStyleSheet.prim__rules a


export
addRule' :
     (obj : CSSStyleSheet)
  -> (selector : Optional String)
  -> (style : Optional String)
  -> (index : Optional Bits32)
  -> JSIO Int32
addRule' a b c d = primJS $
  CSSStyleSheet.prim__addRule a (toFFI b) (toFFI c) (toFFI d)

export
addRule : (obj : CSSStyleSheet) -> JSIO Int32
addRule a = primJS $ CSSStyleSheet.prim__addRule a undef undef undef


export
deleteRule : (obj : CSSStyleSheet) -> (index : Bits32) -> JSIO ()
deleteRule a b = primJS $ CSSStyleSheet.prim__deleteRule a b


export
insertRule' :
     (obj : CSSStyleSheet)
  -> (rule : String)
  -> (index : Optional Bits32)
  -> JSIO Bits32
insertRule' a b c = primJS $ CSSStyleSheet.prim__insertRule a b (toFFI c)

export
insertRule : (obj : CSSStyleSheet) -> (rule : String) -> JSIO Bits32
insertRule a b = primJS $ CSSStyleSheet.prim__insertRule a b undef


export
removeRule' : (obj : CSSStyleSheet) -> (index : Optional Bits32) -> JSIO ()
removeRule' a b = primJS $ CSSStyleSheet.prim__removeRule a (toFFI b)

export
removeRule : (obj : CSSStyleSheet) -> JSIO ()
removeRule a = primJS $ CSSStyleSheet.prim__removeRule a undef

