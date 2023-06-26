module Web.Raw.HTMLMeterElement

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
import Web.Types.HTMLMeterElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NodeList
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLMeterElement()"
prim__new : PrimIO HTMLMeterElement


export
%foreign "browser:lambda:x=>x.high"
prim__high : HTMLMeterElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.high = v}"
prim__setHigh : HTMLMeterElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.labels"
prim__labels : HTMLMeterElement -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.low"
prim__low : HTMLMeterElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.low = v}"
prim__setLow : HTMLMeterElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.max"
prim__max : HTMLMeterElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.max = v}"
prim__setMax : HTMLMeterElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.min"
prim__min : HTMLMeterElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.min = v}"
prim__setMin : HTMLMeterElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.optimum"
prim__optimum : HTMLMeterElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.optimum = v}"
prim__setOptimum : HTMLMeterElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.value"
prim__value : HTMLMeterElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : HTMLMeterElement -> Double -> PrimIO ()



export
new : JSIO HTMLMeterElement
new = primJS $ HTMLMeterElement.prim__new


export
high : HTMLMeterElement -> Attribute True Prelude.id Double
high v = fromPrim "HTMLMeterElement.gethigh" prim__high prim__setHigh v


export
labels : (obj : HTMLMeterElement) -> JSIO NodeList
labels a = primJS $ HTMLMeterElement.prim__labels a


export
low : HTMLMeterElement -> Attribute True Prelude.id Double
low v = fromPrim "HTMLMeterElement.getlow" prim__low prim__setLow v


export
max : HTMLMeterElement -> Attribute True Prelude.id Double
max v = fromPrim "HTMLMeterElement.getmax" prim__max prim__setMax v


export
min : HTMLMeterElement -> Attribute True Prelude.id Double
min v = fromPrim "HTMLMeterElement.getmin" prim__min prim__setMin v


export
optimum : HTMLMeterElement -> Attribute True Prelude.id Double
optimum v = fromPrim
              "HTMLMeterElement.getoptimum"
              prim__optimum
              prim__setOptimum
              v


export
value : HTMLMeterElement -> Attribute True Prelude.id Double
value v = fromPrim "HTMLMeterElement.getvalue" prim__value prim__setValue v

