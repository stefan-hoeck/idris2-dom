module Web.Types.SVGViewElement

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
import Web.Types.Slottable


%default total

export data SVGViewElement : Type where [external]

export
ToFFI SVGViewElement SVGViewElement where toFFI = id

export
FromFFI SVGViewElement SVGViewElement where fromFFI = Just

export
SafeCast SVGViewElement where
  safeCast = unsafeCastOnPrototypeName "SVGViewElement"


export %inline
Cast SVGViewElement SVGElement where cast = believe_me


export %inline
Cast SVGViewElement Element where cast = believe_me


export %inline
Cast SVGViewElement Node where cast = believe_me


export %inline
Cast SVGViewElement EventTarget where cast = believe_me


export %inline
Cast SVGViewElement Object where cast = believe_me


export %inline
Cast SVGViewElement Animatable where cast = believe_me


export %inline
Cast SVGViewElement ChildNode where cast = believe_me


export %inline
Cast SVGViewElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGViewElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGViewElement GeometryUtils where cast = believe_me


export %inline
Cast SVGViewElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGViewElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGViewElement InnerHTML where cast = believe_me


export %inline
Cast SVGViewElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGViewElement ParentNode where cast = believe_me


export %inline
Cast SVGViewElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGViewElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGViewElement Slottable where cast = believe_me
