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
             -> (index : UInt32)
             -> JSIO ()
  deleteRule a b = primJS $ CSSGroupingRule.prim__deleteRule (up a) b
  
  export
  insertRule :  JSType t1
             => {auto 0 _ : Elem CSSGroupingRule (Types t1)}
             -> (obj : t1)
             -> (rule : CSSOMString)
             -> (index : Optional UInt32)
             -> JSIO UInt32
  insertRule a b c = primJS
                   $ CSSGroupingRule.prim__insertRule (up a) b (toFFI c)

  export
  insertRule' :  JSType t1
              => {auto 0 _ : Elem CSSGroupingRule (Types t1)}
              -> (obj : t1)
              -> (rule : CSSOMString)
              -> JSIO UInt32
  insertRule' a b = primJS $ CSSGroupingRule.prim__insertRule (up a) b undef

namespace CSSImportRule
  
  export
  href :  JSType t1
       => {auto 0 _ : Elem CSSImportRule (Types t1)}
       -> (obj : t1)
       -> JSIO String
  href a = primJS $ CSSImportRule.prim__href (up a)
  
  export
  media :  JSType t1
        => {auto 0 _ : Elem CSSImportRule (Types t1)}
        -> (obj : t1)
        -> JSIO MediaList
  media a = primJS $ CSSImportRule.prim__media (up a)
  
  export
  styleSheet :  JSType t1
             => {auto 0 _ : Elem CSSImportRule (Types t1)}
             -> (obj : t1)
             -> JSIO CSSStyleSheet
  styleSheet a = primJS $ CSSImportRule.prim__styleSheet (up a)

namespace CSSMarginRule
  
  export
  name :  JSType t1
       => {auto 0 _ : Elem CSSMarginRule (Types t1)}
       -> (obj : t1)
       -> JSIO CSSOMString
  name a = primJS $ CSSMarginRule.prim__name (up a)
  
  export
  style :  JSType t1
        => {auto 0 _ : Elem CSSMarginRule (Types t1)}
        -> (obj : t1)
        -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSMarginRule.prim__style (up a)

namespace CSSNamespaceRule
  
  export
  namespaceURI :  JSType t1
               => {auto 0 _ : Elem CSSNamespaceRule (Types t1)}
               -> (obj : t1)
               -> JSIO CSSOMString
  namespaceURI a = primJS $ CSSNamespaceRule.prim__namespaceURI (up a)
  
  export
  prefix_ :  JSType t1
          => {auto 0 _ : Elem CSSNamespaceRule (Types t1)}
          -> (obj : t1)
          -> JSIO CSSOMString
  prefix_ a = primJS $ CSSNamespaceRule.prim__prefix (up a)

namespace CSSPageRule
  
  export
  selectorText : CSSPageRule -> Attribute True I CSSOMString
  selectorText = fromPrim "CSSPageRule.getselectorText"
                          prim__selectorText
                          prim__setSelectorText
  
  export
  style :  JSType t1
        => {auto 0 _ : Elem CSSPageRule (Types t1)}
        -> (obj : t1)
        -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSPageRule.prim__style (up a)

namespace CSSPseudoElement
  
  export
  element :  JSType t1
          => {auto 0 _ : Elem CSSPseudoElement (Types t1)}
          -> (obj : t1)
          -> JSIO Element
  element a = primJS $ CSSPseudoElement.prim__element (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem CSSPseudoElement (Types t1)}
       -> (obj : t1)
       -> JSIO CSSOMString
  type a = primJS $ CSSPseudoElement.prim__type (up a)

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
  
  export
  cssText : CSSRule -> Attribute True I CSSOMString
  cssText = fromPrim "CSSRule.getcssText" prim__cssText prim__setCssText
  
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
       -> JSIO UInt16
  type a = primJS $ CSSRule.prim__type (up a)

