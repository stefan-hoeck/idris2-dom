module Web.Types.SVGTitleElement

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
import Web.Types.Slottable


%default total

export data SVGTitleElement : Type where [external]

export
ToFFI SVGTitleElement SVGTitleElement where toFFI = id

export
FromFFI SVGTitleElement SVGTitleElement where fromFFI = Just

export
SafeCast SVGTitleElement where
  safeCast = unsafeCastOnPrototypeName "SVGTitleElement"


export %inline
Cast SVGTitleElement SVGElement where cast = believe_me


export %inline
Cast SVGTitleElement Element where cast = believe_me


export %inline
Cast SVGTitleElement Node where cast = believe_me


export %inline
Cast SVGTitleElement EventTarget where cast = believe_me


export %inline
Cast SVGTitleElement Object where cast = believe_me


export %inline
Cast SVGTitleElement Animatable where cast = believe_me


export %inline
Cast SVGTitleElement ChildNode where cast = believe_me


export %inline
Cast SVGTitleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGTitleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGTitleElement GeometryUtils where cast = believe_me


export %inline
Cast SVGTitleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGTitleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGTitleElement InnerHTML where cast = believe_me


export %inline
Cast SVGTitleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGTitleElement ParentNode where cast = believe_me


export %inline
Cast SVGTitleElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGTitleElement Slottable where cast = believe_me
