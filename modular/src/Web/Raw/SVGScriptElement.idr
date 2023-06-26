module Web.Raw.SVGScriptElement

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
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGScriptElement
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.crossOrigin"
prim__crossOrigin : SVGScriptElement -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
prim__setCrossOrigin : SVGScriptElement -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : SVGScriptElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : SVGScriptElement -> String -> PrimIO ()



export
crossOrigin : SVGScriptElement -> Attribute False Maybe String
crossOrigin v = fromNullablePrim
                  "SVGScriptElement.getcrossOrigin"
                  prim__crossOrigin
                  prim__setCrossOrigin
                  v


export
type : SVGScriptElement -> Attribute True Prelude.id String
type v = fromPrim "SVGScriptElement.gettype" prim__type prim__setType v

