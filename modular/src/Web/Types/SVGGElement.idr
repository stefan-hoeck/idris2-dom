module Web.Types.SVGGElement

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

export data SVGGElement : Type where [external]

export
ToFFI SVGGElement SVGGElement where toFFI = id

export
FromFFI SVGGElement SVGGElement where fromFFI = Just

export
SafeCast SVGGElement where
  safeCast = unsafeCastOnPrototypeName "SVGGElement"


export %inline
Cast SVGGElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGGElement SVGElement where cast = believe_me


export %inline
Cast SVGGElement Element where cast = believe_me


export %inline
Cast SVGGElement Node where cast = believe_me


export %inline
Cast SVGGElement EventTarget where cast = believe_me


export %inline
Cast SVGGElement Object where cast = believe_me


export %inline
Cast SVGGElement Animatable where cast = believe_me


export %inline
Cast SVGGElement ChildNode where cast = believe_me


export %inline
Cast SVGGElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGGElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGGElement GeometryUtils where cast = believe_me


export %inline
Cast SVGGElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGGElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGGElement InnerHTML where cast = believe_me


export %inline
Cast SVGGElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGGElement ParentNode where cast = believe_me


export %inline
Cast SVGGElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGGElement SVGTests where cast = believe_me


export %inline
Cast SVGGElement Slottable where cast = believe_me
