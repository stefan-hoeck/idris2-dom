module Web.Css

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CSSGroupingRule
  
  %foreign "browser:lambda:x=>x.cssRules"
  prim__cssRules : AnyPtr -> PrimIO AnyPtr
  
  export
  cssRules :  Cast cSSGroupingRule CSSGroupingRule
           => ToJS CSSGroupingRule
           => (obj : cSSGroupingRule)
           -> IO CSSRuleList

namespace CSSImportRule
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr
  
  export
  href :  Cast cSSImportRule CSSImportRule
       => ToJS CSSImportRule
       => (obj : cSSImportRule)
       -> IO String
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr
  
  export
  media :  Cast cSSImportRule CSSImportRule
        => ToJS CSSImportRule
        => (obj : cSSImportRule)
        -> IO MediaList
  
  %foreign "browser:lambda:x=>x.styleSheet"
  prim__styleSheet : AnyPtr -> PrimIO AnyPtr
  
  export
  styleSheet :  Cast cSSImportRule CSSImportRule
             => ToJS CSSImportRule
             => (obj : cSSImportRule)
             -> IO CSSStyleSheet

namespace CSSMarginRule
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast cSSMarginRule CSSMarginRule
       => ToJS CSSMarginRule
       => (obj : cSSMarginRule)
       -> IO CSSOMString
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr
  
  export
  style :  Cast cSSMarginRule CSSMarginRule
        => ToJS CSSMarginRule
        => (obj : cSSMarginRule)
        -> IO CSSStyleDeclaration

namespace CSSNamespaceRule
  
  %foreign "browser:lambda:x=>x.namespaceURI"
  prim__namespaceURI : AnyPtr -> PrimIO AnyPtr
  
  export
  namespaceURI :  Cast cSSNamespaceRule CSSNamespaceRule
               => ToJS CSSNamespaceRule
               => (obj : cSSNamespaceRule)
               -> IO CSSOMString
  
  %foreign "browser:lambda:x=>x.prefix"
  prim__prefix_ : AnyPtr -> PrimIO AnyPtr
  
  export
  prefix_ :  Cast cSSNamespaceRule CSSNamespaceRule
          => ToJS CSSNamespaceRule
          => (obj : cSSNamespaceRule)
          -> IO CSSOMString

namespace CSSPageRule
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr
  
  export
  style :  Cast cSSPageRule CSSPageRule
        => ToJS CSSPageRule
        => (obj : cSSPageRule)
        -> IO CSSStyleDeclaration
  
  %foreign "browser:lambda:x=>x.selectorText"
  prim__selectorText : AnyPtr -> PrimIO AnyPtr
  
  export
  selectorText :  Cast cSSPageRule CSSPageRule
               => ToJS CSSPageRule
               => (obj : cSSPageRule)
               -> IO CSSOMString
  
  %foreign "browser:lambda:(x,v)=>{x.selectorText = v}"
  prim__setSelectorText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectorText :  Cast cSSOMString CSSOMString
                  => ToJS CSSOMString
                  => Cast cSSPageRule CSSPageRule
                  => ToJS CSSPageRule
                  => (obj : cSSPageRule)
                  -> (v : cSSOMString)
                  -> IO ()

