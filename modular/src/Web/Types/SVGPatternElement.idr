module Web.Types.SVGPatternElement

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
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total

export data SVGPatternElement : Type where [external]

export
ToFFI SVGPatternElement SVGPatternElement where toFFI = id

export
FromFFI SVGPatternElement SVGPatternElement where fromFFI = Just

export
SafeCast SVGPatternElement where
  safeCast = unsafeCastOnPrototypeName "SVGPatternElement"


export %inline
Cast SVGPatternElement SVGElement where cast = believe_me


export %inline
Cast SVGPatternElement Element where cast = believe_me


export %inline
Cast SVGPatternElement Node where cast = believe_me


export %inline
Cast SVGPatternElement EventTarget where cast = believe_me


export %inline
Cast SVGPatternElement Object where cast = believe_me


export %inline
Cast SVGPatternElement Animatable where cast = believe_me


export %inline
Cast SVGPatternElement ChildNode where cast = believe_me


export %inline
Cast SVGPatternElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGPatternElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGPatternElement GeometryUtils where cast = believe_me


export %inline
Cast SVGPatternElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGPatternElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGPatternElement InnerHTML where cast = believe_me


export %inline
Cast SVGPatternElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGPatternElement ParentNode where cast = believe_me


export %inline
Cast SVGPatternElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGPatternElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGPatternElement SVGURIReference where cast = believe_me


export %inline
Cast SVGPatternElement Slottable where cast = believe_me
