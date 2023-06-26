module Web.Types.SVGEllipseElement

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

export data SVGEllipseElement : Type where [external]

export
ToFFI SVGEllipseElement SVGEllipseElement where toFFI = id

export
FromFFI SVGEllipseElement SVGEllipseElement where fromFFI = Just

export
SafeCast SVGEllipseElement where
  safeCast = unsafeCastOnPrototypeName "SVGEllipseElement"


export %inline
Cast SVGEllipseElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGEllipseElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGEllipseElement SVGElement where cast = believe_me


export %inline
Cast SVGEllipseElement Element where cast = believe_me


export %inline
Cast SVGEllipseElement Node where cast = believe_me


export %inline
Cast SVGEllipseElement EventTarget where cast = believe_me


export %inline
Cast SVGEllipseElement Object where cast = believe_me


export %inline
Cast SVGEllipseElement Animatable where cast = believe_me


export %inline
Cast SVGEllipseElement ChildNode where cast = believe_me


export %inline
Cast SVGEllipseElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGEllipseElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGEllipseElement GeometryUtils where cast = believe_me


export %inline
Cast SVGEllipseElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGEllipseElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGEllipseElement InnerHTML where cast = believe_me


export %inline
Cast SVGEllipseElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGEllipseElement ParentNode where cast = believe_me


export %inline
Cast SVGEllipseElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGEllipseElement SVGTests where cast = believe_me


export %inline
Cast SVGEllipseElement Slottable where cast = believe_me
