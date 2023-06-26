module Web.Types.SVGLinearGradientElement

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

export data SVGLinearGradientElement : Type where [external]

export
ToFFI SVGLinearGradientElement SVGLinearGradientElement where toFFI = id

export
FromFFI SVGLinearGradientElement SVGLinearGradientElement where fromFFI = Just

export
SafeCast SVGLinearGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGLinearGradientElement"


export %inline
Cast SVGLinearGradientElement SVGGradientElement where cast = believe_me


export %inline
Cast SVGLinearGradientElement SVGElement where cast = believe_me


export %inline
Cast SVGLinearGradientElement Element where cast = believe_me


export %inline
Cast SVGLinearGradientElement Node where cast = believe_me


export %inline
Cast SVGLinearGradientElement EventTarget where cast = believe_me


export %inline
Cast SVGLinearGradientElement Object where cast = believe_me


export %inline
Cast SVGLinearGradientElement Animatable where cast = believe_me


export %inline
Cast SVGLinearGradientElement ChildNode where cast = believe_me


export %inline
Cast SVGLinearGradientElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGLinearGradientElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGLinearGradientElement GeometryUtils where cast = believe_me


export %inline
Cast SVGLinearGradientElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGLinearGradientElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGLinearGradientElement InnerHTML where cast = believe_me


export %inline
Cast SVGLinearGradientElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGLinearGradientElement ParentNode where cast = believe_me


export %inline
Cast SVGLinearGradientElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGLinearGradientElement SVGURIReference where cast = believe_me


export %inline
Cast SVGLinearGradientElement Slottable where cast = believe_me
