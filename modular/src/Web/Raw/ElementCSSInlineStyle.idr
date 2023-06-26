module Web.Raw.ElementCSSInlineStyle

import JS
import Web.Types.CSSStyleDeclaration
import Web.Types.ElementCSSInlineStyle


%default total


export
%foreign "browser:lambda:x=>x.style"
prim__style : ElementCSSInlineStyle -> PrimIO CSSStyleDeclaration


export
style :
     {auto _ : Cast t1 ElementCSSInlineStyle}
  -> (obj : t1)
  -> JSIO CSSStyleDeclaration
style a = primJS $ ElementCSSInlineStyle.prim__style (cast a)
