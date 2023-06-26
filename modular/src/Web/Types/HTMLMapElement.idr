module Web.Types.HTMLMapElement

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

export data HTMLMapElement : Type where [external]

export
ToFFI HTMLMapElement HTMLMapElement where toFFI = id

export
FromFFI HTMLMapElement HTMLMapElement where fromFFI = Just

export
SafeCast HTMLMapElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMapElement"


export %inline
Cast HTMLMapElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMapElement Element where cast = believe_me


export %inline
Cast HTMLMapElement Node where cast = believe_me


export %inline
Cast HTMLMapElement EventTarget where cast = believe_me


export %inline
Cast HTMLMapElement Object where cast = believe_me


export %inline
Cast HTMLMapElement Animatable where cast = believe_me


export %inline
Cast HTMLMapElement ChildNode where cast = believe_me


export %inline
Cast HTMLMapElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMapElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMapElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMapElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMapElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMapElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMapElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMapElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMapElement ParentNode where cast = believe_me


export %inline
Cast HTMLMapElement Slottable where cast = believe_me

