module Web.Types.HTMLImageElement

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

export data HTMLImageElement : Type where [external]

export
ToFFI HTMLImageElement HTMLImageElement where toFFI = id

export
FromFFI HTMLImageElement HTMLImageElement where fromFFI = Just

export
SafeCast HTMLImageElement where
  safeCast = unsafeCastOnPrototypeName "HTMLImageElement"


export %inline
Cast HTMLImageElement HTMLElement where cast = believe_me


export %inline
Cast HTMLImageElement Element where cast = believe_me


export %inline
Cast HTMLImageElement Node where cast = believe_me


export %inline
Cast HTMLImageElement EventTarget where cast = believe_me


export %inline
Cast HTMLImageElement Object where cast = believe_me


export %inline
Cast HTMLImageElement Animatable where cast = believe_me


export %inline
Cast HTMLImageElement ChildNode where cast = believe_me


export %inline
Cast HTMLImageElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLImageElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLImageElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLImageElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLImageElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLImageElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLImageElement InnerHTML where cast = believe_me


export %inline
Cast HTMLImageElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLImageElement ParentNode where cast = believe_me


export %inline
Cast HTMLImageElement Slottable where cast = believe_me

