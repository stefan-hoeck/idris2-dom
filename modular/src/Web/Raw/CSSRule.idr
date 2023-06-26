module Web.Raw.CSSRule

import JS
import Web.Types.CSSRule
import Web.Types.CSSStyleSheet


%default total


export
CHARSET_RULE : Bits16
CHARSET_RULE = 2


export
FONT_FACE_RULE : Bits16
FONT_FACE_RULE = 5


export
IMPORT_RULE : Bits16
IMPORT_RULE = 3


export
MARGIN_RULE : Bits16
MARGIN_RULE = 9


export
MEDIA_RULE : Bits16
MEDIA_RULE = 4


export
NAMESPACE_RULE : Bits16
NAMESPACE_RULE = 10


export
PAGE_RULE : Bits16
PAGE_RULE = 6


export
STYLE_RULE : Bits16
STYLE_RULE = 1


export
%foreign "browser:lambda:x=>x.cssText"
prim__cssText : CSSRule -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cssText = v}"
prim__setCssText : CSSRule -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.parentRule"
prim__parentRule : CSSRule -> PrimIO (Nullable CSSRule)


export
%foreign "browser:lambda:x=>x.parentStyleSheet"
prim__parentStyleSheet : CSSRule -> PrimIO (Nullable CSSStyleSheet)


export
%foreign "browser:lambda:x=>x.type"
prim__type : CSSRule -> PrimIO Bits16


export
cssText : {auto _ : Cast t CSSRule} -> t -> Attribute True Prelude.id String
cssText v = fromPrim
              "CSSRule.getcssText"
              prim__cssText
              prim__setCssText
              (cast {to = CSSRule} v)


export
parentRule : {auto _ : Cast t1 CSSRule} -> (obj : t1) -> JSIO (Maybe CSSRule)
parentRule a = tryJS "CSSRule.parentRule" $ CSSRule.prim__parentRule (cast a)


export
parentStyleSheet :
     {auto _ : Cast t1 CSSRule}
  -> (obj : t1)
  -> JSIO (Maybe CSSStyleSheet)
parentStyleSheet a = tryJS "CSSRule.parentStyleSheet" $
  CSSRule.prim__parentStyleSheet (cast a)


export
type : {auto _ : Cast t1 CSSRule} -> (obj : t1) -> JSIO Bits16
type a = primJS $ CSSRule.prim__type (cast a)

