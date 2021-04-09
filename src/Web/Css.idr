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
  
  export
  cssRules : (obj : CSSGroupingRule) -> JSIO CSSRuleList
  cssRules a = primJS $ CSSGroupingRule.prim__cssRules a
  
  export
  deleteRule : (obj : CSSGroupingRule) -> (index : UInt32) -> JSIO ()
  deleteRule a b = primJS $ CSSGroupingRule.prim__deleteRule a b
  
  export
  insertRule :  (obj : CSSGroupingRule)
             -> (rule : CSSOMString)
             -> (index : UndefOr UInt32)
             -> JSIO UInt32
  insertRule a b c = primJS $ CSSGroupingRule.prim__insertRule a b c

namespace CSSImportRule
  
  public export
  JSType CSSImportRule where
    parents =  [ CSSRule , Object ]

    mixins =  []
  
  export
  href : (obj : CSSImportRule) -> JSIO String
  href a = primJS $ CSSImportRule.prim__href a
  
  export
  media : (obj : CSSImportRule) -> JSIO MediaList
  media a = primJS $ CSSImportRule.prim__media a
  
  export
  styleSheet : (obj : CSSImportRule) -> JSIO CSSStyleSheet
  styleSheet a = primJS $ CSSImportRule.prim__styleSheet a

namespace CSSMarginRule
  
  public export
  JSType CSSMarginRule where
    parents =  [ CSSRule , Object ]

    mixins =  []
  
  export
  name : (obj : CSSMarginRule) -> JSIO CSSOMString
  name a = primJS $ CSSMarginRule.prim__name a
  
  export
  style : (obj : CSSMarginRule) -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSMarginRule.prim__style a

namespace CSSNamespaceRule
  
  public export
  JSType CSSNamespaceRule where
    parents =  [ CSSRule , Object ]

    mixins =  []
  
  export
  namespaceURI : (obj : CSSNamespaceRule) -> JSIO CSSOMString
  namespaceURI a = primJS $ CSSNamespaceRule.prim__namespaceURI a
  
  export
  prefix_ : (obj : CSSNamespaceRule) -> JSIO CSSOMString
  prefix_ a = primJS $ CSSNamespaceRule.prim__prefix a

namespace CSSPageRule
  
  public export
  JSType CSSPageRule where
    parents =  [ CSSGroupingRule , CSSRule , Object ]

    mixins =  []
  
  export
  selectorText : (obj : CSSPageRule) -> JSIO CSSOMString
  selectorText a = primJS $ CSSPageRule.prim__selectorText a
  
  export
  setSelectorText : (obj : CSSPageRule) -> (value : CSSOMString) -> JSIO ()
  setSelectorText a b = primJS $ CSSPageRule.prim__setSelectorText a b
  
  export
  style : (obj : CSSPageRule) -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSPageRule.prim__style a

namespace CSSPseudoElement
  
  public export
  JSType CSSPseudoElement where
    parents =  [ EventTarget , Object ]

    mixins =  [ Animatable ]
  
  export
  element : (obj : CSSPseudoElement) -> JSIO Element
  element a = primJS $ CSSPseudoElement.prim__element a
  
  export
  type : (obj : CSSPseudoElement) -> JSIO CSSOMString
  type a = primJS $ CSSPseudoElement.prim__type a

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
  
  export
  cssText : (obj : CSSRule) -> JSIO CSSOMString
  cssText a = primJS $ CSSRule.prim__cssText a
  
  export
  setCssText : (obj : CSSRule) -> (value : CSSOMString) -> JSIO ()
  setCssText a b = primJS $ CSSRule.prim__setCssText a b
  
  export
  parentRule : (obj : CSSRule) -> JSIO (Nullable CSSRule)
  parentRule a = primJS $ CSSRule.prim__parentRule a
  
  export
  parentStyleSheet : (obj : CSSRule) -> JSIO (Nullable CSSStyleSheet)
  parentStyleSheet a = primJS $ CSSRule.prim__parentStyleSheet a
  
  export
  type : (obj : CSSRule) -> JSIO UInt16
  type a = primJS $ CSSRule.prim__type a