namespace CSSPseudoElement
  
  %foreign "browser:lambda:x=>x.element"
  prim__element : AnyPtr -> PrimIO AnyPtr
  
  export
  element :  Cast cSSPseudoElement CSSPseudoElement
          => ToJS CSSPseudoElement
          => (obj : cSSPseudoElement)
          -> IO Element
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast cSSPseudoElement CSSPseudoElement
       => ToJS CSSPseudoElement
       => (obj : cSSPseudoElement)
       -> IO CSSOMString

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
  
  export
  parentRule :  Cast cSSRule CSSRule
             => ToJS CSSRule
             => (obj : cSSRule)
             -> IO (Maybe CSSRule)
  
  %foreign "browser:lambda:x=>x.parentStyleSheet"
  prim__parentStyleSheet : AnyPtr -> PrimIO AnyPtr
  
  export
  parentStyleSheet :  Cast cSSRule CSSRule
                   => ToJS CSSRule
                   => (obj : cSSRule)
                   -> IO (Maybe CSSStyleSheet)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type : Cast cSSRule CSSRule => ToJS CSSRule => (obj : cSSRule) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.cssText"
  prim__cssText : AnyPtr -> PrimIO AnyPtr
  
  export
  cssText :  Cast cSSRule CSSRule
          => ToJS CSSRule
          => (obj : cSSRule)
          -> IO CSSOMString
  
  %foreign "browser:lambda:(x,v)=>{x.cssText = v}"
  prim__setCssText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCssText :  Cast cSSOMString CSSOMString
             => ToJS CSSOMString
             => Cast cSSRule CSSRule
             => ToJS CSSRule
             => (obj : cSSRule)
             -> (v : cSSOMString)
             -> IO ()

namespace CSSRuleList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast cSSRuleList CSSRuleList
         => ToJS CSSRuleList
         => (obj : cSSRuleList)
         -> IO UInt32

namespace CSSStyleDeclaration
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast cSSStyleDeclaration CSSStyleDeclaration
         => ToJS CSSStyleDeclaration
         => (obj : cSSStyleDeclaration)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.parentRule"
  prim__parentRule : AnyPtr -> PrimIO AnyPtr
  
  export
  parentRule :  Cast cSSStyleDeclaration CSSStyleDeclaration
             => ToJS CSSStyleDeclaration
             => (obj : cSSStyleDeclaration)
             -> IO (Maybe CSSRule)
  
  %foreign "browser:lambda:x=>x.cssFloat"
  prim__cssFloat : AnyPtr -> PrimIO AnyPtr
  
  export
  cssFloat :  Cast cSSStyleDeclaration CSSStyleDeclaration
           => ToJS CSSStyleDeclaration
           => (obj : cSSStyleDeclaration)
           -> IO CSSOMString
  
  %foreign "browser:lambda:(x,v)=>{x.cssFloat = v}"
  prim__setCssFloat : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCssFloat :  Cast cSSOMString CSSOMString
              => ToJS CSSOMString
              => Cast cSSStyleDeclaration CSSStyleDeclaration
              => ToJS CSSStyleDeclaration
              => (obj : cSSStyleDeclaration)
              -> (v : cSSOMString)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.cssText"
  prim__cssText : AnyPtr -> PrimIO AnyPtr
  
  export
  cssText :  Cast cSSStyleDeclaration CSSStyleDeclaration
          => ToJS CSSStyleDeclaration
          => (obj : cSSStyleDeclaration)
          -> IO CSSOMString
  
  %foreign "browser:lambda:(x,v)=>{x.cssText = v}"
  prim__setCssText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCssText :  Cast cSSOMString CSSOMString
             => ToJS CSSOMString
             => Cast cSSStyleDeclaration CSSStyleDeclaration
             => ToJS CSSStyleDeclaration
             => (obj : cSSStyleDeclaration)
             -> (v : cSSOMString)
             -> IO ()

namespace CSSStyleRule
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr
  
  export
  style :  Cast cSSStyleRule CSSStyleRule
        => ToJS CSSStyleRule
        => (obj : cSSStyleRule)
        -> IO CSSStyleDeclaration
  
  %foreign "browser:lambda:x=>x.selectorText"
  prim__selectorText : AnyPtr -> PrimIO AnyPtr
  
  export
  selectorText :  Cast cSSStyleRule CSSStyleRule
               => ToJS CSSStyleRule
               => (obj : cSSStyleRule)
               -> IO CSSOMString
  
  %foreign "browser:lambda:(x,v)=>{x.selectorText = v}"
  prim__setSelectorText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSelectorText :  Cast cSSOMString CSSOMString
                  => ToJS CSSOMString
                  => Cast cSSStyleRule CSSStyleRule
                  => ToJS CSSStyleRule
                  => (obj : cSSStyleRule)
                  -> (v : cSSOMString)
                  -> IO ()

