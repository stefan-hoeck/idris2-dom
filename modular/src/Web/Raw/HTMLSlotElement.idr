module Web.Raw.HTMLSlotElement

import JS
import Web.Types.Animatable
import Web.Types.AssignedNodesOptions
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
import Web.Types.HTMLSlotElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLSlotElement()"
prim__new : PrimIO HTMLSlotElement


export
%foreign "browser:lambda:x=>x.name"
prim__name : HTMLSlotElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : HTMLSlotElement -> String -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.assignedElements(a)"
prim__assignedElements :
     HTMLSlotElement
  -> UndefOr AssignedNodesOptions
  -> PrimIO (Array Element)


export
%foreign "browser:lambda:(x,a)=>x.assignedNodes(a)"
prim__assignedNodes :
     HTMLSlotElement
  -> UndefOr AssignedNodesOptions
  -> PrimIO (Array Node)


export
new : JSIO HTMLSlotElement
new = primJS $ HTMLSlotElement.prim__new


export
name : HTMLSlotElement -> Attribute True Prelude.id String
name v = fromPrim "HTMLSlotElement.getname" prim__name prim__setName v


export
assignedElements' :
     {auto _ : Cast t2 AssignedNodesOptions}
  -> (obj : HTMLSlotElement)
  -> (options : Optional t2)
  -> JSIO (Array Element)
assignedElements' a b = primJS $
  HTMLSlotElement.prim__assignedElements a (optUp b)

export
assignedElements : (obj : HTMLSlotElement) -> JSIO (Array Element)
assignedElements a = primJS $ HTMLSlotElement.prim__assignedElements a undef


export
assignedNodes' :
     {auto _ : Cast t2 AssignedNodesOptions}
  -> (obj : HTMLSlotElement)
  -> (options : Optional t2)
  -> JSIO (Array Node)
assignedNodes' a b = primJS $ HTMLSlotElement.prim__assignedNodes a (optUp b)

export
assignedNodes : (obj : HTMLSlotElement) -> JSIO (Array Node)
assignedNodes a = primJS $ HTMLSlotElement.prim__assignedNodes a undef
