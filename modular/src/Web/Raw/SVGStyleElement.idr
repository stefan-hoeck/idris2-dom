module Web.Raw.SVGStyleElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.LinkStyle
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGStyleElement
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.media"
prim__media : SVGStyleElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.media = v}"
prim__setMedia : SVGStyleElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.title"
prim__title : SVGStyleElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.title = v}"
prim__setTitle : SVGStyleElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : SVGStyleElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : SVGStyleElement -> String -> PrimIO ()



export
media : SVGStyleElement -> Attribute True Prelude.id String
media v = fromPrim "SVGStyleElement.getmedia" prim__media prim__setMedia v


export
title : SVGStyleElement -> Attribute True Prelude.id String
title v = fromPrim "SVGStyleElement.gettitle" prim__title prim__setTitle v


export
type : SVGStyleElement -> Attribute True Prelude.id String
type v = fromPrim "SVGStyleElement.gettype" prim__type prim__setType v

