module Web.Types.SVGDefsElement

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

export data SVGDefsElement : Type where [external]

export
ToFFI SVGDefsElement SVGDefsElement where toFFI = id

export
FromFFI SVGDefsElement SVGDefsElement where fromFFI = Just

export
SafeCast SVGDefsElement where
  safeCast = unsafeCastOnPrototypeName "SVGDefsElement"


export %inline
Cast SVGDefsElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGDefsElement SVGElement where cast = believe_me


export %inline
Cast SVGDefsElement Element where cast = believe_me


export %inline
Cast SVGDefsElement Node where cast = believe_me


export %inline
Cast SVGDefsElement EventTarget where cast = believe_me


export %inline
Cast SVGDefsElement Object where cast = believe_me


export %inline
Cast SVGDefsElement Animatable where cast = believe_me


export %inline
Cast SVGDefsElement ChildNode where cast = believe_me


export %inline
Cast SVGDefsElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGDefsElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGDefsElement GeometryUtils where cast = believe_me


export %inline
Cast SVGDefsElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGDefsElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGDefsElement InnerHTML where cast = believe_me


export %inline
Cast SVGDefsElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGDefsElement ParentNode where cast = believe_me


export %inline
Cast SVGDefsElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGDefsElement SVGTests where cast = believe_me


export %inline
Cast SVGDefsElement Slottable where cast = believe_me

