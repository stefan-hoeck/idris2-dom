module Web.Types.HTMLBodyElement

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
import Web.Types.WindowEventHandlers


%default total

export data HTMLBodyElement : Type where [external]

export
ToFFI HTMLBodyElement HTMLBodyElement where toFFI = id

export
FromFFI HTMLBodyElement HTMLBodyElement where fromFFI = Just

export
SafeCast HTMLBodyElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBodyElement"


export %inline
Cast HTMLBodyElement HTMLElement where cast = believe_me


export %inline
Cast HTMLBodyElement Element where cast = believe_me


export %inline
Cast HTMLBodyElement Node where cast = believe_me


export %inline
Cast HTMLBodyElement EventTarget where cast = believe_me


export %inline
Cast HTMLBodyElement Object where cast = believe_me


export %inline
Cast HTMLBodyElement Animatable where cast = believe_me


export %inline
Cast HTMLBodyElement ChildNode where cast = believe_me


export %inline
Cast HTMLBodyElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLBodyElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLBodyElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLBodyElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLBodyElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLBodyElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLBodyElement InnerHTML where cast = believe_me


export %inline
Cast HTMLBodyElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLBodyElement ParentNode where cast = believe_me


export %inline
Cast HTMLBodyElement Slottable where cast = believe_me


export %inline
Cast HTMLBodyElement WindowEventHandlers where cast = believe_me

