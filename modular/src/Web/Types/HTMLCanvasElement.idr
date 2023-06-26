module Web.Types.HTMLCanvasElement

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
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total

export data HTMLCanvasElement : Type where [external]

export
ToFFI HTMLCanvasElement HTMLCanvasElement where toFFI = id

export
FromFFI HTMLCanvasElement HTMLCanvasElement where fromFFI = Just

export
SafeCast HTMLCanvasElement where
  safeCast = unsafeCastOnPrototypeName "HTMLCanvasElement"


export %inline
Cast HTMLCanvasElement HTMLElement where cast = believe_me


export %inline
Cast HTMLCanvasElement Element where cast = believe_me


export %inline
Cast HTMLCanvasElement Node where cast = believe_me


export %inline
Cast HTMLCanvasElement EventTarget where cast = believe_me


export %inline
Cast HTMLCanvasElement Object where cast = believe_me


export %inline
Cast HTMLCanvasElement Animatable where cast = believe_me


export %inline
Cast HTMLCanvasElement ChildNode where cast = believe_me


export %inline
Cast HTMLCanvasElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLCanvasElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLCanvasElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLCanvasElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLCanvasElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLCanvasElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLCanvasElement InnerHTML where cast = believe_me


export %inline
Cast HTMLCanvasElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLCanvasElement ParentNode where cast = believe_me


export %inline
Cast HTMLCanvasElement Slottable where cast = believe_me

