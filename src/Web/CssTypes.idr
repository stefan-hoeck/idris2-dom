module Web.CssTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data CSSGroupingRule : Type where [external]

export
SafeCast CSSGroupingRule where
  safeCast = unsafeCastOnPrototypeName "CSSGroupingRule"

export ToJS CSSGroupingRule where toJS = believe_me
export FromJS CSSGroupingRule where fromJS = safeCast

export data CSSImportRule : Type where [external]

export
SafeCast CSSImportRule where
  safeCast = unsafeCastOnPrototypeName "CSSImportRule"

export ToJS CSSImportRule where toJS = believe_me
export FromJS CSSImportRule where fromJS = safeCast

export data CSSMarginRule : Type where [external]

export
SafeCast CSSMarginRule where
  safeCast = unsafeCastOnPrototypeName "CSSMarginRule"

export ToJS CSSMarginRule where toJS = believe_me
export FromJS CSSMarginRule where fromJS = safeCast

export data CSSNamespaceRule : Type where [external]

export
SafeCast CSSNamespaceRule where
  safeCast = unsafeCastOnPrototypeName "CSSNamespaceRule"

export ToJS CSSNamespaceRule where toJS = believe_me
export FromJS CSSNamespaceRule where fromJS = safeCast

export data CSSPageRule : Type where [external]

export
SafeCast CSSPageRule where
  safeCast = unsafeCastOnPrototypeName "CSSPageRule"

export ToJS CSSPageRule where toJS = believe_me
export FromJS CSSPageRule where fromJS = safeCast

export data CSSPseudoElement : Type where [external]

export
SafeCast CSSPseudoElement where
  safeCast = unsafeCastOnPrototypeName "CSSPseudoElement"

export ToJS CSSPseudoElement where toJS = believe_me
export FromJS CSSPseudoElement where fromJS = safeCast

export data CSSRule : Type where [external]

export
SafeCast CSSRule where
  safeCast = unsafeCastOnPrototypeName "CSSRule"

export ToJS CSSRule where toJS = believe_me
export FromJS CSSRule where fromJS = safeCast

export data CSSRuleList : Type where [external]

export
SafeCast CSSRuleList where
  safeCast = unsafeCastOnPrototypeName "CSSRuleList"

export ToJS CSSRuleList where toJS = believe_me
export FromJS CSSRuleList where fromJS = safeCast

export data CSSStyleDeclaration : Type where [external]

export
SafeCast CSSStyleDeclaration where
  safeCast = unsafeCastOnPrototypeName "CSSStyleDeclaration"

export ToJS CSSStyleDeclaration where toJS = believe_me
export FromJS CSSStyleDeclaration where fromJS = safeCast

export data CSSStyleRule : Type where [external]

export
SafeCast CSSStyleRule where
  safeCast = unsafeCastOnPrototypeName "CSSStyleRule"

export ToJS CSSStyleRule where toJS = believe_me
export FromJS CSSStyleRule where fromJS = safeCast

export data CSSStyleSheet : Type where [external]

export
SafeCast CSSStyleSheet where
  safeCast = unsafeCastOnPrototypeName "CSSStyleSheet"

export ToJS CSSStyleSheet where toJS = believe_me
export FromJS CSSStyleSheet where fromJS = safeCast

export data MediaList : Type where [external]

export
SafeCast MediaList where
  safeCast = unsafeCastOnPrototypeName "MediaList"

export ToJS MediaList where toJS = believe_me
export FromJS MediaList where fromJS = safeCast

export data StyleSheet : Type where [external]

export
SafeCast StyleSheet where
  safeCast = unsafeCastOnPrototypeName "StyleSheet"

export ToJS StyleSheet where toJS = believe_me
export FromJS StyleSheet where fromJS = safeCast

export data StyleSheetList : Type where [external]

export
SafeCast StyleSheetList where
  safeCast = unsafeCastOnPrototypeName "StyleSheetList"

export ToJS StyleSheetList where toJS = believe_me
export FromJS StyleSheetList where fromJS = safeCast

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data ElementCSSInlineStyle : Type where [external]

export ToJS ElementCSSInlineStyle where toJS = believe_me
export FromJS ElementCSSInlineStyle where fromJS ptr = Just (believe_me ptr)

export data LinkStyle : Type where [external]

export ToJS LinkStyle where toJS = believe_me
export FromJS LinkStyle where fromJS ptr = Just (believe_me ptr)
