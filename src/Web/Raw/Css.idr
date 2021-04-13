module Web.Raw.Css

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
             -> (index : Optional UInt32)
             -> JSIO UInt32
  insertRule a b c = primJS $ CSSGroupingRule.prim__insertRule a b (toFFI c)

  export
  insertRule' : (obj : CSSGroupingRule) -> (rule : CSSOMString) -> JSIO UInt32
  insertRule' a b = primJS $ CSSGroupingRule.prim__insertRule a b undef

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
  selectorText : CSSPageRule -> Attribute True I CSSOMString
  selectorText = fromPrim "CSSPageRule.getselectorText"
                          prim__selectorText
                          prim__setSelectorText

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
  cssText : CSSRule -> Attribute True I CSSOMString
  cssText = fromPrim "CSSRule.getcssText" prim__cssText prim__setCssText

  export
  parentRule : (obj : CSSRule) -> JSIO (Maybe CSSRule)
  parentRule a = tryJS "CSSRule.parentRule" $ CSSRule.prim__parentRule a

  export
  parentStyleSheet : (obj : CSSRule) -> JSIO (Maybe CSSStyleSheet)
  parentStyleSheet a = tryJS "CSSRule.parentStyleSheet"
                     $ CSSRule.prim__parentStyleSheet a

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
  item : (obj : CSSRuleList) -> (index : UInt32) -> JSIO (Maybe CSSRule)
  item a b = tryJS "CSSRuleList.item" $ CSSRuleList.prim__item a b

namespace CSSStyleDeclaration

  public export
  JSType CSSStyleDeclaration where
    parents =  [ Object ]

    mixins =  []

  export
  cssFloat : CSSStyleDeclaration -> Attribute True I CSSOMString
  cssFloat = fromPrim "CSSStyleDeclaration.getcssFloat"
                      prim__cssFloat
                      prim__setCssFloat

  export
  cssText : CSSStyleDeclaration -> Attribute True I CSSOMString
  cssText = fromPrim "CSSStyleDeclaration.getcssText"
                     prim__cssText
                     prim__setCssText

  export
  length : (obj : CSSStyleDeclaration) -> JSIO UInt32
  length a = primJS $ CSSStyleDeclaration.prim__length a

  export
  parentRule : (obj : CSSStyleDeclaration) -> JSIO (Maybe CSSRule)
  parentRule a = tryJS "CSSStyleDeclaration.parentRule"
               $ CSSStyleDeclaration.prim__parentRule a

  export
  getPropertyPriority :  (obj : CSSStyleDeclaration)
                      -> (property : CSSOMString)
                      -> JSIO CSSOMString
  getPropertyPriority a b = primJS
                          $ CSSStyleDeclaration.prim__getPropertyPriority a b

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
              -> (priority : Optional CSSOMString)
              -> JSIO ()
  setProperty a b c d = primJS
                      $ CSSStyleDeclaration.prim__setProperty a b c (toFFI d)

  export
  setProperty' :  (obj : CSSStyleDeclaration)
               -> (property : CSSOMString)
               -> (value : CSSOMString)
               -> JSIO ()
  setProperty' a b c = primJS
                     $ CSSStyleDeclaration.prim__setProperty a b c undef

