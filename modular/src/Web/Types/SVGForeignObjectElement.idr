module Web.Types.SVGForeignObjectElement

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

export data SVGForeignObjectElement : Type where [external]

export
ToFFI SVGForeignObjectElement SVGForeignObjectElement where toFFI = id

export
FromFFI SVGForeignObjectElement SVGForeignObjectElement where fromFFI = Just

export
SafeCast SVGForeignObjectElement where
  safeCast = unsafeCastOnPrototypeName "SVGForeignObjectElement"


export %inline
Cast SVGForeignObjectElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGForeignObjectElement SVGElement where cast = believe_me


export %inline
Cast SVGForeignObjectElement Element where cast = believe_me


export %inline
Cast SVGForeignObjectElement Node where cast = believe_me


export %inline
Cast SVGForeignObjectElement EventTarget where cast = believe_me


export %inline
Cast SVGForeignObjectElement Object where cast = believe_me


export %inline
Cast SVGForeignObjectElement Animatable where cast = believe_me


export %inline
Cast SVGForeignObjectElement ChildNode where cast = believe_me


export %inline
Cast SVGForeignObjectElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGForeignObjectElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGForeignObjectElement GeometryUtils where cast = believe_me


export %inline
Cast SVGForeignObjectElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGForeignObjectElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGForeignObjectElement InnerHTML where cast = believe_me


export %inline
Cast SVGForeignObjectElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGForeignObjectElement ParentNode where cast = believe_me


export %inline
Cast SVGForeignObjectElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGForeignObjectElement SVGTests where cast = believe_me


export %inline
Cast SVGForeignObjectElement Slottable where cast = believe_me

