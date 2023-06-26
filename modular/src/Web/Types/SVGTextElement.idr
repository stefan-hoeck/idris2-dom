module Web.Types.SVGTextElement

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
import Web.Types.SVGTextPositioningElement
import Web.Types.Slottable


%default total

export data SVGTextElement : Type where [external]

export
ToFFI SVGTextElement SVGTextElement where toFFI = id

export
FromFFI SVGTextElement SVGTextElement where fromFFI = Just

export
SafeCast SVGTextElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextElement"


export %inline
Cast SVGTextElement SVGTextPositioningElement where cast = believe_me


export %inline
Cast SVGTextElement SVGTextContentElement where cast = believe_me


export %inline
Cast SVGTextElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGTextElement SVGElement where cast = believe_me


export %inline
Cast SVGTextElement Element where cast = believe_me


export %inline
Cast SVGTextElement Node where cast = believe_me


export %inline
Cast SVGTextElement EventTarget where cast = believe_me


export %inline
Cast SVGTextElement Object where cast = believe_me


export %inline
Cast SVGTextElement Animatable where cast = believe_me


export %inline
Cast SVGTextElement ChildNode where cast = believe_me


export %inline
Cast SVGTextElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTextElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTextElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTextElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTextElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTextElement InnerHTML where cast = believe_me


export %inline
Cast SVGTextElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTextElement ParentNode where cast = believe_me


export %inline
Cast SVGTextElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTextElement SVGTests where cast = believe_me


export %inline
Cast SVGTextElement Slottable where cast = believe_me
