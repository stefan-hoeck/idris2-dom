module Web.Internal.CssTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data CSSGroupingRule : Type where [external]

export
SafeCast CSSGroupingRule where
  safeCast = unsafeCastOnPrototypeName "CSSGroupingRule"

export data CSSImportRule : Type where [external]

export
SafeCast CSSImportRule where
  safeCast = unsafeCastOnPrototypeName "CSSImportRule"

export data CSSMarginRule : Type where [external]

export
SafeCast CSSMarginRule where
  safeCast = unsafeCastOnPrototypeName "CSSMarginRule"

export data CSSNamespaceRule : Type where [external]

export
SafeCast CSSNamespaceRule where
  safeCast = unsafeCastOnPrototypeName "CSSNamespaceRule"

export data CSSPageRule : Type where [external]

export
SafeCast CSSPageRule where
  safeCast = unsafeCastOnPrototypeName "CSSPageRule"

export data CSSPseudoElement : Type where [external]

export
SafeCast CSSPseudoElement where
  safeCast = unsafeCastOnPrototypeName "CSSPseudoElement"

export data CSSRule : Type where [external]

export
SafeCast CSSRule where
  safeCast = unsafeCastOnPrototypeName "CSSRule"

export data CSSRuleList : Type where [external]

export
SafeCast CSSRuleList where
  safeCast = unsafeCastOnPrototypeName "CSSRuleList"

export data CSSStyleDeclaration : Type where [external]

export
SafeCast CSSStyleDeclaration where
  safeCast = unsafeCastOnPrototypeName "CSSStyleDeclaration"

export data CSSStyleRule : Type where [external]

export
SafeCast CSSStyleRule where
  safeCast = unsafeCastOnPrototypeName "CSSStyleRule"

export data CSSStyleSheet : Type where [external]

export
SafeCast CSSStyleSheet where
  safeCast = unsafeCastOnPrototypeName "CSSStyleSheet"

export data MediaList : Type where [external]

export
SafeCast MediaList where
  safeCast = unsafeCastOnPrototypeName "MediaList"

export data StyleSheet : Type where [external]

export
SafeCast StyleSheet where
  safeCast = unsafeCastOnPrototypeName "StyleSheet"

export data StyleSheetList : Type where [external]

export
SafeCast StyleSheetList where
  safeCast = unsafeCastOnPrototypeName "StyleSheetList"


--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data ElementCSSInlineStyle : Type where [external]

export data LinkStyle : Type where [external]
