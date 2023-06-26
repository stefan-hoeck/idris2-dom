module Web.Types.HTMLTimeElement

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

export data HTMLTimeElement : Type where [external]

export
ToFFI HTMLTimeElement HTMLTimeElement where toFFI = id

export
FromFFI HTMLTimeElement HTMLTimeElement where fromFFI = Just

export
SafeCast HTMLTimeElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTimeElement"


export %inline
Cast HTMLTimeElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTimeElement Element where cast = believe_me


export %inline
Cast HTMLTimeElement Node where cast = believe_me


export %inline
Cast HTMLTimeElement EventTarget where cast = believe_me


export %inline
Cast HTMLTimeElement Object where cast = believe_me


export %inline
Cast HTMLTimeElement Animatable where cast = believe_me


export %inline
Cast HTMLTimeElement ChildNode where cast = believe_me


export %inline
Cast HTMLTimeElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTimeElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTimeElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTimeElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTimeElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTimeElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTimeElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTimeElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTimeElement ParentNode where cast = believe_me


export %inline
Cast HTMLTimeElement Slottable where cast = believe_me
