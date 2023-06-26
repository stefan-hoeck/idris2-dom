module Web.Types.HTMLBRElement

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

export data HTMLBRElement : Type where [external]

export
ToFFI HTMLBRElement HTMLBRElement where toFFI = id

export
FromFFI HTMLBRElement HTMLBRElement where fromFFI = Just

export
SafeCast HTMLBRElement where
  safeCast = unsafeCastOnPrototypeName "HTMLBRElement"


export %inline
Cast HTMLBRElement HTMLElement where cast = believe_me


export %inline
Cast HTMLBRElement Element where cast = believe_me


export %inline
Cast HTMLBRElement Node where cast = believe_me


export %inline
Cast HTMLBRElement EventTarget where cast = believe_me


export %inline
Cast HTMLBRElement Object where cast = believe_me


export %inline
Cast HTMLBRElement Animatable where cast = believe_me


export %inline
Cast HTMLBRElement ChildNode where cast = believe_me


export %inline
Cast HTMLBRElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLBRElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLBRElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLBRElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLBRElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLBRElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLBRElement InnerHTML where cast = believe_me


export %inline
Cast HTMLBRElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLBRElement ParentNode where cast = believe_me


export %inline
Cast HTMLBRElement Slottable where cast = believe_me

