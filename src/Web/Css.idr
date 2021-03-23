module Web.Css

import Web.Types

--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast CSSGroupingRule CSSRule where
  cast = believe_me

export
Cast CSSImportRule CSSRule where
  cast = believe_me

export
Cast CSSMarginRule CSSRule where
  cast = believe_me

export
Cast CSSNamespaceRule CSSRule where
  cast = believe_me

export
Cast CSSPageRule CSSGroupingRule where
  cast = believe_me

export
Cast CSSPseudoElement EventTarget where
  cast = believe_me

export
Cast CSSStyleRule CSSRule where
  cast = believe_me

export
Cast CSSStyleSheet StyleSheet where
  cast = believe_me

export
Cast HTMLElement ElementCSSInlineStyle where
  cast = believe_me

export
Cast MathMLElement ElementCSSInlineStyle where
  cast = believe_me

export
Cast ProcessingInstruction LinkStyle where
  cast = believe_me

export
Cast SVGElement ElementCSSInlineStyle where
  cast = believe_me