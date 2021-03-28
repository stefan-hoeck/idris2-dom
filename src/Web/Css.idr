module Web.Css
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CSSGroupingRule
  
  public export
  JSType CSSGroupingRule where
    parents =  [ CSSRule , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.cssRules"
  prim__cssRules : AnyPtr -> PrimIO AnyPtr

  export
  cssRules : (obj : CSSGroupingRule) -> JSIO CSSRuleList

namespace CSSImportRule
  
  public export
  JSType CSSImportRule where
    parents =  [ CSSRule , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  export
  href : (obj : CSSImportRule) -> JSIO String
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  export
  media : (obj : CSSImportRule) -> JSIO MediaList
  
  %foreign "browser:lambda:x=>x.styleSheet"
  prim__styleSheet : AnyPtr -> PrimIO AnyPtr

  export
  styleSheet : (obj : CSSImportRule) -> JSIO CSSStyleSheet

namespace CSSMarginRule
  
  public export
  JSType CSSMarginRule where
    parents =  [ CSSRule , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : CSSMarginRule) -> JSIO CSSOMString
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr

  export
  style : (obj : CSSMarginRule) -> JSIO CSSStyleDeclaration

namespace CSSNamespaceRule
  
  public export
  JSType CSSNamespaceRule where
    parents =  [ CSSRule , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr

  export
  namespaceURI : (obj : CSSNamespaceRule) -> JSIO CSSOMString
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix_ : AnyPtr -> PrimIO AnyPtr

  export
  prefix_ : (obj : CSSNamespaceRule) -> JSIO CSSOMString

namespace CSSPageRule
  
  public export
  JSType CSSPageRule where
    parents =  [ CSSGroupingRule , CSSRule , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr

  export
  style : (obj : CSSPageRule) -> JSIO CSSStyleDeclaration
  
  %foreign "browser:lambda:x=>x.selectorText"
  prim__selectorText : AnyPtr -> PrimIO AnyPtr

  export
  selectorText : (obj : CSSPageRule) -> JSIO CSSOMString

  %foreign "browser:lambda:(x,v)=>{x.selectorText  = v}"
  prim__setSelectorText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectorText : (obj : CSSPageRule) -> (v : CSSOMString) -> JSIO ()

namespace CSSPseudoElement
  
  public export
  JSType CSSPseudoElement where
    parents =  [ EventTarget , JSObject ]

    mixins =  [ Animatable ]
  
  %foreign "browser:lambda:x=>x.element"
  prim__element : AnyPtr -> PrimIO AnyPtr

  export
  element : (obj : CSSPseudoElement) -> JSIO Element
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : CSSPseudoElement) -> JSIO CSSOMString

namespace CSSRule
  
  public export
  JSType CSSRule where
    parents =  [ JSObject ]

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
  
  %foreign "browser:lambda:x=>x.parentRule"
  prim__parentRule : AnyPtr -> PrimIO AnyPtr

  export
  parentRule : (obj : CSSRule) -> JSIO (Maybe CSSRule)
  
  %foreign "browser:lambda:x=>x.parentStyleSheet"
  prim__parentStyleSheet : AnyPtr -> PrimIO AnyPtr

  export
  parentStyleSheet : (obj : CSSRule) -> JSIO (Maybe CSSStyleSheet)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : CSSRule) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.cssText"
  prim__cssText : AnyPtr -> PrimIO AnyPtr

  export
  cssText : (obj : CSSRule) -> JSIO CSSOMString

  %foreign "browser:lambda:(x,v)=>{x.cssText  = v}"
  prim__setCssText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCssText : (obj : CSSRule) -> (v : CSSOMString) -> JSIO ()

namespace CSSRuleList
  
  public export
  JSType CSSRuleList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : CSSRuleList) -> JSIO UInt32

namespace CSSStyleDeclaration
  
  public export
  JSType CSSStyleDeclaration where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : CSSStyleDeclaration) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.parentRule"
  prim__parentRule : AnyPtr -> PrimIO AnyPtr

  export
  parentRule : (obj : CSSStyleDeclaration) -> JSIO (Maybe CSSRule)
  
  %foreign "browser:lambda:x=>x.cssFloat"
  prim__cssFloat : AnyPtr -> PrimIO AnyPtr

  export
  cssFloat : (obj : CSSStyleDeclaration) -> JSIO CSSOMString

  %foreign "browser:lambda:(x,v)=>{x.cssFloat  = v}"
  prim__setCssFloat : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCssFloat : (obj : CSSStyleDeclaration) -> (v : CSSOMString) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.cssText"
  prim__cssText : AnyPtr -> PrimIO AnyPtr

  export
  cssText : (obj : CSSStyleDeclaration) -> JSIO CSSOMString

  %foreign "browser:lambda:(x,v)=>{x.cssText  = v}"
  prim__setCssText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCssText : (obj : CSSStyleDeclaration) -> (v : CSSOMString) -> JSIO ()