namespace CSSRuleList
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem CSSRuleList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ CSSRuleList.prim__length (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem CSSRuleList (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe CSSRule)
  item a b = tryJS "CSSRuleList.item" $ CSSRuleList.prim__item (up a) b

namespace CSSStyleDeclaration
  
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
  length :  JSType t1
         => {auto 0 _ : Elem CSSStyleDeclaration (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ CSSStyleDeclaration.prim__length (up a)
  
  export
  parentRule :  JSType t1
             => {auto 0 _ : Elem CSSStyleDeclaration (Types t1)}
             -> (obj : t1)
             -> JSIO (Maybe CSSRule)
  parentRule a = tryJS "CSSStyleDeclaration.parentRule"
               $ CSSStyleDeclaration.prim__parentRule (up a)
  
  export
  getPropertyPriority :  JSType t1
                      => {auto 0 _ : Elem CSSStyleDeclaration (Types t1)}
                      -> (obj : t1)
                      -> (property : CSSOMString)
                      -> JSIO CSSOMString
  getPropertyPriority a b = primJS
                          $ CSSStyleDeclaration.prim__getPropertyPriority (up a)
                                                                          b
  
  export
  getPropertyValue :  JSType t1
                   => {auto 0 _ : Elem CSSStyleDeclaration (Types t1)}
                   -> (obj : t1)
                   -> (property : CSSOMString)
                   -> JSIO CSSOMString
  getPropertyValue a b = primJS
                       $ CSSStyleDeclaration.prim__getPropertyValue (up a) b
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem CSSStyleDeclaration (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO CSSOMString
  item a b = primJS $ CSSStyleDeclaration.prim__item (up a) b
  
  export
  removeProperty :  JSType t1
                 => {auto 0 _ : Elem CSSStyleDeclaration (Types t1)}
                 -> (obj : t1)
                 -> (property : CSSOMString)
                 -> JSIO CSSOMString
  removeProperty a b = primJS
                     $ CSSStyleDeclaration.prim__removeProperty (up a) b
  
  export
  setProperty :  JSType t1
              => {auto 0 _ : Elem CSSStyleDeclaration (Types t1)}
              -> (obj : t1)
              -> (property : CSSOMString)
              -> (value : CSSOMString)
              -> (priority : Optional CSSOMString)
              -> JSIO ()
  setProperty a b c d = primJS
                      $ CSSStyleDeclaration.prim__setProperty (up a)
                                                              b
                                                              c
                                                              (toFFI d)

  export
  setProperty' :  JSType t1
               => {auto 0 _ : Elem CSSStyleDeclaration (Types t1)}
               -> (obj : t1)
               -> (property : CSSOMString)
               -> (value : CSSOMString)
               -> JSIO ()
  setProperty' a b c = primJS
                     $ CSSStyleDeclaration.prim__setProperty (up a) b c undef

namespace CSSStyleRule
  
  export
  selectorText : CSSStyleRule -> Attribute True I CSSOMString
  selectorText = fromPrim "CSSStyleRule.getselectorText"
                          prim__selectorText
                          prim__setSelectorText
  
  export
  style :  JSType t1
        => {auto 0 _ : Elem CSSStyleRule (Types t1)}
        -> (obj : t1)
        -> JSIO CSSStyleDeclaration
  style a = primJS $ CSSStyleRule.prim__style (up a)

namespace CSSStyleSheet
  
  export
  cssRules :  JSType t1
           => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
           -> (obj : t1)
           -> JSIO CSSRuleList
  cssRules a = primJS $ CSSStyleSheet.prim__cssRules (up a)
  
  export
  ownerRule :  JSType t1
            => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
            -> (obj : t1)
            -> JSIO (Maybe CSSRule)
  ownerRule a = tryJS "CSSStyleSheet.ownerRule"
              $ CSSStyleSheet.prim__ownerRule (up a)
  
  export
  rules :  JSType t1
        => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
        -> (obj : t1)
        -> JSIO CSSRuleList
  rules a = primJS $ CSSStyleSheet.prim__rules (up a)
  
  export
  addRule :  JSType t1
          => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
          -> (obj : t1)
          -> (selector : Optional String)
          -> (style : Optional String)
          -> (index : Optional UInt32)
          -> JSIO Int32
  addRule a b c d = primJS
                  $ CSSStyleSheet.prim__addRule (up a)
                                                (toFFI b)
                                                (toFFI c)
                                                (toFFI d)

  export
  addRule' :  JSType t1
           => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
           -> (obj : t1)
           -> JSIO Int32
  addRule' a = primJS $ CSSStyleSheet.prim__addRule (up a) undef undef undef
  
  export
  deleteRule :  JSType t1
             => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
             -> (obj : t1)
             -> (index : UInt32)
             -> JSIO ()
  deleteRule a b = primJS $ CSSStyleSheet.prim__deleteRule (up a) b
  
  export
  insertRule :  JSType t1
             => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
             -> (obj : t1)
             -> (rule : CSSOMString)
             -> (index : Optional UInt32)
             -> JSIO UInt32
  insertRule a b c = primJS $ CSSStyleSheet.prim__insertRule (up a) b (toFFI c)

  export
  insertRule' :  JSType t1
              => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
              -> (obj : t1)
              -> (rule : CSSOMString)
              -> JSIO UInt32
  insertRule' a b = primJS $ CSSStyleSheet.prim__insertRule (up a) b undef
  
  export
  removeRule :  JSType t1
             => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
             -> (obj : t1)
             -> (index : Optional UInt32)
             -> JSIO ()
  removeRule a b = primJS $ CSSStyleSheet.prim__removeRule (up a) (toFFI b)

  export
  removeRule' :  JSType t1
              => {auto 0 _ : Elem CSSStyleSheet (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  removeRule' a = primJS $ CSSStyleSheet.prim__removeRule (up a) undef

namespace MediaList
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem MediaList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ MediaList.prim__length (up a)
  
  export
  mediaText : MediaList -> Attribute True I CSSOMString
  mediaText = fromPrim "MediaList.getmediaText"
                       prim__mediaText
                       prim__setMediaText
  
  export
  appendMedium :  JSType t1
               => {auto 0 _ : Elem MediaList (Types t1)}
               -> (obj : t1)
               -> (medium : CSSOMString)
               -> JSIO ()
  appendMedium a b = primJS $ MediaList.prim__appendMedium (up a) b
  
  export
  deleteMedium :  JSType t1
               => {auto 0 _ : Elem MediaList (Types t1)}
               -> (obj : t1)
               -> (medium : CSSOMString)
               -> JSIO ()
  deleteMedium a b = primJS $ MediaList.prim__deleteMedium (up a) b
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem MediaList (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe CSSOMString)
  item a b = tryJS "MediaList.item" $ MediaList.prim__item (up a) b

namespace StyleSheet
  
  export
  disabled : StyleSheet -> Attribute True I Bool
  disabled = fromPrim "StyleSheet.getdisabled" prim__disabled prim__setDisabled
  
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
       -> JSIO CSSOMString
  type a = primJS $ StyleSheet.prim__type (up a)

namespace StyleSheetList
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem StyleSheetList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ StyleSheetList.prim__length (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem StyleSheetList (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe CSSStyleSheet)
  item a b = tryJS "StyleSheetList.item" $ StyleSheetList.prim__item (up a) b

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

