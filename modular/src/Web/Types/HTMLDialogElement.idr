module Web.Types.HTMLDialogElement

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

export data HTMLDialogElement : Type where [external]

export
ToFFI HTMLDialogElement HTMLDialogElement where toFFI = id

export
FromFFI HTMLDialogElement HTMLDialogElement where fromFFI = Just

export
SafeCast HTMLDialogElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDialogElement"


export %inline
Cast HTMLDialogElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDialogElement Element where cast = believe_me


export %inline
Cast HTMLDialogElement Node where cast = believe_me


export %inline
Cast HTMLDialogElement EventTarget where cast = believe_me


export %inline
Cast HTMLDialogElement Object where cast = believe_me


export %inline
Cast HTMLDialogElement Animatable where cast = believe_me


export %inline
Cast HTMLDialogElement ChildNode where cast = believe_me


export %inline
Cast HTMLDialogElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDialogElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDialogElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDialogElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDialogElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDialogElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDialogElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDialogElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDialogElement ParentNode where cast = believe_me


export %inline
Cast HTMLDialogElement Slottable where cast = believe_me

