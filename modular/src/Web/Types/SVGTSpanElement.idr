module Web.Types.SVGTSpanElement

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
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.SVGTextContentElement
import Web.Types.SVGTextPositioningElement
import Web.Types.Slottable


%default total

export data SVGTSpanElement : Type where [external]

export
ToFFI SVGTSpanElement SVGTSpanElement where toFFI = id

export
FromFFI SVGTSpanElement SVGTSpanElement where fromFFI = Just

export
SafeCast SVGTSpanElement where
  safeCast = unsafeCastOnPrototypeName "SVGTSpanElement"


export %inline
Cast SVGTSpanElement SVGTextPositioningElement where cast = believe_me


export %inline
Cast SVGTSpanElement SVGTextContentElement where cast = believe_me


export %inline
Cast SVGTSpanElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTSpanElement SVGElement where cast = believe_me


export %inline
Cast SVGTSpanElement Element where cast = believe_me


export %inline
Cast SVGTSpanElement Node where cast = believe_me


export %inline
Cast SVGTSpanElement EventTarget where cast = believe_me


export %inline
Cast SVGTSpanElement Object where cast = believe_me


export %inline
Cast SVGTSpanElement Animatable where cast = believe_me


export %inline
Cast SVGTSpanElement ChildNode where cast = believe_me


export %inline
Cast SVGTSpanElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTSpanElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTSpanElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTSpanElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTSpanElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTSpanElement InnerHTML where cast = believe_me


export %inline
Cast SVGTSpanElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTSpanElement ParentNode where cast = believe_me


export %inline
Cast SVGTSpanElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTSpanElement SVGTests where cast = believe_me


export %inline
Cast SVGTSpanElement Slottable where cast = believe_me

