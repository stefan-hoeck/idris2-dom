module Web.Css

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CSSRule
  
  public export
  CHARSET_RULE : UInt16
  CHARSET_RULE = 2
  
  public export
  FONT_FACE_RULE : UInt16
  FONT_FACE_RULE = 5
  
  public export
  IMPORT_RULE : UInt16
  IMPORT_RULE = 3
  
  public export
  MARGIN_RULE : UInt16
  MARGIN_RULE = 9
  
  public export
  MEDIA_RULE : UInt16
  MEDIA_RULE = 4
  
  public export
  NAMESPACE_RULE : UInt16
  NAMESPACE_RULE = 10
  
  public export
  PAGE_RULE : UInt16
  PAGE_RULE = 6
  
  public export
  STYLE_RULE : UInt16
  STYLE_RULE = 1





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