module Web.Types.SVGUseElement

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
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total

export data SVGUseElement : Type where [external]

export
ToFFI SVGUseElement SVGUseElement where toFFI = id

export
FromFFI SVGUseElement SVGUseElement where fromFFI = Just

export
SafeCast SVGUseElement where
  safeCast = unsafeCastOnPrototypeName "SVGUseElement"


export %inline
Cast SVGUseElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGUseElement SVGElement where cast = believe_me


export %inline
Cast SVGUseElement Element where cast = believe_me


export %inline
Cast SVGUseElement Node where cast = believe_me


export %inline
Cast SVGUseElement EventTarget where cast = believe_me


export %inline
Cast SVGUseElement Object where cast = believe_me


export %inline
Cast SVGUseElement Animatable where cast = believe_me


export %inline
Cast SVGUseElement ChildNode where cast = believe_me


export %inline
Cast SVGUseElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGUseElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGUseElement GeometryUtils where cast = believe_me


export %inline
Cast SVGUseElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGUseElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGUseElement InnerHTML where cast = believe_me


export %inline
Cast SVGUseElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGUseElement ParentNode where cast = believe_me


export %inline
Cast SVGUseElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGUseElement SVGTests where cast = believe_me


export %inline
Cast SVGUseElement SVGURIReference where cast = believe_me


export %inline
Cast SVGUseElement Slottable where cast = believe_me
