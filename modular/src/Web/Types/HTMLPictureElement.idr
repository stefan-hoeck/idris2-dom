module Web.Types.HTMLPictureElement

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

export data HTMLPictureElement : Type where [external]

export
ToFFI HTMLPictureElement HTMLPictureElement where toFFI = id

export
FromFFI HTMLPictureElement HTMLPictureElement where fromFFI = Just

export
SafeCast HTMLPictureElement where
  safeCast = unsafeCastOnPrototypeName "HTMLPictureElement"


export %inline
Cast HTMLPictureElement HTMLElement where cast = believe_me


export %inline
Cast HTMLPictureElement Element where cast = believe_me


export %inline
Cast HTMLPictureElement Node where cast = believe_me


export %inline
Cast HTMLPictureElement EventTarget where cast = believe_me


export %inline
Cast HTMLPictureElement Object where cast = believe_me


export %inline
Cast HTMLPictureElement Animatable where cast = believe_me


export %inline
Cast HTMLPictureElement ChildNode where cast = believe_me


export %inline
Cast HTMLPictureElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLPictureElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLPictureElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLPictureElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLPictureElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLPictureElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLPictureElement InnerHTML where cast = believe_me


export %inline
Cast HTMLPictureElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLPictureElement ParentNode where cast = believe_me


export %inline
Cast HTMLPictureElement Slottable where cast = believe_me
