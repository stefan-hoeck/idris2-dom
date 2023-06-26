module Web.Types.HTMLPreElement

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

export data HTMLPreElement : Type where [external]

export
ToFFI HTMLPreElement HTMLPreElement where toFFI = id

export
FromFFI HTMLPreElement HTMLPreElement where fromFFI = Just

export
SafeCast HTMLPreElement where
  safeCast = unsafeCastOnPrototypeName "HTMLPreElement"


export %inline
Cast HTMLPreElement HTMLElement where cast = believe_me


export %inline
Cast HTMLPreElement Element where cast = believe_me


export %inline
Cast HTMLPreElement Node where cast = believe_me


export %inline
Cast HTMLPreElement EventTarget where cast = believe_me


export %inline
Cast HTMLPreElement Object where cast = believe_me


export %inline
Cast HTMLPreElement Animatable where cast = believe_me


export %inline
Cast HTMLPreElement ChildNode where cast = believe_me


export %inline
Cast HTMLPreElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLPreElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLPreElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLPreElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLPreElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLPreElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLPreElement InnerHTML where cast = believe_me


export %inline
Cast HTMLPreElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLPreElement ParentNode where cast = believe_me


export %inline
Cast HTMLPreElement Slottable where cast = believe_me

