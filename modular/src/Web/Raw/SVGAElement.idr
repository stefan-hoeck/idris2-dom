module Web.Raw.SVGAElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DOMTokenList
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLHyperlinkElementUtils
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGAElement
import Web.Types.SVGAnimatedString
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.download"
prim__download : SVGAElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.download = v}"
prim__setDownload : SVGAElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hreflang"
prim__hreflang : SVGAElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
prim__setHreflang : SVGAElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ping"
prim__ping : SVGAElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.ping = v}"
prim__setPing : SVGAElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : SVGAElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
prim__setReferrerPolicy : SVGAElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.rel"
prim__rel : SVGAElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.rel = v}"
prim__setRel : SVGAElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.relList"
prim__relList : SVGAElement -> PrimIO DOMTokenList


export
%foreign "browser:lambda:x=>x.target"
prim__target : SVGAElement -> PrimIO SVGAnimatedString


export
%foreign "browser:lambda:x=>x.text"
prim__text : SVGAElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.text = v}"
prim__setText : SVGAElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : SVGAElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : SVGAElement -> String -> PrimIO ()



export
download : SVGAElement -> Attribute True Prelude.id String
download v = fromPrim
               "SVGAElement.getdownload"
               prim__download
               prim__setDownload
               v


export
hreflang : SVGAElement -> Attribute True Prelude.id String
hreflang v = fromPrim
               "SVGAElement.gethreflang"
               prim__hreflang
               prim__setHreflang
               v


export
ping : SVGAElement -> Attribute True Prelude.id String
ping v = fromPrim "SVGAElement.getping" prim__ping prim__setPing v


export
referrerPolicy : SVGAElement -> Attribute True Prelude.id String
referrerPolicy v = fromPrim
                     "SVGAElement.getreferrerPolicy"
                     prim__referrerPolicy
                     prim__setReferrerPolicy
                     v


export
rel : SVGAElement -> Attribute True Prelude.id String
rel v = fromPrim "SVGAElement.getrel" prim__rel prim__setRel v


export
relList : (obj : SVGAElement) -> JSIO DOMTokenList
relList a = primJS $ SVGAElement.prim__relList a


export
target : (obj : SVGAElement) -> JSIO SVGAnimatedString
target a = primJS $ SVGAElement.prim__target a


export
text : SVGAElement -> Attribute True Prelude.id String
text v = fromPrim "SVGAElement.gettext" prim__text prim__setText v


export
type : SVGAElement -> Attribute True Prelude.id String
type v = fromPrim "SVGAElement.gettype" prim__type prim__setType v
