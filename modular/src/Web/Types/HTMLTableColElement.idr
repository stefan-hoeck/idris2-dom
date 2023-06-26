module Web.Types.HTMLTableColElement

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

export data HTMLTableColElement : Type where [external]

export
ToFFI HTMLTableColElement HTMLTableColElement where toFFI = id

export
FromFFI HTMLTableColElement HTMLTableColElement where fromFFI = Just

export
SafeCast HTMLTableColElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableColElement"


export %inline
Cast HTMLTableColElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableColElement Element where cast = believe_me


export %inline
Cast HTMLTableColElement Node where cast = believe_me


export %inline
Cast HTMLTableColElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableColElement Object where cast = believe_me


export %inline
Cast HTMLTableColElement Animatable where cast = believe_me


export %inline
Cast HTMLTableColElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableColElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableColElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableColElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableColElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableColElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableColElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableColElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableColElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableColElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableColElement Slottable where cast = believe_me

