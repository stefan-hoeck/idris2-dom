module Web.Types.SVGPathElement

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

export data SVGPathElement : Type where [external]

export
ToFFI SVGPathElement SVGPathElement where toFFI = id

export
FromFFI SVGPathElement SVGPathElement where fromFFI = Just

export
SafeCast SVGPathElement where
  safeCast = unsafeCastOnPrototypeName "SVGPathElement"


export %inline
Cast SVGPathElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGPathElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGPathElement SVGElement where cast = believe_me


export %inline
Cast SVGPathElement Element where cast = believe_me


export %inline
Cast SVGPathElement Node where cast = believe_me


export %inline
Cast SVGPathElement EventTarget where cast = believe_me


export %inline
Cast SVGPathElement Object where cast = believe_me


export %inline
Cast SVGPathElement Animatable where cast = believe_me


export %inline
Cast SVGPathElement ChildNode where cast = believe_me


export %inline
Cast SVGPathElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGPathElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGPathElement GeometryUtils where cast = believe_me


export %inline
Cast SVGPathElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGPathElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGPathElement InnerHTML where cast = believe_me


export %inline
Cast SVGPathElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGPathElement ParentNode where cast = believe_me


export %inline
Cast SVGPathElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGPathElement SVGTests where cast = believe_me


export %inline
Cast SVGPathElement Slottable where cast = believe_me
