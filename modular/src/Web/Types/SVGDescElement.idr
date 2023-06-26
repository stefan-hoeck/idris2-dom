module Web.Types.SVGDescElement

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
import Web.Types.Slottable


%default total

export data SVGDescElement : Type where [external]

export
ToFFI SVGDescElement SVGDescElement where toFFI = id

export
FromFFI SVGDescElement SVGDescElement where fromFFI = Just

export
SafeCast SVGDescElement where
  safeCast = unsafeCastOnPrototypeName "SVGDescElement"


export %inline
Cast SVGDescElement SVGElement where cast = believe_me


export %inline
Cast SVGDescElement Element where cast = believe_me


export %inline
Cast SVGDescElement Node where cast = believe_me


export %inline
Cast SVGDescElement EventTarget where cast = believe_me


export %inline
Cast SVGDescElement Object where cast = believe_me


export %inline
Cast SVGDescElement Animatable where cast = believe_me


export %inline
Cast SVGDescElement ChildNode where cast = believe_me


export %inline
Cast SVGDescElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGDescElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGDescElement GeometryUtils where cast = believe_me


export %inline
Cast SVGDescElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGDescElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGDescElement InnerHTML where cast = believe_me


export %inline
Cast SVGDescElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGDescElement ParentNode where cast = believe_me


export %inline
Cast SVGDescElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGDescElement Slottable where cast = believe_me

