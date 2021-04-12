module Web.Internal.CssPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CSSGroupingRule
  
  export
  %foreign "browser:lambda:x=>x.cssRules"
  prim__cssRules : CSSGroupingRule -> PrimIO CSSRuleList
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteRule(a)"
  prim__deleteRule : CSSGroupingRule -> UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.insertRule(a b)"
  prim__insertRule :  CSSGroupingRule
                   -> CSSOMString
                   -> UndefOr UInt32
                   -> PrimIO UInt32

namespace CSSImportRule
  
  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : CSSImportRule -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : CSSImportRule -> PrimIO MediaList
  
  export
  %foreign "browser:lambda:x=>x.styleSheet"
  prim__styleSheet : CSSImportRule -> PrimIO CSSStyleSheet

namespace CSSMarginRule
  
  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : CSSMarginRule -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:x=>x.style"
  prim__style : CSSMarginRule -> PrimIO CSSStyleDeclaration

namespace CSSNamespaceRule
  
  export
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : CSSNamespaceRule -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix : CSSNamespaceRule -> PrimIO CSSOMString

namespace CSSPageRule
  
  export
  %foreign "browser:lambda:x=>x.selectorText"
  prim__selectorText : CSSPageRule -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,v)=>{x.selectorText = v}"
  prim__setSelectorText : CSSPageRule -> CSSOMString -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.style"
  prim__style : CSSPageRule -> PrimIO CSSStyleDeclaration

namespace CSSPseudoElement
  
  export
  %foreign "browser:lambda:x=>x.element"
  prim__element : CSSPseudoElement -> PrimIO Element
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : CSSPseudoElement -> PrimIO CSSOMString

namespace CSSRule
  
  export
  %foreign "browser:lambda:x=>x.cssText"
  prim__cssText : CSSRule -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cssText = v}"
  prim__setCssText : CSSRule -> CSSOMString -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.parentRule"
  prim__parentRule : CSSRule -> PrimIO (Nullable CSSRule)
  
  export
  %foreign "browser:lambda:x=>x.parentStyleSheet"
  prim__parentStyleSheet : CSSRule -> PrimIO (Nullable CSSStyleSheet)
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : CSSRule -> PrimIO UInt16

namespace CSSRuleList
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : CSSRuleList -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : CSSRuleList -> UInt32 -> PrimIO (Nullable CSSRule)

namespace CSSStyleDeclaration
  
  export
  %foreign "browser:lambda:x=>x.cssFloat"
  prim__cssFloat : CSSStyleDeclaration -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cssFloat = v}"
  prim__setCssFloat : CSSStyleDeclaration -> CSSOMString -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.cssText"
  prim__cssText : CSSStyleDeclaration -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cssText = v}"
  prim__setCssText : CSSStyleDeclaration -> CSSOMString -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : CSSStyleDeclaration -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:x=>x.parentRule"
  prim__parentRule : CSSStyleDeclaration -> PrimIO (Nullable CSSRule)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getPropertyPriority(a)"
  prim__getPropertyPriority :  CSSStyleDeclaration
                            -> CSSOMString
                            -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,a)=>x.getPropertyValue(a)"
  prim__getPropertyValue :  CSSStyleDeclaration
                         -> CSSOMString
                         -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : CSSStyleDeclaration -> UInt32 -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,a)=>x.removeProperty(a)"
  prim__removeProperty :  CSSStyleDeclaration
                       -> CSSOMString
                       -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setProperty(a b c)"
  prim__setProperty :  CSSStyleDeclaration
                    -> CSSOMString
                    -> CSSOMString
                    -> UndefOr CSSOMString
                    -> PrimIO ()

namespace CSSStyleRule
  
  export
  %foreign "browser:lambda:x=>x.selectorText"
  prim__selectorText : CSSStyleRule -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,v)=>{x.selectorText = v}"
  prim__setSelectorText : CSSStyleRule -> CSSOMString -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.style"
  prim__style : CSSStyleRule -> PrimIO CSSStyleDeclaration

namespace CSSStyleSheet
  
  export
  %foreign "browser:lambda:x=>x.cssRules"
  prim__cssRules : CSSStyleSheet -> PrimIO CSSRuleList
  
  export
  %foreign "browser:lambda:x=>x.ownerRule"
  prim__ownerRule : CSSStyleSheet -> PrimIO (Nullable CSSRule)
  
  export
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : CSSStyleSheet -> PrimIO CSSRuleList
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.addRule(a b c)"
  prim__addRule :  CSSStyleSheet
                -> UndefOr String
                -> UndefOr String
                -> UndefOr UInt32
                -> PrimIO Int32
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteRule(a)"
  prim__deleteRule : CSSStyleSheet -> UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.insertRule(a b)"
  prim__insertRule :  CSSStyleSheet
                   -> CSSOMString
                   -> UndefOr UInt32
                   -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a)=>x.removeRule(a)"
  prim__removeRule : CSSStyleSheet -> UndefOr UInt32 -> PrimIO ()

namespace MediaList
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : MediaList -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:x=>x.mediaText"
  prim__mediaText : MediaList -> PrimIO CSSOMString
  
  export
  %foreign "browser:lambda:(x,v)=>{x.mediaText = v}"
  prim__setMediaText : MediaList -> CSSOMString -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.appendMedium(a)"
  prim__appendMedium : MediaList -> CSSOMString -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteMedium(a)"
  prim__deleteMedium : MediaList -> CSSOMString -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : MediaList -> UInt32 -> PrimIO (Nullable CSSOMString)

namespace StyleSheet
  
  export
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : StyleSheet -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : StyleSheet -> Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : StyleSheet -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : StyleSheet -> PrimIO MediaList
  
  export
  %foreign "browser:lambda:x=>x.ownerNode"
  prim__ownerNode :  StyleSheet
                  -> PrimIO (Nullable (Union2 Element ProcessingInstruction))
  
  export
  %foreign "browser:lambda:x=>x.parentStyleSheet"
  prim__parentStyleSheet : StyleSheet -> PrimIO (Nullable CSSStyleSheet)
  
  export
  %foreign "browser:lambda:x=>x.title"
  prim__title : StyleSheet -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : StyleSheet -> PrimIO CSSOMString

namespace StyleSheetList
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : StyleSheetList -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : StyleSheetList -> UInt32 -> PrimIO (Nullable CSSStyleSheet)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ElementCSSInlineStyle
  
  export
  %foreign "browser:lambda:x=>x.style"
  prim__style : ElementCSSInlineStyle -> PrimIO CSSStyleDeclaration

namespace LinkStyle
  
  export
  %foreign "browser:lambda:x=>x.sheet"
  prim__sheet : LinkStyle -> PrimIO (Nullable CSSStyleSheet)

