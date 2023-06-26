module Web.Types.SVGElement

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
import Web.Types.SVGElementInstance
import Web.Types.Slottable


%default total

export data SVGElement : Type where [external]

export
ToFFI SVGElement SVGElement where toFFI = id

export
FromFFI SVGElement SVGElement where fromFFI = Just

export
SafeCast SVGElement where
  safeCast = unsafeCastOnPrototypeName "SVGElement"


export %inline
Cast SVGElement Element where cast = believe_me


export %inline
Cast SVGElement Node where cast = believe_me


export %inline
Cast SVGElement EventTarget where cast = believe_me


export %inline
Cast SVGElement Object where cast = believe_me


export %inline
Cast SVGElement Animatable where cast = believe_me


export %inline
Cast SVGElement ChildNode where cast = believe_me


export %inline
Cast SVGElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGElement GeometryUtils where cast = believe_me


export %inline
Cast SVGElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGElement InnerHTML where cast = believe_me


export %inline
Cast SVGElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGElement ParentNode where cast = believe_me


export %inline
Cast SVGElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGElement Slottable where cast = believe_me

