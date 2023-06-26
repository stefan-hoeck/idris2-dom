module Web.Types.SVGImageElement

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

export data SVGImageElement : Type where [external]

export
ToFFI SVGImageElement SVGImageElement where toFFI = id

export
FromFFI SVGImageElement SVGImageElement where fromFFI = Just

export
SafeCast SVGImageElement where
  safeCast = unsafeCastOnPrototypeName "SVGImageElement"


export %inline
Cast SVGImageElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGImageElement SVGElement where cast = believe_me


export %inline
Cast SVGImageElement Element where cast = believe_me


export %inline
Cast SVGImageElement Node where cast = believe_me


export %inline
Cast SVGImageElement EventTarget where cast = believe_me


export %inline
Cast SVGImageElement Object where cast = believe_me


export %inline
Cast SVGImageElement Animatable where cast = believe_me


export %inline
Cast SVGImageElement ChildNode where cast = believe_me


export %inline
Cast SVGImageElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGImageElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGImageElement GeometryUtils where cast = believe_me


export %inline
Cast SVGImageElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGImageElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGImageElement InnerHTML where cast = believe_me


export %inline
Cast SVGImageElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGImageElement ParentNode where cast = believe_me


export %inline
Cast SVGImageElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGImageElement SVGTests where cast = believe_me


export %inline
Cast SVGImageElement SVGURIReference where cast = believe_me


export %inline
Cast SVGImageElement Slottable where cast = believe_me

