module Web.Types.SVGCircleElement

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
import Web.Types.SVGGeometryElement
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total

export data SVGCircleElement : Type where [external]

export
ToFFI SVGCircleElement SVGCircleElement where toFFI = id

export
FromFFI SVGCircleElement SVGCircleElement where fromFFI = Just

export
SafeCast SVGCircleElement where
  safeCast = unsafeCastOnPrototypeName "SVGCircleElement"


export %inline
Cast SVGCircleElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGCircleElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGCircleElement SVGElement where cast = believe_me


export %inline
Cast SVGCircleElement Element where cast = believe_me


export %inline
Cast SVGCircleElement Node where cast = believe_me


export %inline
Cast SVGCircleElement EventTarget where cast = believe_me


export %inline
Cast SVGCircleElement Object where cast = believe_me


export %inline
Cast SVGCircleElement Animatable where cast = believe_me


export %inline
Cast SVGCircleElement ChildNode where cast = believe_me


export %inline
Cast SVGCircleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGCircleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGCircleElement GeometryUtils where cast = believe_me


export %inline
Cast SVGCircleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGCircleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGCircleElement InnerHTML where cast = believe_me


export %inline
Cast SVGCircleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGCircleElement ParentNode where cast = believe_me


export %inline
Cast SVGCircleElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGCircleElement SVGTests where cast = believe_me


export %inline
Cast SVGCircleElement Slottable where cast = believe_me