namespace CSSStyleSheet
  
  %foreign "browser:lambda:x=>x.cssRules"
  prim__cssRules : AnyPtr -> PrimIO AnyPtr
  
  export
  cssRules :  Cast cSSStyleSheet CSSStyleSheet
           => ToJS CSSStyleSheet
           => (obj : cSSStyleSheet)
           -> IO CSSRuleList
  
  %foreign "browser:lambda:x=>x.ownerRule"
  prim__ownerRule : AnyPtr -> PrimIO AnyPtr
  
  export
  ownerRule :  Cast cSSStyleSheet CSSStyleSheet
            => ToJS CSSStyleSheet
            => (obj : cSSStyleSheet)
            -> IO (Maybe CSSRule)
  
  %foreign "browser:lambda:x=>x.rules"
  prim__rules : AnyPtr -> PrimIO AnyPtr
  
  export
  rules :  Cast cSSStyleSheet CSSStyleSheet
        => ToJS CSSStyleSheet
        => (obj : cSSStyleSheet)
        -> IO CSSRuleList

namespace MediaList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast mediaList MediaList
         => ToJS MediaList
         => (obj : mediaList)
         -> IO UInt32

namespace StyleSheet
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr
  
  export
  href :  Cast styleSheet StyleSheet
       => ToJS StyleSheet
       => (obj : styleSheet)
       -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr
  
  export
  media :  Cast styleSheet StyleSheet
        => ToJS StyleSheet
        => (obj : styleSheet)
        -> IO MediaList
  
  %foreign "browser:lambda:x=>x.ownerNode"
  prim__ownerNode : AnyPtr -> PrimIO AnyPtr
  
  export
  ownerNode :  Cast styleSheet StyleSheet
            => ToJS StyleSheet
            => (obj : styleSheet)
            -> IO (Maybe (NS I [ Element , ProcessingInstruction ]))
  
  %foreign "browser:lambda:x=>x.parentStyleSheet"
  prim__parentStyleSheet : AnyPtr -> PrimIO AnyPtr
  
  export
  parentStyleSheet :  Cast styleSheet StyleSheet
                   => ToJS StyleSheet
                   => (obj : styleSheet)
                   -> IO (Maybe CSSStyleSheet)
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr
  
  export
  title :  Cast styleSheet StyleSheet
        => ToJS StyleSheet
        => (obj : styleSheet)
        -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast styleSheet StyleSheet
       => ToJS StyleSheet
       => (obj : styleSheet)
       -> IO CSSOMString
  
  %foreign "browser:lambda:x=>x.disabled"
  prim__disabled : AnyPtr -> PrimIO AnyPtr
  
  export
  disabled :  Cast styleSheet StyleSheet
           => ToJS StyleSheet
           => (obj : styleSheet)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.disabled = v}"
  prim__setDisabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDisabled :  Cast styleSheet StyleSheet
              => ToJS StyleSheet
              => (obj : styleSheet)
              -> (v : Bool)
              -> IO ()

namespace StyleSheetList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast styleSheetList StyleSheetList
         => ToJS StyleSheetList
         => (obj : styleSheetList)
         -> IO UInt32

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace ElementCSSInlineStyle
  
  %foreign "browser:lambda:x=>x.style"
  prim__style : AnyPtr -> PrimIO AnyPtr
  
  export
  style :  Cast elementCSSInlineStyle ElementCSSInlineStyle
        => ToJS ElementCSSInlineStyle
        => (obj : elementCSSInlineStyle)
        -> IO CSSStyleDeclaration

namespace LinkStyle
  
  %foreign "browser:lambda:x=>x.sheet"
  prim__sheet : AnyPtr -> PrimIO AnyPtr
  
  export
  sheet :  Cast linkStyle LinkStyle
        => ToJS LinkStyle
        => (obj : linkStyle)
        -> IO (Maybe CSSStyleSheet)




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