module Web.Types.HTMLDataElement

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

export data HTMLDataElement : Type where [external]

export
ToFFI HTMLDataElement HTMLDataElement where toFFI = id

export
FromFFI HTMLDataElement HTMLDataElement where fromFFI = Just

export
SafeCast HTMLDataElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDataElement"


export %inline
Cast HTMLDataElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDataElement Element where cast = believe_me


export %inline
Cast HTMLDataElement Node where cast = believe_me


export %inline
Cast HTMLDataElement EventTarget where cast = believe_me


export %inline
Cast HTMLDataElement Object where cast = believe_me


export %inline
Cast HTMLDataElement Animatable where cast = believe_me


export %inline
Cast HTMLDataElement ChildNode where cast = believe_me


export %inline
Cast HTMLDataElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDataElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDataElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDataElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDataElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDataElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDataElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDataElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDataElement ParentNode where cast = believe_me


export %inline
Cast HTMLDataElement Slottable where cast = believe_me

