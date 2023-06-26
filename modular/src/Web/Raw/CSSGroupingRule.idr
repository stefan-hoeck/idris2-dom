module Web.Raw.CSSGroupingRule

import JS
import Web.Types.CSSGroupingRule
import Web.Types.CSSRule
import Web.Types.CSSRuleList


%default total


export
%foreign "browser:lambda:x=>x.cssRules"
prim__cssRules : CSSGroupingRule -> PrimIO CSSRuleList


export
%foreign "browser:lambda:(x,a)=>x.deleteRule(a)"
prim__deleteRule : CSSGroupingRule -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.insertRule(a,b)"
prim__insertRule : CSSGroupingRule -> String -> UndefOr Bits32 -> PrimIO Bits32


export
cssRules : {auto _ : Cast t1 CSSGroupingRule} -> (obj : t1) -> JSIO CSSRuleList
cssRules a = primJS $ CSSGroupingRule.prim__cssRules (cast a)


export
deleteRule :
     {auto _ : Cast t1 CSSGroupingRule}
  -> (obj : t1)
  -> (index : Bits32)
  -> JSIO ()
deleteRule a b = primJS $ CSSGroupingRule.prim__deleteRule (cast a) b


export
insertRule' :
     {auto _ : Cast t1 CSSGroupingRule}
  -> (obj : t1)
  -> (rule : String)
  -> (index : Optional Bits32)
  -> JSIO Bits32
insertRule' a b c = primJS $
  CSSGroupingRule.prim__insertRule (cast a) b (toFFI c)

export
insertRule :
     {auto _ : Cast t1 CSSGroupingRule}
  -> (obj : t1)
  -> (rule : String)
  -> JSIO Bits32
insertRule a b = primJS $ CSSGroupingRule.prim__insertRule (cast a) b undef