namespace CSSStyleRule
  
  public export
  JSType CSSStyleRule where
    parents =  [ CSSRule , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr

  export
  style : (obj : CSSStyleRule) -> JSIO CSSStyleDeclaration
  
  %foreign "browser:lambda:x=>x.selectorText"
  prim__selectorText : AnyPtr -> PrimIO AnyPtr

  export
  selectorText : (obj : CSSStyleRule) -> JSIO CSSOMString

  %foreign "browser:lambda:(x,v)=>{x.selectorText  = v}"
  prim__setSelectorText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSelectorText : (obj : CSSStyleRule) -> (v : CSSOMString) -> JSIO ()

namespace CSSStyleSheet
  
  public export
  JSType CSSStyleSheet where
    parents =  [ StyleSheet , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.cssRules"
  prim__cssRules : AnyPtr -> PrimIO AnyPtr

  export
  cssRules : (obj : CSSStyleSheet) -> JSIO CSSRuleList
  
  %foreign "browser:lambda:x=>x.ownerRule"
  prim__ownerRule : AnyPtr -> PrimIO AnyPtr

  export
  ownerRule : (obj : CSSStyleSheet) -> JSIO (Maybe CSSRule)
  
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : AnyPtr -> PrimIO AnyPtr

  export
  rules : (obj : CSSStyleSheet) -> JSIO CSSRuleList

namespace MediaList
  
  public export
  JSType MediaList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : MediaList) -> JSIO UInt32

namespace StyleSheet
  
  public export
  JSType StyleSheet where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  export
  href : (obj : StyleSheet) -> JSIO (Maybe String)
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  export
  media : (obj : StyleSheet) -> JSIO MediaList
  
  %foreign "browser:lambda:x=>x.ownerNode"
  prim__ownerNode : AnyPtr -> PrimIO AnyPtr

  export
  ownerNode :  (obj : StyleSheet)
            -> JSIO (Maybe (NS I [ Element , ProcessingInstruction ]))
  
  %foreign "browser:lambda:x=>x.parentStyleSheet"
  prim__parentStyleSheet : AnyPtr -> PrimIO AnyPtr

  export
  parentStyleSheet : (obj : StyleSheet) -> JSIO (Maybe CSSStyleSheet)
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  export
  title : (obj : StyleSheet) -> JSIO (Maybe String)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : StyleSheet) -> JSIO CSSOMString
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  export
  disabled : (obj : StyleSheet) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.disabled  = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDisabled : (obj : StyleSheet) -> (v : Bool) -> JSIO ()

namespace StyleSheetList
  
  public export
  JSType StyleSheetList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : StyleSheetList) -> JSIO UInt32

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ElementCSSInlineStyle
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr

  export
  style : (obj : ElementCSSInlineStyle) -> JSIO CSSStyleDeclaration

namespace LinkStyle
  
  %foreign "browser:lambda:x=>x.sheet"
  prim__sheet : AnyPtr -> PrimIO AnyPtr

  export
  sheet : (obj : LinkStyle) -> JSIO (Maybe CSSStyleSheet)



--------------------------------------------------------------------------------
--          Namespaces
--------------------------------------------------------------------------------
