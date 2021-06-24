module Web.Raw.Css
 
import JS
import Web.Internal.CssPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CSSGroupingRule
  
  export
  cssRules :  JSType t1
           => {auto 0 _ : Elem CSSGroupingRule (Types t1)}
           -> (obj : t1)
           -> JSIO CSSRuleList
  cssRules a = primJS $ CSSGroupingRule.prim__cssRules (up a)
  
  export
  deleteRule :  JSType t1
             => {auto 0 _ : Elem CSSGroupingRule (Types t1)}
             -> (obj : t1)
             -> (index : Bits32)
             -> JSIO ()
  deleteRule a b = primJS $ CSSGroupingRule.prim__deleteRule (up a) b
  
  export
  insertRule :  JSType t1
             => {auto 0 _ : Elem CSSGroupingRule (Types t1)}
             -> (obj : t1)
             -> (rule : String)
             -> (index : Optional Bits32)
             -> JSIO Bits32
  insertRule a b c = primJS
                   $ CSSGroupingRule.prim__insertRule (up a) b (toFFI c)

  export
  insertRule' :  JSType t1
              => {auto 0 _ : Elem CSSGroupingRule (Types t1)}
              -> (obj : t1)
              -> (rule : String)
              -> JSIO Bits32
  insertRule' a b = primJS $ CSSGroupingRule.prim__insertRule (up a) b undef

namespace CSSImportRule
  
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
  
  export
  name : (obj : CSSMarginRule) -> JSIO String
  name a = primJS $ CSSMarginRule.prim__name a
  
  export
  style : (obj : CSSMarginRule) -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSMarginRule.prim__style a

namespace CSSNamespaceRule
  
  export
  namespaceURI : (obj : CSSNamespaceRule) -> JSIO String
  namespaceURI a = primJS $ CSSNamespaceRule.prim__namespaceURI a
  
  export
  prefix_ : (obj : CSSNamespaceRule) -> JSIO String
  prefix_ a = primJS $ CSSNamespaceRule.prim__prefix a

namespace CSSPageRule
  
  export
  selectorText : CSSPageRule -> Attribute True I String
  selectorText v = fromPrim "CSSPageRule.getselectorText"
                            prim__selectorText
                            prim__setSelectorText
                            v
  
  export
  style : (obj : CSSPageRule) -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSPageRule.prim__style a

namespace CSSPseudoElement
  
  export
  element : (obj : CSSPseudoElement) -> JSIO Element
  element a = primJS $ CSSPseudoElement.prim__element a
  
  export
  type : (obj : CSSPseudoElement) -> JSIO String
  type a = primJS $ CSSPseudoElement.prim__type a

namespace CSSRule
  
  public export
  CHARSET_RULE : Bits16
  CHARSET_RULE = 2
  
  public export
  FONT_FACE_RULE : Bits16
  FONT_FACE_RULE = 5
  
  public export
  IMPORT_RULE : Bits16
  IMPORT_RULE = 3
  
  public export
  MARGIN_RULE : Bits16
  MARGIN_RULE = 9
  
  public export
  MEDIA_RULE : Bits16
  MEDIA_RULE = 4
  
  public export
  NAMESPACE_RULE : Bits16
  NAMESPACE_RULE = 10
  
  public export
  PAGE_RULE : Bits16
  PAGE_RULE = 6
  
  public export
  STYLE_RULE : Bits16
  STYLE_RULE = 1
  
  export
  cssText :  JSType t
          => {auto 0 _ : Elem CSSRule (Types t)}
          -> t
          -> Attribute True I String
  cssText v = fromPrim "CSSRule.getcssText"
                       prim__cssText
                       prim__setCssText
                       (v :> CSSRule)
  
  export
  parentRule :  JSType t1
             => {auto 0 _ : Elem CSSRule (Types t1)}
             -> (obj : t1)
             -> JSIO (Maybe CSSRule)
  parentRule a = tryJS "CSSRule.parentRule" $ CSSRule.prim__parentRule (up a)
  
  export
  parentStyleSheet :  JSType t1
                   => {auto 0 _ : Elem CSSRule (Types t1)}
                   -> (obj : t1)
                   -> JSIO (Maybe CSSStyleSheet)
  parentStyleSheet a = tryJS "CSSRule.parentStyleSheet"
                     $ CSSRule.prim__parentStyleSheet (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem CSSRule (Types t1)}
       -> (obj : t1)
       -> JSIO Bits16
  type a = primJS $ CSSRule.prim__type (up a)

