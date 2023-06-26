module Web.Types.SVGTextContentElement

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

export data SVGTextContentElement : Type where [external]

export
ToFFI SVGTextContentElement SVGTextContentElement where toFFI = id

export
FromFFI SVGTextContentElement SVGTextContentElement where fromFFI = Just

export
SafeCast SVGTextContentElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextContentElement"


export %inline
Cast SVGTextContentElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTextContentElement SVGElement where cast = believe_me


export %inline
Cast SVGTextContentElement Element where cast = believe_me


export %inline
Cast SVGTextContentElement Node where cast = believe_me


export %inline
Cast SVGTextContentElement EventTarget where cast = believe_me


export %inline
Cast SVGTextContentElement Object where cast = believe_me


export %inline
Cast SVGTextContentElement Animatable where cast = believe_me


export %inline
Cast SVGTextContentElement ChildNode where cast = believe_me


export %inline
Cast SVGTextContentElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTextContentElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTextContentElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTextContentElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTextContentElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTextContentElement InnerHTML where cast = believe_me


export %inline
Cast SVGTextContentElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTextContentElement ParentNode where cast = believe_me


export %inline
Cast SVGTextContentElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTextContentElement SVGTests where cast = believe_me


export %inline
Cast SVGTextContentElement Slottable where cast = believe_me

