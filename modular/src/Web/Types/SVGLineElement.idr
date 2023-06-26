module Web.Types.SVGLineElement

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

export data SVGLineElement : Type where [external]

export
ToFFI SVGLineElement SVGLineElement where toFFI = id

export
FromFFI SVGLineElement SVGLineElement where fromFFI = Just

export
SafeCast SVGLineElement where
  safeCast = unsafeCastOnPrototypeName "SVGLineElement"


export %inline
Cast SVGLineElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGLineElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGLineElement SVGElement where cast = believe_me


export %inline
Cast SVGLineElement Element where cast = believe_me


export %inline
Cast SVGLineElement Node where cast = believe_me


export %inline
Cast SVGLineElement EventTarget where cast = believe_me


export %inline
Cast SVGLineElement Object where cast = believe_me


export %inline
Cast SVGLineElement Animatable where cast = believe_me


export %inline
Cast SVGLineElement ChildNode where cast = believe_me


export %inline
Cast SVGLineElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGLineElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGLineElement GeometryUtils where cast = believe_me


export %inline
Cast SVGLineElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGLineElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGLineElement InnerHTML where cast = believe_me


export %inline
Cast SVGLineElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGLineElement ParentNode where cast = believe_me


export %inline
Cast SVGLineElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGLineElement SVGTests where cast = believe_me


export %inline
Cast SVGLineElement Slottable where cast = believe_me

