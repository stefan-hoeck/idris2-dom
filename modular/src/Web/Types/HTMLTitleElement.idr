module Web.Types.HTMLTitleElement

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

export data HTMLTitleElement : Type where [external]

export
ToFFI HTMLTitleElement HTMLTitleElement where toFFI = id

export
FromFFI HTMLTitleElement HTMLTitleElement where fromFFI = Just

export
SafeCast HTMLTitleElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTitleElement"


export %inline
Cast HTMLTitleElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTitleElement Element where cast = believe_me


export %inline
Cast HTMLTitleElement Node where cast = believe_me


export %inline
Cast HTMLTitleElement EventTarget where cast = believe_me


export %inline
Cast HTMLTitleElement Object where cast = believe_me


export %inline
Cast HTMLTitleElement Animatable where cast = believe_me


export %inline
Cast HTMLTitleElement ChildNode where cast = believe_me


export %inline
Cast HTMLTitleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTitleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTitleElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTitleElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTitleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTitleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTitleElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTitleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTitleElement ParentNode where cast = believe_me


export %inline
Cast HTMLTitleElement Slottable where cast = believe_me

