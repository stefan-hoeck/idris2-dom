module Web.Types.HTMLBaseElement

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

export data HTMLBaseElement : Type where [external]

export
ToFFI HTMLBaseElement HTMLBaseElement where toFFI = id

export
FromFFI HTMLBaseElement HTMLBaseElement where fromFFI = Just

export
SafeCast HTMLBaseElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBaseElement"


export %inline
Cast HTMLBaseElement HTMLElement where cast = believe_me


export %inline
Cast HTMLBaseElement Element where cast = believe_me


export %inline
Cast HTMLBaseElement Node where cast = believe_me


export %inline
Cast HTMLBaseElement EventTarget where cast = believe_me


export %inline
Cast HTMLBaseElement Object where cast = believe_me


export %inline
Cast HTMLBaseElement Animatable where cast = believe_me


export %inline
Cast HTMLBaseElement ChildNode where cast = believe_me


export %inline
Cast HTMLBaseElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLBaseElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLBaseElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLBaseElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLBaseElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLBaseElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLBaseElement InnerHTML where cast = believe_me


export %inline
Cast HTMLBaseElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLBaseElement ParentNode where cast = believe_me


export %inline
Cast HTMLBaseElement Slottable where cast = believe_me

