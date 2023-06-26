module Web.Types.HTMLFormElement

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

export data HTMLFormElement : Type where [external]

export
ToFFI HTMLFormElement HTMLFormElement where toFFI = id

export
FromFFI HTMLFormElement HTMLFormElement where fromFFI = Just

export
SafeCast HTMLFormElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFormElement"


export %inline
Cast HTMLFormElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFormElement Element where cast = believe_me


export %inline
Cast HTMLFormElement Node where cast = believe_me


export %inline
Cast HTMLFormElement EventTarget where cast = believe_me


export %inline
Cast HTMLFormElement Object where cast = believe_me


export %inline
Cast HTMLFormElement Animatable where cast = believe_me


export %inline
Cast HTMLFormElement ChildNode where cast = believe_me


export %inline
Cast HTMLFormElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFormElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFormElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFormElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFormElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFormElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFormElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFormElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFormElement ParentNode where cast = believe_me


export %inline
Cast HTMLFormElement Slottable where cast = believe_me

