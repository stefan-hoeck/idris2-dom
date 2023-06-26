module Web.Raw.CSSNamespaceRule

import JS
import Web.Types.CSSNamespaceRule
import Web.Types.CSSRule


%default total


export
%foreign "browser:lambda:x=>x.namespaceURI"
prim__namespaceURI : CSSNamespaceRule -> PrimIO String


export
%foreign "browser:lambda:x=>x.prefix"
prim__prefix : CSSNamespaceRule -> PrimIO String


export
namespaceURI : (obj : CSSNamespaceRule) -> JSIO String
namespaceURI a = primJS $ CSSNamespaceRule.prim__namespaceURI a


export
prefix_ : (obj : CSSNamespaceRule) -> JSIO String
prefix_ a = primJS $ CSSNamespaceRule.prim__prefix a

