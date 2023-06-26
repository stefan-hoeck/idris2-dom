module Web.Types.HTMLLIElement

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

export data HTMLLIElement : Type where [external]

export
ToFFI HTMLLIElement HTMLLIElement where toFFI = id

export
FromFFI HTMLLIElement HTMLLIElement where fromFFI = Just

export
SafeCast HTMLLIElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLIElement"


export %inline
Cast HTMLLIElement HTMLElement where cast = believe_me


export %inline
Cast HTMLLIElement Element where cast = believe_me


export %inline
Cast HTMLLIElement Node where cast = believe_me


export %inline
Cast HTMLLIElement EventTarget where cast = believe_me


export %inline
Cast HTMLLIElement Object where cast = believe_me


export %inline
Cast HTMLLIElement Animatable where cast = believe_me


export %inline
Cast HTMLLIElement ChildNode where cast = believe_me


export %inline
Cast HTMLLIElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLLIElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLLIElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLLIElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLLIElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLLIElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLLIElement InnerHTML where cast = believe_me


export %inline
Cast HTMLLIElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLLIElement ParentNode where cast = believe_me


export %inline
Cast HTMLLIElement Slottable where cast = believe_me

