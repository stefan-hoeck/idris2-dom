module Web.Types.HTMLOutputElement

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

export data HTMLOutputElement : Type where [external]

export
ToFFI HTMLOutputElement HTMLOutputElement where toFFI = id

export
FromFFI HTMLOutputElement HTMLOutputElement where fromFFI = Just

export
SafeCast HTMLOutputElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOutputElement"


export %inline
Cast HTMLOutputElement HTMLElement where cast = believe_me


export %inline
Cast HTMLOutputElement Element where cast = believe_me


export %inline
Cast HTMLOutputElement Node where cast = believe_me


export %inline
Cast HTMLOutputElement EventTarget where cast = believe_me


export %inline
Cast HTMLOutputElement Object where cast = believe_me


export %inline
Cast HTMLOutputElement Animatable where cast = believe_me


export %inline
Cast HTMLOutputElement ChildNode where cast = believe_me


export %inline
Cast HTMLOutputElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLOutputElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLOutputElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLOutputElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLOutputElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLOutputElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLOutputElement InnerHTML where cast = believe_me


export %inline
Cast HTMLOutputElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLOutputElement ParentNode where cast = believe_me


export %inline
Cast HTMLOutputElement Slottable where cast = believe_me
