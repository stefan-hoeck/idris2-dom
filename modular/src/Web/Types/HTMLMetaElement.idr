module Web.Types.HTMLMetaElement

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

export data HTMLMetaElement : Type where [external]

export
ToFFI HTMLMetaElement HTMLMetaElement where toFFI = id

export
FromFFI HTMLMetaElement HTMLMetaElement where fromFFI = Just

export
SafeCast HTMLMetaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMetaElement"


export %inline
Cast HTMLMetaElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMetaElement Element where cast = believe_me


export %inline
Cast HTMLMetaElement Node where cast = believe_me


export %inline
Cast HTMLMetaElement EventTarget where cast = believe_me


export %inline
Cast HTMLMetaElement Object where cast = believe_me


export %inline
Cast HTMLMetaElement Animatable where cast = believe_me


export %inline
Cast HTMLMetaElement ChildNode where cast = believe_me


export %inline
Cast HTMLMetaElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMetaElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMetaElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMetaElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMetaElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMetaElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMetaElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMetaElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMetaElement ParentNode where cast = believe_me


export %inline
Cast HTMLMetaElement Slottable where cast = believe_me
