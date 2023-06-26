module Web.Raw.Attr

import JS
import Web.Types.Attr
import Web.Types.Element
import Web.Types.EventTarget
import Web.Types.Node


%default total


export
%foreign "browser:lambda:x=>x.localName"
prim__localName : Attr -> PrimIO String


export
%foreign "browser:lambda:x=>x.name"
prim__name : Attr -> PrimIO String


export
%foreign "browser:lambda:x=>x.namespaceURI"
prim__namespaceURI : Attr -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.ownerElement"
prim__ownerElement : Attr -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:x=>x.prefix"
prim__prefix : Attr -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.specified"
prim__specified : Attr -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.value"
prim__value : Attr -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : Attr -> String -> PrimIO ()



export
localName : (obj : Attr) -> JSIO String
localName a = primJS $ Attr.prim__localName a


export
name : (obj : Attr) -> JSIO String
name a = primJS $ Attr.prim__name a


export
namespaceURI : (obj : Attr) -> JSIO (Maybe String)
namespaceURI a = tryJS "Attr.namespaceURI" $ Attr.prim__namespaceURI a


export
ownerElement : (obj : Attr) -> JSIO (Maybe Element)
ownerElement a = tryJS "Attr.ownerElement" $ Attr.prim__ownerElement a


export
prefix_ : (obj : Attr) -> JSIO (Maybe String)
prefix_ a = tryJS "Attr.prefix_" $ Attr.prim__prefix a


export
specified : (obj : Attr) -> JSIO Bool
specified a = tryJS "Attr.specified" $ Attr.prim__specified a


export
value : Attr -> Attribute True Prelude.id String
value v = fromPrim "Attr.getvalue" prim__value prim__setValue v

