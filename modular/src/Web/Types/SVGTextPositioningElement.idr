module Web.Types.SVGTextPositioningElement

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
import Web.Types.Slottable


%default total

export data SVGTextPositioningElement : Type where [external]

export
ToFFI SVGTextPositioningElement SVGTextPositioningElement where toFFI = id

export
FromFFI SVGTextPositioningElement SVGTextPositioningElement where fromFFI = Just

export
SafeCast SVGTextPositioningElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextPositioningElement"


export %inline
Cast SVGTextPositioningElement SVGTextContentElement where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGElement where cast = believe_me


export %inline
Cast SVGTextPositioningElement Element where cast = believe_me


export %inline
Cast SVGTextPositioningElement Node where cast = believe_me


export %inline
Cast SVGTextPositioningElement EventTarget where cast = believe_me


export %inline
Cast SVGTextPositioningElement Object where cast = believe_me


export %inline
Cast SVGTextPositioningElement Animatable where cast = believe_me


export %inline
Cast SVGTextPositioningElement ChildNode where cast = believe_me


export %inline
Cast SVGTextPositioningElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTextPositioningElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTextPositioningElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTextPositioningElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTextPositioningElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTextPositioningElement InnerHTML where cast = believe_me


export %inline
Cast SVGTextPositioningElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTextPositioningElement ParentNode where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTextPositioningElement SVGTests where cast = believe_me


export %inline
Cast SVGTextPositioningElement Slottable where cast = believe_me