namespace CSSRuleList
  
  public export
  JSType CSSRuleList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : CSSRuleList) -> JSIO UInt32
  length a = primJS $ CSSRuleList.prim__length a
  
  export
  item : (obj : CSSRuleList) -> (index : UInt32) -> JSIO (Nullable CSSRule)
  item a b = primJS $ CSSRuleList.prim__item a b

namespace CSSStyleDeclaration
  
  public export
  JSType CSSStyleDeclaration where
    parents =  [ Object ]

    mixins =  []
  
  export
  cssFloat : (obj : CSSStyleDeclaration) -> JSIO CSSOMString
  cssFloat a = primJS $ CSSStyleDeclaration.prim__cssFloat a
  
  export
  setCssFloat : (obj : CSSStyleDeclaration) -> (value : CSSOMString) -> JSIO ()
  setCssFloat a b = primJS $ CSSStyleDeclaration.prim__setCssFloat a b
  
  export
  cssText : (obj : CSSStyleDeclaration) -> JSIO CSSOMString
  cssText a = primJS $ CSSStyleDeclaration.prim__cssText a
  
  export
  setCssText : (obj : CSSStyleDeclaration) -> (value : CSSOMString) -> JSIO ()
  setCssText a b = primJS $ CSSStyleDeclaration.prim__setCssText a b
  
  export
  length : (obj : CSSStyleDeclaration) -> JSIO UInt32
  length a = primJS $ CSSStyleDeclaration.prim__length a
  
  export
  parentRule : (obj : CSSStyleDeclaration) -> JSIO (Nullable CSSRule)
  parentRule a = primJS $ CSSStyleDeclaration.prim__parentRule a
  
  export
  getPropertyPriority :  (obj : CSSStyleDeclaration)
                      -> (property : CSSOMString)
                      -> JSIO CSSOMString
  getPropertyPriority a b = primJS $ CSSStyleDeclaration.prim__getPropertyPriority a
                                                                                   b
  
  export
  getPropertyValue :  (obj : CSSStyleDeclaration)
                   -> (property : CSSOMString)
                   -> JSIO CSSOMString
  getPropertyValue a b = primJS $ CSSStyleDeclaration.prim__getPropertyValue a b
  
  export
  item : (obj : CSSStyleDeclaration) -> (index : UInt32) -> JSIO CSSOMString
  item a b = primJS $ CSSStyleDeclaration.prim__item a b
  
  export
  removeProperty :  (obj : CSSStyleDeclaration)
                 -> (property : CSSOMString)
                 -> JSIO CSSOMString
  removeProperty a b = primJS $ CSSStyleDeclaration.prim__removeProperty a b
  
  export
  setProperty :  (obj : CSSStyleDeclaration)
              -> (property : CSSOMString)
              -> (value : CSSOMString)
              -> (priority : UndefOr CSSOMString)
              -> JSIO ()
  setProperty a b c d = primJS $ CSSStyleDeclaration.prim__setProperty a b c d

namespace CSSStyleRule
  
  public export
  JSType CSSStyleRule where
    parents =  [ CSSRule , Object ]

    mixins =  []
  
  export
  selectorText : (obj : CSSStyleRule) -> JSIO CSSOMString
  selectorText a = primJS $ CSSStyleRule.prim__selectorText a
  
  export
  setSelectorText : (obj : CSSStyleRule) -> (value : CSSOMString) -> JSIO ()
  setSelectorText a b = primJS $ CSSStyleRule.prim__setSelectorText a b
  
  export
  style : (obj : CSSStyleRule) -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSStyleRule.prim__style a

