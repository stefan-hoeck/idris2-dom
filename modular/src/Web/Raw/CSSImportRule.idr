module Web.Raw.CSSImportRule

import JS
import Web.Types.CSSImportRule
import Web.Types.CSSRule
import Web.Types.CSSStyleSheet
import Web.Types.MediaList


%default total


export
%foreign "browser:lambda:x=>x.href"
prim__href : CSSImportRule -> PrimIO String


export
%foreign "browser:lambda:x=>x.media"
prim__media : CSSImportRule -> PrimIO MediaList


export
%foreign "browser:lambda:x=>x.styleSheet"
prim__styleSheet : CSSImportRule -> PrimIO CSSStyleSheet


export
href : (obj : CSSImportRule) -> JSIO String
href a = primJS $ CSSImportRule.prim__href a


export
media : (obj : CSSImportRule) -> JSIO MediaList
media a = primJS $ CSSImportRule.prim__media a


export
styleSheet : (obj : CSSImportRule) -> JSIO CSSStyleSheet
styleSheet a = primJS $ CSSImportRule.prim__styleSheet a