namespace CSSStyleRule

  public export
  JSType CSSStyleRule where
    parents =  [ CSSRule , Object ]

    mixins =  []

  export
  selectorText : CSSStyleRule -> Attribute True I CSSOMString
  selectorText = fromPrim "CSSStyleRule.getselectorText"
                          prim__selectorText
                          prim__setSelectorText

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
  ownerRule : (obj : CSSStyleSheet) -> JSIO (Maybe CSSRule)
  ownerRule a = tryJS "CSSStyleSheet.ownerRule"
              $ CSSStyleSheet.prim__ownerRule a

  export
  rules : (obj : CSSStyleSheet) -> JSIO CSSRuleList
  rules a = primJS $ CSSStyleSheet.prim__rules a

  export
  addRule :  (obj : CSSStyleSheet)
          -> (selector : Optional String)
          -> (style : Optional String)
          -> (index : Optional UInt32)
          -> JSIO Int32
  addRule a b c d = primJS
                  $ CSSStyleSheet.prim__addRule a (toFFI b) (toFFI c) (toFFI d)

  export
  addRule' : (obj : CSSStyleSheet) -> JSIO Int32
  addRule' a = primJS $ CSSStyleSheet.prim__addRule a undef undef undef

  export
  deleteRule : (obj : CSSStyleSheet) -> (index : UInt32) -> JSIO ()
  deleteRule a b = primJS $ CSSStyleSheet.prim__deleteRule a b

  export
  insertRule :  (obj : CSSStyleSheet)
             -> (rule : CSSOMString)
             -> (index : Optional UInt32)
             -> JSIO UInt32
  insertRule a b c = primJS $ CSSStyleSheet.prim__insertRule a b (toFFI c)

  export
  insertRule' : (obj : CSSStyleSheet) -> (rule : CSSOMString) -> JSIO UInt32
  insertRule' a b = primJS $ CSSStyleSheet.prim__insertRule a b undef

  export
  removeRule : (obj : CSSStyleSheet) -> (index : Optional UInt32) -> JSIO ()
  removeRule a b = primJS $ CSSStyleSheet.prim__removeRule a (toFFI b)

  export
  removeRule' : (obj : CSSStyleSheet) -> JSIO ()
  removeRule' a = primJS $ CSSStyleSheet.prim__removeRule a undef

namespace MediaList

  public export
  JSType MediaList where
    parents =  [ Object ]

    mixins =  []

  export
  length : (obj : MediaList) -> JSIO UInt32
  length a = primJS $ MediaList.prim__length a

  export
  mediaText : MediaList -> Attribute True I CSSOMString
  mediaText = fromPrim "MediaList.getmediaText"
                       prim__mediaText
                       prim__setMediaText

  export
  appendMedium : (obj : MediaList) -> (medium : CSSOMString) -> JSIO ()
  appendMedium a b = primJS $ MediaList.prim__appendMedium a b

  export
  deleteMedium : (obj : MediaList) -> (medium : CSSOMString) -> JSIO ()
  deleteMedium a b = primJS $ MediaList.prim__deleteMedium a b

  export
  item : (obj : MediaList) -> (index : UInt32) -> JSIO (Maybe CSSOMString)
  item a b = tryJS "MediaList.item" $ MediaList.prim__item a b

namespace StyleSheet

  public export
  JSType StyleSheet where
    parents =  [ Object ]

    mixins =  []

  export
  disabled : StyleSheet -> Attribute True I Bool
  disabled = fromPrim "StyleSheet.getdisabled" prim__disabled prim__setDisabled

  export
  href : (obj : StyleSheet) -> JSIO (Maybe String)
  href a = tryJS "StyleSheet.href" $ StyleSheet.prim__href a

  export
  media : (obj : StyleSheet) -> JSIO MediaList
  media a = primJS $ StyleSheet.prim__media a

  export
  ownerNode :  (obj : StyleSheet)
            -> JSIO (Maybe (NS I [ Element , ProcessingInstruction ]))
  ownerNode a = tryJS "StyleSheet.ownerNode" $ StyleSheet.prim__ownerNode a

  export
  parentStyleSheet : (obj : StyleSheet) -> JSIO (Maybe CSSStyleSheet)
  parentStyleSheet a = tryJS "StyleSheet.parentStyleSheet"
                     $ StyleSheet.prim__parentStyleSheet a

  export
  title : (obj : StyleSheet) -> JSIO (Maybe String)
  title a = tryJS "StyleSheet.title" $ StyleSheet.prim__title a

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
       -> JSIO (Maybe CSSStyleSheet)
  item a b = tryJS "StyleSheetList.item" $ StyleSheetList.prim__item a b

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ElementCSSInlineStyle

  export
  style : (obj : ElementCSSInlineStyle) -> JSIO CSSStyleDeclaration
  style a = primJS $ ElementCSSInlineStyle.prim__style a

namespace LinkStyle

  export
  sheet : (obj : LinkStyle) -> JSIO (Maybe CSSStyleSheet)
  sheet a = tryJS "LinkStyle.sheet" $ LinkStyle.prim__sheet a
