module Web.Types.SVGStopElement

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
import Web.Types.Slottable


%default total

export data SVGStopElement : Type where [external]

export
ToFFI SVGStopElement SVGStopElement where toFFI = id

export
FromFFI SVGStopElement SVGStopElement where fromFFI = Just

export
SafeCast SVGStopElement where
  safeCast = unsafeCastOnPrototypeName "SVGStopElement"


export %inline
Cast SVGStopElement SVGElement where cast = believe_me


export %inline
Cast SVGStopElement Element where cast = believe_me


export %inline
Cast SVGStopElement Node where cast = believe_me


export %inline
Cast SVGStopElement EventTarget where cast = believe_me


export %inline
Cast SVGStopElement Object where cast = believe_me


export %inline
Cast SVGStopElement Animatable where cast = believe_me


export %inline
Cast SVGStopElement ChildNode where cast = believe_me


export %inline
Cast SVGStopElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGStopElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGStopElement GeometryUtils where cast = believe_me


export %inline
Cast SVGStopElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGStopElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGStopElement InnerHTML where cast = believe_me


export %inline
Cast SVGStopElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGStopElement ParentNode where cast = believe_me


export %inline
Cast SVGStopElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGStopElement Slottable where cast = believe_me

