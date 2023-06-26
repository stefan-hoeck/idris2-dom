module Web.Types.SVGSVGElement

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
import Web.Types.SVGFitToViewBox
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable
import Web.Types.WindowEventHandlers


%default total

export data SVGSVGElement : Type where [external]

export
ToFFI SVGSVGElement SVGSVGElement where toFFI = id

export
FromFFI SVGSVGElement SVGSVGElement where fromFFI = Just

export
SafeCast SVGSVGElement where
  safeCast = unsafeCastOnPrototypeName "SVGSVGElement"


export %inline
Cast SVGSVGElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGSVGElement SVGElement where cast = believe_me


export %inline
Cast SVGSVGElement Element where cast = believe_me


export %inline
Cast SVGSVGElement Node where cast = believe_me


export %inline
Cast SVGSVGElement EventTarget where cast = believe_me


export %inline
Cast SVGSVGElement Object where cast = believe_me


export %inline
Cast SVGSVGElement Animatable where cast = believe_me


export %inline
Cast SVGSVGElement ChildNode where cast = believe_me


export %inline
Cast SVGSVGElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGSVGElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGSVGElement GeometryUtils where cast = believe_me


export %inline
Cast SVGSVGElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGSVGElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGSVGElement InnerHTML where cast = believe_me


export %inline
Cast SVGSVGElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGSVGElement ParentNode where cast = believe_me


export %inline
Cast SVGSVGElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGSVGElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGSVGElement SVGTests where cast = believe_me


export %inline
Cast SVGSVGElement Slottable where cast = believe_me


export %inline
Cast SVGSVGElement WindowEventHandlers where cast = believe_me
