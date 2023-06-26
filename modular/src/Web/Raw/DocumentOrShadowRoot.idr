module Web.Raw.DocumentOrShadowRoot

import JS
import Web.Types.DocumentOrShadowRoot
import Web.Types.StyleSheetList


%default total


export
%foreign "browser:lambda:x=>x.styleSheets"
prim__styleSheets : DocumentOrShadowRoot -> PrimIO StyleSheetList


export
styleSheets :
     {auto _ : Cast t1 DocumentOrShadowRoot}
  -> (obj : t1)
  -> JSIO StyleSheetList
styleSheets a = primJS $ DocumentOrShadowRoot.prim__styleSheets (cast a)
