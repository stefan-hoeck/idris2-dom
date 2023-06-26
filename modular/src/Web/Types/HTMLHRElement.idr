module Web.Types.HTMLHRElement

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

export data HTMLHRElement : Type where [external]

export
ToFFI HTMLHRElement HTMLHRElement where toFFI = id

export
FromFFI HTMLHRElement HTMLHRElement where fromFFI = Just

export
SafeCast HTMLHRElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHRElement"


export %inline
Cast HTMLHRElement HTMLElement where cast = believe_me


export %inline
Cast HTMLHRElement Element where cast = believe_me


export %inline
Cast HTMLHRElement Node where cast = believe_me


export %inline
Cast HTMLHRElement EventTarget where cast = believe_me


export %inline
Cast HTMLHRElement Object where cast = believe_me


export %inline
Cast HTMLHRElement Animatable where cast = believe_me


export %inline
Cast HTMLHRElement ChildNode where cast = believe_me


export %inline
Cast HTMLHRElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLHRElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLHRElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLHRElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLHRElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLHRElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLHRElement InnerHTML where cast = believe_me


export %inline
Cast HTMLHRElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLHRElement ParentNode where cast = believe_me


export %inline
Cast HTMLHRElement Slottable where cast = believe_me

