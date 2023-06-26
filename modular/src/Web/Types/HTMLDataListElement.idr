module Web.Types.HTMLDataListElement

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

export data HTMLDataListElement : Type where [external]

export
ToFFI HTMLDataListElement HTMLDataListElement where toFFI = id

export
FromFFI HTMLDataListElement HTMLDataListElement where fromFFI = Just

export
SafeCast HTMLDataListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDataListElement"


export %inline
Cast HTMLDataListElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDataListElement Element where cast = believe_me


export %inline
Cast HTMLDataListElement Node where cast = believe_me


export %inline
Cast HTMLDataListElement EventTarget where cast = believe_me


export %inline
Cast HTMLDataListElement Object where cast = believe_me


export %inline
Cast HTMLDataListElement Animatable where cast = believe_me


export %inline
Cast HTMLDataListElement ChildNode where cast = believe_me


export %inline
Cast HTMLDataListElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDataListElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDataListElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDataListElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDataListElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDataListElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDataListElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDataListElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDataListElement ParentNode where cast = believe_me


export %inline
Cast HTMLDataListElement Slottable where cast = believe_me
