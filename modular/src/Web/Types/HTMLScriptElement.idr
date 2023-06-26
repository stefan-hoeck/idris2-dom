module Web.Types.HTMLScriptElement

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

export data HTMLScriptElement : Type where [external]

export
ToFFI HTMLScriptElement HTMLScriptElement where toFFI = id

export
FromFFI HTMLScriptElement HTMLScriptElement where fromFFI = Just

export
SafeCast HTMLScriptElement where
  safeCast = unsafeCastOnPrototypeName "HTMLScriptElement"


export %inline
Cast HTMLScriptElement HTMLElement where cast = believe_me


export %inline
Cast HTMLScriptElement Element where cast = believe_me


export %inline
Cast HTMLScriptElement Node where cast = believe_me


export %inline
Cast HTMLScriptElement EventTarget where cast = believe_me


export %inline
Cast HTMLScriptElement Object where cast = believe_me


export %inline
Cast HTMLScriptElement Animatable where cast = believe_me


export %inline
Cast HTMLScriptElement ChildNode where cast = believe_me


export %inline
Cast HTMLScriptElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLScriptElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLScriptElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLScriptElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLScriptElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLScriptElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLScriptElement InnerHTML where cast = believe_me


export %inline
Cast HTMLScriptElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLScriptElement ParentNode where cast = believe_me


export %inline
Cast HTMLScriptElement Slottable where cast = believe_me

