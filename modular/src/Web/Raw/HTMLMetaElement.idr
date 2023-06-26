module Web.Raw.HTMLMetaElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLMetaElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLMetaElement()"
prim__new : PrimIO HTMLMetaElement


export
%foreign "browser:lambda:x=>x.content"
prim__content : HTMLMetaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.content = v}"
prim__setContent : HTMLMetaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.httpEquiv"
prim__httpEquiv : HTMLMetaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.httpEquiv = v}"
prim__setHttpEquiv : HTMLMetaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLMetaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLMetaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scheme"
prim__scheme : HTMLMetaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.scheme = v}"
prim__setScheme : HTMLMetaElement -> String -> PrimIO ()



export
new : JSIO HTMLMetaElement
new = primJS $ HTMLMetaElement.prim__new


export
content : HTMLMetaElement -> Attribute True Prelude.id String
content v = fromPrim
              "HTMLMetaElement.getcontent"
              prim__content
              prim__setContent
              v


export
httpEquiv : HTMLMetaElement -> Attribute True Prelude.id String
httpEquiv v = fromPrim
                "HTMLMetaElement.gethttpEquiv"
                prim__httpEquiv
                prim__setHttpEquiv
                v


export
name : HTMLMetaElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLMetaElement.getname" prim__name prim__setName v


export
scheme : HTMLMetaElement -> Attribute True Prelude.id String
scheme v = fromPrim "HTMLMetaElement.getscheme" prim__scheme prim__setScheme v
