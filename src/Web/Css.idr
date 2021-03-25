module Web.Css

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CSSGroupingRule
  
  %foreign "browser:lambda:x=>x.cssRules"
  prim__cssRules : AnyPtr -> PrimIO AnyPtr

namespace CSSImportRule
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.styleSheet"
  prim__styleSheet : AnyPtr -> PrimIO AnyPtr

namespace CSSMarginRule
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr

namespace CSSNamespaceRule
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix : AnyPtr -> PrimIO AnyPtr

namespace CSSPageRule
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectorText"
  prim__selectorText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectorText = v}"
  prim__setSelectorText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CSSPseudoElement
  
  %foreign "browser:lambda:x=>x.element"
  prim__element : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.parentRule"
  prim__parentRule : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.parentStyleSheet"
  prim__parentStyleSheet : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cssText"
  prim__cssText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cssText = v}"
  prim__setCssText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CSSRuleList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace CSSStyleDeclaration
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.parentRule"
  prim__parentRule : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cssFloat"
  prim__cssFloat : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cssFloat = v}"
  prim__setCssFloat : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cssText"
  prim__cssText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cssText = v}"
  prim__setCssText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CSSStyleRule
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.selectorText"
  prim__selectorText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.selectorText = v}"
  prim__setSelectorText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace CSSStyleSheet
  
  %foreign "browser:lambda:x=>x.cssRules"
  prim__cssRules : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ownerRule"
  prim__ownerRule : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : AnyPtr -> PrimIO AnyPtr

namespace MediaList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace StyleSheet
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ownerNode"
  prim__ownerNode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.parentStyleSheet"
  prim__parentStyleSheet : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace StyleSheetList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ElementCSSInlineStyle
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr

namespace LinkStyle
  
  %foreign "browser:lambda:x=>x.sheet"
  prim__sheet : AnyPtr -> PrimIO AnyPtr




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