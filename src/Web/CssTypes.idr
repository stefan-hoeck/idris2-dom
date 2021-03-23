module Web.CssTypes

import JS.Util


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data CSSGroupingRule : Type where [external]

export
ToJS CSSGroupingRule where
  toJS = believe_me

export
FromJS CSSGroupingRule where
  fromJS = believe_me

export
data CSSImportRule : Type where [external]

export
ToJS CSSImportRule where
  toJS = believe_me

export
FromJS CSSImportRule where
  fromJS = believe_me

export
data CSSMarginRule : Type where [external]

export
ToJS CSSMarginRule where
  toJS = believe_me

export
FromJS CSSMarginRule where
  fromJS = believe_me

export
data CSSNamespaceRule : Type where [external]

export
ToJS CSSNamespaceRule where
  toJS = believe_me

export
FromJS CSSNamespaceRule where
  fromJS = believe_me

export
data CSSPageRule : Type where [external]

export
ToJS CSSPageRule where
  toJS = believe_me

export
FromJS CSSPageRule where
  fromJS = believe_me

export
data CSSPseudoElement : Type where [external]

export
ToJS CSSPseudoElement where
  toJS = believe_me

export
FromJS CSSPseudoElement where
  fromJS = believe_me

export
data CSSRule : Type where [external]

export
ToJS CSSRule where
  toJS = believe_me

export
FromJS CSSRule where
  fromJS = believe_me

export
data CSSRuleList : Type where [external]

export
ToJS CSSRuleList where
  toJS = believe_me

export
FromJS CSSRuleList where
  fromJS = believe_me

export
data CSSStyleDeclaration : Type where [external]

export
ToJS CSSStyleDeclaration where
  toJS = believe_me

export
FromJS CSSStyleDeclaration where
  fromJS = believe_me

export
data CSSStyleRule : Type where [external]

export
ToJS CSSStyleRule where
  toJS = believe_me

export
FromJS CSSStyleRule where
  fromJS = believe_me

export
data CSSStyleSheet : Type where [external]

export
ToJS CSSStyleSheet where
  toJS = believe_me

export
FromJS CSSStyleSheet where
  fromJS = believe_me

export
data MediaList : Type where [external]

export
ToJS MediaList where
  toJS = believe_me

export
FromJS MediaList where
  fromJS = believe_me

export
data StyleSheet : Type where [external]

export
ToJS StyleSheet where
  toJS = believe_me

export
FromJS StyleSheet where
  fromJS = believe_me

export
data StyleSheetList : Type where [external]

export
ToJS StyleSheetList where
  toJS = believe_me

export
FromJS StyleSheetList where
  fromJS = believe_me

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export
data ElementCSSInlineStyle : Type where [external]

export
ToJS ElementCSSInlineStyle where
  toJS = believe_me

export
FromJS ElementCSSInlineStyle where
  fromJS = believe_me

export
data LinkStyle : Type where [external]

export
ToJS LinkStyle where
  toJS = believe_me

export
FromJS LinkStyle where
  fromJS = believe_me