namespace CSSRuleList
  
  export
  length : (obj : CSSRuleList) -> JSIO Bits32
  length a = primJS $ CSSRuleList.prim__length a
  
  export
  item : (obj : CSSRuleList) -> (index : Bits32) -> JSIO (Maybe CSSRule)
  item a b = tryJS "CSSRuleList.item" $ CSSRuleList.prim__item a b

namespace CSSStyleDeclaration
  
  export
  cssFloat : CSSStyleDeclaration -> Attribute True I String
  cssFloat v = fromPrim "CSSStyleDeclaration.getcssFloat"
                        prim__cssFloat
                        prim__setCssFloat
                        v
  
  export
  cssText : CSSStyleDeclaration -> Attribute True I String
  cssText v = fromPrim "CSSStyleDeclaration.getcssText"
                       prim__cssText
                       prim__setCssText
                       v
  
  export
  length : (obj : CSSStyleDeclaration) -> JSIO Bits32
  length a = primJS $ CSSStyleDeclaration.prim__length a
  
  export
  parentRule : (obj : CSSStyleDeclaration) -> JSIO (Maybe CSSRule)
  parentRule a = tryJS "CSSStyleDeclaration.parentRule"
               $ CSSStyleDeclaration.prim__parentRule a
  
  export
  getPropertyPriority :  (obj : CSSStyleDeclaration)
                      -> (property : String)
                      -> JSIO String
  getPropertyPriority a b = primJS
                          $ CSSStyleDeclaration.prim__getPropertyPriority a b
  
  export
  getPropertyValue :  (obj : CSSStyleDeclaration)
                   -> (property : String)
                   -> JSIO String
  getPropertyValue a b = primJS $ CSSStyleDeclaration.prim__getPropertyValue a b
  
  export
  item : (obj : CSSStyleDeclaration) -> (index : Bits32) -> JSIO String
  item a b = primJS $ CSSStyleDeclaration.prim__item a b
  
  export
  removeProperty :  (obj : CSSStyleDeclaration)
                 -> (property : String)
                 -> JSIO String
  removeProperty a b = primJS $ CSSStyleDeclaration.prim__removeProperty a b
  
  export
  setProperty :  (obj : CSSStyleDeclaration)
              -> (property : String)
              -> (value : String)
              -> (priority : Optional String)
              -> JSIO ()
  setProperty a b c d = primJS
                      $ CSSStyleDeclaration.prim__setProperty a b c (toFFI d)

  export
  setProperty' :  (obj : CSSStyleDeclaration)
               -> (property : String)
               -> (value : String)
               -> JSIO ()
  setProperty' a b c = primJS
                     $ CSSStyleDeclaration.prim__setProperty a b c undef

namespace CSSStyleRule
  
  export
  selectorText : CSSStyleRule -> Attribute True I String
  selectorText v = fromPrim "CSSStyleRule.getselectorText"
                            prim__selectorText
                            prim__setSelectorText
                            v
  
  export
  style : (obj : CSSStyleRule) -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSStyleRule.prim__style a

namespace CSSStyleSheet
  
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
          -> (index : Optional Bits32)
          -> JSIO Int32
  addRule a b c d = primJS
                  $ CSSStyleSheet.prim__addRule a (toFFI b) (toFFI c) (toFFI d)

  export
  addRule' : (obj : CSSStyleSheet) -> JSIO Int32
  addRule' a = primJS $ CSSStyleSheet.prim__addRule a undef undef undef
  
  export
  deleteRule : (obj : CSSStyleSheet) -> (index : Bits32) -> JSIO ()
  deleteRule a b = primJS $ CSSStyleSheet.prim__deleteRule a b
  
  export
  insertRule :  (obj : CSSStyleSheet)
             -> (rule : String)
             -> (index : Optional Bits32)
             -> JSIO Bits32
  insertRule a b c = primJS $ CSSStyleSheet.prim__insertRule a b (toFFI c)

  export
  insertRule' : (obj : CSSStyleSheet) -> (rule : String) -> JSIO Bits32
  insertRule' a b = primJS $ CSSStyleSheet.prim__insertRule a b undef
  
  export
  removeRule : (obj : CSSStyleSheet) -> (index : Optional Bits32) -> JSIO ()
  removeRule a b = primJS $ CSSStyleSheet.prim__removeRule a (toFFI b)

  export
  removeRule' : (obj : CSSStyleSheet) -> JSIO ()
  removeRule' a = primJS $ CSSStyleSheet.prim__removeRule a undef

