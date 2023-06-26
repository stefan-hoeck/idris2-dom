module Web.Types.SVGGraphicsElement

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
import Web.Types.SVGTests
import Web.Types.Slottable


%default total

export data SVGGraphicsElement : Type where [external]

export
ToFFI SVGGraphicsElement SVGGraphicsElement where toFFI = id

export
FromFFI SVGGraphicsElement SVGGraphicsElement where fromFFI = Just

export
SafeCast SVGGraphicsElement where
  safeCast = unsafeCastOnPrototypeName "SVGGraphicsElement"


export %inline
Cast SVGGraphicsElement SVGElement where cast = believe_me


export %inline
Cast SVGGraphicsElement Element where cast = believe_me


export %inline
Cast SVGGraphicsElement Node where cast = believe_me


export %inline
Cast SVGGraphicsElement EventTarget where cast = believe_me


export %inline
Cast SVGGraphicsElement Object where cast = believe_me


export %inline
Cast SVGGraphicsElement Animatable where cast = believe_me


export %inline
Cast SVGGraphicsElement ChildNode where cast = believe_me


export %inline
Cast SVGGraphicsElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGGraphicsElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGGraphicsElement GeometryUtils where cast = believe_me


export %inline
Cast SVGGraphicsElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGGraphicsElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGGraphicsElement InnerHTML where cast = believe_me


export %inline
Cast SVGGraphicsElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGGraphicsElement ParentNode where cast = believe_me


export %inline
Cast SVGGraphicsElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGGraphicsElement SVGTests where cast = believe_me


export %inline
Cast SVGGraphicsElement Slottable where cast = believe_me

