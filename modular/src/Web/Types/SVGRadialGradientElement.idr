module Web.Types.SVGRadialGradientElement

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
import Web.Types.SVGGradientElement
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total

export data SVGRadialGradientElement : Type where [external]

export
ToFFI SVGRadialGradientElement SVGRadialGradientElement where toFFI = id

export
FromFFI SVGRadialGradientElement SVGRadialGradientElement where fromFFI = Just

export
SafeCast SVGRadialGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGRadialGradientElement"


export %inline
Cast SVGRadialGradientElement SVGGradientElement where cast = believe_me


export %inline
Cast SVGRadialGradientElement SVGElement where cast = believe_me


export %inline
Cast SVGRadialGradientElement Element where cast = believe_me


export %inline
Cast SVGRadialGradientElement Node where cast = believe_me


export %inline
Cast SVGRadialGradientElement EventTarget where cast = believe_me


export %inline
Cast SVGRadialGradientElement Object where cast = believe_me


export %inline
Cast SVGRadialGradientElement Animatable where cast = believe_me


export %inline
Cast SVGRadialGradientElement ChildNode where cast = believe_me


export %inline
Cast SVGRadialGradientElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGRadialGradientElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGRadialGradientElement GeometryUtils where cast = believe_me


export %inline
Cast SVGRadialGradientElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGRadialGradientElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGRadialGradientElement InnerHTML where cast = believe_me


export %inline
Cast SVGRadialGradientElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGRadialGradientElement ParentNode where cast = believe_me


export %inline
Cast SVGRadialGradientElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGRadialGradientElement SVGURIReference where cast = believe_me


export %inline
Cast SVGRadialGradientElement Slottable where cast = believe_me

