module Web.Types.HTMLDetailsElement

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

export data HTMLDetailsElement : Type where [external]

export
ToFFI HTMLDetailsElement HTMLDetailsElement where toFFI = id

export
FromFFI HTMLDetailsElement HTMLDetailsElement where fromFFI = Just

export
SafeCast HTMLDetailsElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDetailsElement"


export %inline
Cast HTMLDetailsElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDetailsElement Element where cast = believe_me


export %inline
Cast HTMLDetailsElement Node where cast = believe_me


export %inline
Cast HTMLDetailsElement EventTarget where cast = believe_me


export %inline
Cast HTMLDetailsElement Object where cast = believe_me


export %inline
Cast HTMLDetailsElement Animatable where cast = believe_me


export %inline
Cast HTMLDetailsElement ChildNode where cast = believe_me


export %inline
Cast HTMLDetailsElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDetailsElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDetailsElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDetailsElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDetailsElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDetailsElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDetailsElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDetailsElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDetailsElement ParentNode where cast = believe_me


export %inline
Cast HTMLDetailsElement Slottable where cast = believe_me
