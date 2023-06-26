module Web.Types.SVGGradientElement

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
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total

export data SVGGradientElement : Type where [external]

export
ToFFI SVGGradientElement SVGGradientElement where toFFI = id

export
FromFFI SVGGradientElement SVGGradientElement where fromFFI = Just

export
SafeCast SVGGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGGradientElement"


export %inline
Cast SVGGradientElement SVGElement where cast = believe_me


export %inline
Cast SVGGradientElement Element where cast = believe_me


export %inline
Cast SVGGradientElement Node where cast = believe_me


export %inline
Cast SVGGradientElement EventTarget where cast = believe_me


export %inline
Cast SVGGradientElement Object where cast = believe_me


export %inline
Cast SVGGradientElement Animatable where cast = believe_me


export %inline
Cast SVGGradientElement ChildNode where cast = believe_me


export %inline
Cast SVGGradientElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGGradientElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGGradientElement GeometryUtils where cast = believe_me


export %inline
Cast SVGGradientElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGGradientElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGGradientElement InnerHTML where cast = believe_me


export %inline
Cast SVGGradientElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGGradientElement ParentNode where cast = believe_me


export %inline
Cast SVGGradientElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGGradientElement SVGURIReference where cast = believe_me


export %inline
Cast SVGGradientElement Slottable where cast = believe_me

