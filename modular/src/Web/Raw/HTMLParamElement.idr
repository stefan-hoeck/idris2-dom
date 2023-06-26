module Web.Raw.HTMLParamElement

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
import Web.Types.HTMLOrSVGElement
import Web.Types.HTMLParamElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLParamElement()"
prim__new : PrimIO HTMLParamElement


export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLParamElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLParamElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : HTMLParamElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : HTMLParamElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLParamElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLParamElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.valueType"
prim__valueType : HTMLParamElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.valueType = v}"
prim__setValueType : HTMLParamElement -> String -> PrimIO ()



export
new : JSIO HTMLParamElement
new = primJS $ HTMLParamElement.prim__new


export
name : HTMLParamElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLParamElement.getname" prim__name prim__setName v


export
type : HTMLParamElement -> Attribute True Prelude.id String
type v = fromPrim "HTMLParamElement.gettype" prim__type prim__setType v


export
value : HTMLParamElement -> Attribute True Prelude.id String
value v = fromPrim "HTMLParamElement.getvalue" prim__value prim__setValue v


export
valueType : HTMLParamElement -> Attribute True Prelude.id String
valueType v = fromPrim
                "HTMLParamElement.getvalueType"
                prim__valueType
                prim__setValueType
                v
