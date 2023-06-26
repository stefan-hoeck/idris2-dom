module Web.Types.HTMLModElement

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

export data HTMLModElement : Type where [external]

export
ToFFI HTMLModElement HTMLModElement where toFFI = id

export
FromFFI HTMLModElement HTMLModElement where fromFFI = Just

export
SafeCast HTMLModElement where
  safeCast = unsafeCastOnPrototypeName "HTMLModElement"


export %inline
Cast HTMLModElement HTMLElement where cast = believe_me


export %inline
Cast HTMLModElement Element where cast = believe_me


export %inline
Cast HTMLModElement Node where cast = believe_me


export %inline
Cast HTMLModElement EventTarget where cast = believe_me


export %inline
Cast HTMLModElement Object where cast = believe_me


export %inline
Cast HTMLModElement Animatable where cast = believe_me


export %inline
Cast HTMLModElement ChildNode where cast = believe_me


export %inline
Cast HTMLModElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLModElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLModElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLModElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLModElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLModElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLModElement InnerHTML where cast = believe_me


export %inline
Cast HTMLModElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLModElement ParentNode where cast = believe_me


export %inline
Cast HTMLModElement Slottable where cast = believe_me

