module Web.Types.HTMLParamElement

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

export data HTMLParamElement : Type where [external]

export
ToFFI HTMLParamElement HTMLParamElement where toFFI = id

export
FromFFI HTMLParamElement HTMLParamElement where fromFFI = Just

export
SafeCast HTMLParamElement where
  safeCast = unsafeCastOnPrototypeName "HTMLParamElement"


export %inline
Cast HTMLParamElement HTMLElement where cast = believe_me


export %inline
Cast HTMLParamElement Element where cast = believe_me


export %inline
Cast HTMLParamElement Node where cast = believe_me


export %inline
Cast HTMLParamElement EventTarget where cast = believe_me


export %inline
Cast HTMLParamElement Object where cast = believe_me


export %inline
Cast HTMLParamElement Animatable where cast = believe_me


export %inline
Cast HTMLParamElement ChildNode where cast = believe_me


export %inline
Cast HTMLParamElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLParamElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLParamElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLParamElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLParamElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLParamElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLParamElement InnerHTML where cast = believe_me


export %inline
Cast HTMLParamElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLParamElement ParentNode where cast = believe_me


export %inline
Cast HTMLParamElement Slottable where cast = believe_me
