module Web.Types.SVGScriptElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total

export data SVGScriptElement : Type where [external]

export
ToFFI SVGScriptElement SVGScriptElement where toFFI = id

export
FromFFI SVGScriptElement SVGScriptElement where fromFFI = Just

export
SafeCast SVGScriptElement where
  safeCast = unsafeCastOnPrototypeName "SVGScriptElement"


export %inline
Cast SVGScriptElement SVGElement where cast = believe_me


export %inline
Cast SVGScriptElement Element where cast = believe_me


export %inline
Cast SVGScriptElement Node where cast = believe_me


export %inline
Cast SVGScriptElement EventTarget where cast = believe_me


export %inline
Cast SVGScriptElement Object where cast = believe_me


export %inline
Cast SVGScriptElement Animatable where cast = believe_me


export %inline
Cast SVGScriptElement ChildNode where cast = believe_me


export %inline
Cast SVGScriptElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGScriptElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGScriptElement GeometryUtils where cast = believe_me


export %inline
Cast SVGScriptElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGScriptElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGScriptElement InnerHTML where cast = believe_me


export %inline
Cast SVGScriptElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGScriptElement ParentNode where cast = believe_me


export %inline
Cast SVGScriptElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGScriptElement SVGURIReference where cast = believe_me


export %inline
Cast SVGScriptElement Slottable where cast = believe_me