namespace MediaList
  
  export
  length : (obj : MediaList) -> JSIO Bits32
  length a = primJS $ MediaList.prim__length a
  
  export
  mediaText : MediaList -> Attribute True I String
  mediaText v = fromPrim "MediaList.getmediaText"
                         prim__mediaText
                         prim__setMediaText
                         v
  
  export
  appendMedium : (obj : MediaList) -> (medium : String) -> JSIO ()
  appendMedium a b = primJS $ MediaList.prim__appendMedium a b
  
  export
  deleteMedium : (obj : MediaList) -> (medium : String) -> JSIO ()
  deleteMedium a b = primJS $ MediaList.prim__deleteMedium a b
  
  export
  item : (obj : MediaList) -> (index : Bits32) -> JSIO (Maybe String)
  item a b = tryJS "MediaList.item" $ MediaList.prim__item a b

namespace StyleSheet
  
  export
  disabled :  JSType t
           => {auto 0 _ : Elem StyleSheet (Types t)}
           -> t
           -> Attribute True I Bool
  disabled v = fromPrim "StyleSheet.getdisabled"
                        prim__disabled
                        prim__setDisabled
                        (v :> StyleSheet)
  
  export
  href :  JSType t1
       => {auto 0 _ : Elem StyleSheet (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe String)
  href a = tryJS "StyleSheet.href" $ StyleSheet.prim__href (up a)
  
  export
  media :  JSType t1
        => {auto 0 _ : Elem StyleSheet (Types t1)}
        -> (obj : t1)
        -> JSIO MediaList
  media a = primJS $ StyleSheet.prim__media (up a)
  
  export
  ownerNode :  JSType t1
            => {auto 0 _ : Elem StyleSheet (Types t1)}
            -> (obj : t1)
            -> JSIO (Maybe (NS I [ Element , ProcessingInstruction ]))
  ownerNode a = tryJS "StyleSheet.ownerNode" $ StyleSheet.prim__ownerNode (up a)
  
  export
  parentStyleSheet :  JSType t1
                   => {auto 0 _ : Elem StyleSheet (Types t1)}
                   -> (obj : t1)
                   -> JSIO (Maybe CSSStyleSheet)
  parentStyleSheet a = tryJS "StyleSheet.parentStyleSheet"
                     $ StyleSheet.prim__parentStyleSheet (up a)
  
  export
  title :  JSType t1
        => {auto 0 _ : Elem StyleSheet (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe String)
  title a = tryJS "StyleSheet.title" $ StyleSheet.prim__title (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem StyleSheet (Types t1)}
       -> (obj : t1)
       -> JSIO String
  type a = primJS $ StyleSheet.prim__type (up a)

namespace StyleSheetList
  
  export
  length : (obj : StyleSheetList) -> JSIO Bits32
  length a = primJS $ StyleSheetList.prim__length a
  
  export
  item :  (obj : StyleSheetList)
       -> (index : Bits32)
       -> JSIO (Maybe CSSStyleSheet)
  item a b = tryJS "StyleSheetList.item" $ StyleSheetList.prim__item a b

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ElementCSSInlineStyle
  
  export
  style :  JSType t1
        => {auto 0 _ : Elem ElementCSSInlineStyle (Types t1)}
        -> (obj : t1)
        -> JSIO CSSStyleDeclaration
  style a = primJS $ ElementCSSInlineStyle.prim__style (up a)

namespace LinkStyle
  
  export
  sheet :  JSType t1
        => {auto 0 _ : Elem LinkStyle (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe CSSStyleSheet)
  sheet a = tryJS "LinkStyle.sheet" $ LinkStyle.prim__sheet (up a)