namespace CSSStyleSheet
  
  public export
  JSType CSSStyleSheet where
    parents =  [ StyleSheet , Object ]

    mixins =  []
  
  export
  cssRules : (obj : CSSStyleSheet) -> JSIO CSSRuleList
  cssRules a = primJS $ CSSStyleSheet.prim__cssRules a
  
  export
  ownerRule : (obj : CSSStyleSheet) -> JSIO (Nullable CSSRule)
  ownerRule a = primJS $ CSSStyleSheet.prim__ownerRule a
  
  export
  rules : (obj : CSSStyleSheet) -> JSIO CSSRuleList
  rules a = primJS $ CSSStyleSheet.prim__rules a
  
  export
  addRule :  (obj : CSSStyleSheet)
          -> (selector : UndefOr String)
          -> (style : UndefOr String)
          -> (index : UndefOr UInt32)
          -> JSIO Int32
  addRule a b c d = primJS $ CSSStyleSheet.prim__addRule a b c d
  
  export
  deleteRule : (obj : CSSStyleSheet) -> (index : UInt32) -> JSIO ()
  deleteRule a b = primJS $ CSSStyleSheet.prim__deleteRule a b
  
  export
  insertRule :  (obj : CSSStyleSheet)
             -> (rule : CSSOMString)
             -> (index : UndefOr UInt32)
             -> JSIO UInt32
  insertRule a b c = primJS $ CSSStyleSheet.prim__insertRule a b c
  
  export
  removeRule : (obj : CSSStyleSheet) -> (index : UndefOr UInt32) -> JSIO ()
  removeRule a b = primJS $ CSSStyleSheet.prim__removeRule a b

namespace MediaList
  
  public export
  JSType MediaList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : MediaList) -> JSIO UInt32
  length a = primJS $ MediaList.prim__length a
  
  export
  mediaText : (obj : MediaList) -> JSIO CSSOMString
  mediaText a = primJS $ MediaList.prim__mediaText a
  
  export
  setMediaText : (obj : MediaList) -> (value : CSSOMString) -> JSIO ()
  setMediaText a b = primJS $ MediaList.prim__setMediaText a b
  
  export
  appendMedium : (obj : MediaList) -> (medium : CSSOMString) -> JSIO ()
  appendMedium a b = primJS $ MediaList.prim__appendMedium a b
  
  export
  deleteMedium : (obj : MediaList) -> (medium : CSSOMString) -> JSIO ()
  deleteMedium a b = primJS $ MediaList.prim__deleteMedium a b
  
  export
  item : (obj : MediaList) -> (index : UInt32) -> JSIO (Nullable CSSOMString)
  item a b = primJS $ MediaList.prim__item a b

namespace StyleSheet
  
  public export
  JSType StyleSheet where
    parents =  [ Object ]

    mixins =  []
  
  export
  disabled : (obj : StyleSheet) -> JSIO Boolean
  disabled a = primJS $ StyleSheet.prim__disabled a
  
  export
  setDisabled : (obj : StyleSheet) -> (value : Boolean) -> JSIO ()
  setDisabled a b = primJS $ StyleSheet.prim__setDisabled a b
  
  export
  href : (obj : StyleSheet) -> JSIO (Nullable String)
  href a = primJS $ StyleSheet.prim__href a
  
  export
  media : (obj : StyleSheet) -> JSIO MediaList
  media a = primJS $ StyleSheet.prim__media a
  
  export
  ownerNode :  (obj : StyleSheet)
            -> JSIO (Nullable (Union2 Element ProcessingInstruction))
  ownerNode a = primJS $ StyleSheet.prim__ownerNode a
  
  export
  parentStyleSheet : (obj : StyleSheet) -> JSIO (Nullable CSSStyleSheet)
  parentStyleSheet a = primJS $ StyleSheet.prim__parentStyleSheet a
  
  export
  title : (obj : StyleSheet) -> JSIO (Nullable String)
  title a = primJS $ StyleSheet.prim__title a
  
  export
  type : (obj : StyleSheet) -> JSIO CSSOMString
  type a = primJS $ StyleSheet.prim__type a

namespace StyleSheetList
  
  public export
  JSType StyleSheetList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : StyleSheetList) -> JSIO UInt32
  length a = primJS $ StyleSheetList.prim__length a
  
  export
  item :  (obj : StyleSheetList)
       -> (index : UInt32)
       -> JSIO (Nullable CSSStyleSheet)
  item a b = primJS $ StyleSheetList.prim__item a b

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ElementCSSInlineStyle
  
  export
  style : (obj : ElementCSSInlineStyle) -> JSIO CSSStyleDeclaration
  style a = primJS $ ElementCSSInlineStyle.prim__style a

namespace LinkStyle
  
  export
  sheet : (obj : LinkStyle) -> JSIO (Nullable CSSStyleSheet)
  sheet a = primJS $ LinkStyle.prim__sheet a

