module Web.Types.SVGRectElement

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

export data SVGRectElement : Type where [external]

export
ToFFI SVGRectElement SVGRectElement where toFFI = id

export
FromFFI SVGRectElement SVGRectElement where fromFFI = Just

export
SafeCast SVGRectElement where
  safeCast = unsafeCastOnPrototypeName "SVGRectElement"


export %inline
Cast SVGRectElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGRectElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGRectElement SVGElement where cast = believe_me


export %inline
Cast SVGRectElement Element where cast = believe_me


export %inline
Cast SVGRectElement Node where cast = believe_me


export %inline
Cast SVGRectElement EventTarget where cast = believe_me


export %inline
Cast SVGRectElement Object where cast = believe_me


export %inline
Cast SVGRectElement Animatable where cast = believe_me


export %inline
Cast SVGRectElement ChildNode where cast = believe_me


export %inline
Cast SVGRectElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGRectElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGRectElement GeometryUtils where cast = believe_me


export %inline
Cast SVGRectElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGRectElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGRectElement InnerHTML where cast = believe_me


export %inline
Cast SVGRectElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGRectElement ParentNode where cast = believe_me


export %inline
Cast SVGRectElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGRectElement SVGTests where cast = believe_me


export %inline
Cast SVGRectElement Slottable where cast = believe_me

