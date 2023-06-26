module Web.Types.HTMLSourceElement

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

export data HTMLSourceElement : Type where [external]

export
ToFFI HTMLSourceElement HTMLSourceElement where toFFI = id

export
FromFFI HTMLSourceElement HTMLSourceElement where fromFFI = Just

export
SafeCast HTMLSourceElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSourceElement"


export %inline
Cast HTMLSourceElement HTMLElement where cast = believe_me


export %inline
Cast HTMLSourceElement Element where cast = believe_me


export %inline
Cast HTMLSourceElement Node where cast = believe_me


export %inline
Cast HTMLSourceElement EventTarget where cast = believe_me


export %inline
Cast HTMLSourceElement Object where cast = believe_me


export %inline
Cast HTMLSourceElement Animatable where cast = believe_me


export %inline
Cast HTMLSourceElement ChildNode where cast = believe_me


export %inline
Cast HTMLSourceElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLSourceElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLSourceElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLSourceElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLSourceElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLSourceElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLSourceElement InnerHTML where cast = believe_me


export %inline
Cast HTMLSourceElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLSourceElement ParentNode where cast = believe_me


export %inline
Cast HTMLSourceElement Slottable where cast = believe_me
