module Web.Types.SVGGeometryElement

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
import Web.Types.Slottable


%default total

export data SVGGeometryElement : Type where [external]

export
ToFFI SVGGeometryElement SVGGeometryElement where toFFI = id

export
FromFFI SVGGeometryElement SVGGeometryElement where fromFFI = Just

export
SafeCast SVGGeometryElement where
  safeCast = unsafeCastOnPrototypeName "SVGGeometryElement"


export %inline
Cast SVGGeometryElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGGeometryElement SVGElement where cast = believe_me


export %inline
Cast SVGGeometryElement Element where cast = believe_me


export %inline
Cast SVGGeometryElement Node where cast = believe_me


export %inline
Cast SVGGeometryElement EventTarget where cast = believe_me


export %inline
Cast SVGGeometryElement Object where cast = believe_me


export %inline
Cast SVGGeometryElement Animatable where cast = believe_me


export %inline
Cast SVGGeometryElement ChildNode where cast = believe_me


export %inline
Cast SVGGeometryElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGGeometryElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGGeometryElement GeometryUtils where cast = believe_me


export %inline
Cast SVGGeometryElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGGeometryElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGGeometryElement InnerHTML where cast = believe_me


export %inline
Cast SVGGeometryElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGGeometryElement ParentNode where cast = believe_me


export %inline
Cast SVGGeometryElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGGeometryElement SVGTests where cast = believe_me


export %inline
Cast SVGGeometryElement Slottable where cast = believe_me
