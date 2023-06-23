module Web.Internal.CssTypes

import JS

%default total



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data CSSGroupingRule : Type where [external]

export
ToFFI CSSGroupingRule CSSGroupingRule where toFFI = id

export
FromFFI CSSGroupingRule CSSGroupingRule where fromFFI = Just

export
SafeCast CSSGroupingRule where
  safeCast = unsafeCastOnPrototypeName "CSSGroupingRule"

export data CSSImportRule : Type where [external]

export
ToFFI CSSImportRule CSSImportRule where toFFI = id

export
FromFFI CSSImportRule CSSImportRule where fromFFI = Just

export
SafeCast CSSImportRule where
  safeCast = unsafeCastOnPrototypeName "CSSImportRule"

export data CSSMarginRule : Type where [external]

export
ToFFI CSSMarginRule CSSMarginRule where toFFI = id

export
FromFFI CSSMarginRule CSSMarginRule where fromFFI = Just

export
SafeCast CSSMarginRule where
  safeCast = unsafeCastOnPrototypeName "CSSMarginRule"

export data CSSNamespaceRule : Type where [external]

export
ToFFI CSSNamespaceRule CSSNamespaceRule where toFFI = id

export
FromFFI CSSNamespaceRule CSSNamespaceRule where fromFFI = Just

export
SafeCast CSSNamespaceRule where
  safeCast = unsafeCastOnPrototypeName "CSSNamespaceRule"

export data CSSPageRule : Type where [external]

export
ToFFI CSSPageRule CSSPageRule where toFFI = id

export
FromFFI CSSPageRule CSSPageRule where fromFFI = Just

export
SafeCast CSSPageRule where
  safeCast = unsafeCastOnPrototypeName "CSSPageRule"

export data CSSPseudoElement : Type where [external]

export
ToFFI CSSPseudoElement CSSPseudoElement where toFFI = id

export
FromFFI CSSPseudoElement CSSPseudoElement where fromFFI = Just

export
SafeCast CSSPseudoElement where
  safeCast = unsafeCastOnPrototypeName "CSSPseudoElement"

export data CSSRule : Type where [external]

export
ToFFI CSSRule CSSRule where toFFI = id

export
FromFFI CSSRule CSSRule where fromFFI = Just

export
SafeCast CSSRule where
  safeCast = unsafeCastOnPrototypeName "CSSRule"

export data CSSRuleList : Type where [external]

export
ToFFI CSSRuleList CSSRuleList where toFFI = id

export
FromFFI CSSRuleList CSSRuleList where fromFFI = Just

export
SafeCast CSSRuleList where
  safeCast = unsafeCastOnPrototypeName "CSSRuleList"

export data CSSStyleDeclaration : Type where [external]

export
ToFFI CSSStyleDeclaration CSSStyleDeclaration where toFFI = id

export
FromFFI CSSStyleDeclaration CSSStyleDeclaration where fromFFI = Just

export
SafeCast CSSStyleDeclaration where
  safeCast = unsafeCastOnPrototypeName "CSSStyleDeclaration"

export data CSSStyleRule : Type where [external]

export
ToFFI CSSStyleRule CSSStyleRule where toFFI = id

export
FromFFI CSSStyleRule CSSStyleRule where fromFFI = Just

export
SafeCast CSSStyleRule where
  safeCast = unsafeCastOnPrototypeName "CSSStyleRule"

export data CSSStyleSheet : Type where [external]

export
ToFFI CSSStyleSheet CSSStyleSheet where toFFI = id

export
FromFFI CSSStyleSheet CSSStyleSheet where fromFFI = Just

export
SafeCast CSSStyleSheet where
  safeCast = unsafeCastOnPrototypeName "CSSStyleSheet"

export data MediaList : Type where [external]

export
ToFFI MediaList MediaList where toFFI = id

export
FromFFI MediaList MediaList where fromFFI = Just

export
SafeCast MediaList where
  safeCast = unsafeCastOnPrototypeName "MediaList"

export data StyleSheet : Type where [external]

export
ToFFI StyleSheet StyleSheet where toFFI = id

export
FromFFI StyleSheet StyleSheet where fromFFI = Just

export
SafeCast StyleSheet where
  safeCast = unsafeCastOnPrototypeName "StyleSheet"

export data StyleSheetList : Type where [external]

export
ToFFI StyleSheetList StyleSheetList where toFFI = id

export
FromFFI StyleSheetList StyleSheetList where fromFFI = Just

export
SafeCast StyleSheetList where
  safeCast = unsafeCastOnPrototypeName "StyleSheetList"



--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data ElementCSSInlineStyle : Type where [external]

export
ToFFI ElementCSSInlineStyle ElementCSSInlineStyle where toFFI = id

export
FromFFI ElementCSSInlineStyle ElementCSSInlineStyle where fromFFI = Just

export data LinkStyle : Type where [external]

export
ToFFI LinkStyle LinkStyle where toFFI = id

export
FromFFI LinkStyle LinkStyle where fromFFI = Just
