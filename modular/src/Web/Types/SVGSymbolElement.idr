module Web.Types.SVGSymbolElement

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
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total

export data SVGSymbolElement : Type where [external]

export
ToFFI SVGSymbolElement SVGSymbolElement where toFFI = id

export
FromFFI SVGSymbolElement SVGSymbolElement where fromFFI = Just

export
SafeCast SVGSymbolElement where
  safeCast = unsafeCastOnPrototypeName "SVGSymbolElement"


export %inline
Cast SVGSymbolElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGSymbolElement SVGElement where cast = believe_me


export %inline
Cast SVGSymbolElement Element where cast = believe_me


export %inline
Cast SVGSymbolElement Node where cast = believe_me


export %inline
Cast SVGSymbolElement EventTarget where cast = believe_me


export %inline
Cast SVGSymbolElement Object where cast = believe_me


export %inline
Cast SVGSymbolElement Animatable where cast = believe_me


export %inline
Cast SVGSymbolElement ChildNode where cast = believe_me


export %inline
Cast SVGSymbolElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGSymbolElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGSymbolElement GeometryUtils where cast = believe_me


export %inline
Cast SVGSymbolElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGSymbolElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGSymbolElement InnerHTML where cast = believe_me


export %inline
Cast SVGSymbolElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGSymbolElement ParentNode where cast = believe_me


export %inline
Cast SVGSymbolElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGSymbolElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGSymbolElement SVGTests where cast = believe_me


export %inline
Cast SVGSymbolElement Slottable where cast = believe_me

