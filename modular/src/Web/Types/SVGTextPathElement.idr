module Web.Types.SVGTextPathElement

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
import Web.Types.SVGTextContentElement
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total

export data SVGTextPathElement : Type where [external]

export
ToFFI SVGTextPathElement SVGTextPathElement where toFFI = id

export
FromFFI SVGTextPathElement SVGTextPathElement where fromFFI = Just

export
SafeCast SVGTextPathElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextPathElement"


export %inline
Cast SVGTextPathElement SVGTextContentElement where cast = believe_me


export %inline
Cast SVGTextPathElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTextPathElement SVGElement where cast = believe_me


export %inline
Cast SVGTextPathElement Element where cast = believe_me


export %inline
Cast SVGTextPathElement Node where cast = believe_me


export %inline
Cast SVGTextPathElement EventTarget where cast = believe_me


export %inline
Cast SVGTextPathElement Object where cast = believe_me


export %inline
Cast SVGTextPathElement Animatable where cast = believe_me


export %inline
Cast SVGTextPathElement ChildNode where cast = believe_me


export %inline
Cast SVGTextPathElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTextPathElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTextPathElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTextPathElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTextPathElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTextPathElement InnerHTML where cast = believe_me


export %inline
Cast SVGTextPathElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTextPathElement ParentNode where cast = believe_me


export %inline
Cast SVGTextPathElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTextPathElement SVGTests where cast = believe_me


export %inline
Cast SVGTextPathElement SVGURIReference where cast = believe_me


export %inline
Cast SVGTextPathElement Slottable where cast = believe_me
