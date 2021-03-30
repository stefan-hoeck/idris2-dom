module Web.Css
 
import JS
import Web.Internal.CssPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CSSGroupingRule
  
  public export
  JSType CSSGroupingRule where
    parents =  [ CSSRule , Object ]

    mixins =  []

namespace CSSImportRule
  
  public export
  JSType CSSImportRule where
    parents =  [ CSSRule , Object ]

    mixins =  []

namespace CSSMarginRule
  
  public export
  JSType CSSMarginRule where
    parents =  [ CSSRule , Object ]

    mixins =  []

namespace CSSNamespaceRule
  
  public export
  JSType CSSNamespaceRule where
    parents =  [ CSSRule , Object ]

    mixins =  []

namespace CSSPageRule
  
  public export
  JSType CSSPageRule where
    parents =  [ CSSGroupingRule , CSSRule , Object ]

    mixins =  []

namespace CSSPseudoElement
  
  public export
  JSType CSSPseudoElement where
    parents =  [ EventTarget , Object ]

    mixins =  [ Animatable ]

namespace CSSRule
  
  public export
  JSType CSSRule where
    parents =  [ Object ]

    mixins =  []
  
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

namespace CSSRuleList
  
  public export
  JSType CSSRuleList where
    parents =  [ Object ]

    mixins =  []

namespace CSSStyleDeclaration
  
  public export
  JSType CSSStyleDeclaration where
    parents =  [ Object ]

    mixins =  []

namespace CSSStyleRule
  
  public export
  JSType CSSStyleRule where
    parents =  [ CSSRule , Object ]

    mixins =  []

namespace CSSStyleSheet
  
  public export
  JSType CSSStyleSheet where
    parents =  [ StyleSheet , Object ]

    mixins =  []

namespace MediaList
  
  public export
  JSType MediaList where
    parents =  [ Object ]

    mixins =  []

namespace StyleSheet
  
  public export
  JSType StyleSheet where
    parents =  [ Object ]

    mixins =  []

namespace StyleSheetList
  
  public export
  JSType StyleSheetList where
    parents =  [ Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------



