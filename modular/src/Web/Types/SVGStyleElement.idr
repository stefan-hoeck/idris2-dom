module Web.Types.SVGStyleElement

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
import Web.Types.LinkStyle
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.Slottable


%default total

export data SVGStyleElement : Type where [external]

export
ToFFI SVGStyleElement SVGStyleElement where toFFI = id

export
FromFFI SVGStyleElement SVGStyleElement where fromFFI = Just

export
SafeCast SVGStyleElement where
  safeCast = unsafeCastOnPrototypeName "SVGStyleElement"


export %inline
Cast SVGStyleElement SVGElement where cast = believe_me


export %inline
Cast SVGStyleElement Element where cast = believe_me


export %inline
Cast SVGStyleElement Node where cast = believe_me


export %inline
Cast SVGStyleElement EventTarget where cast = believe_me


export %inline
Cast SVGStyleElement Object where cast = believe_me


export %inline
Cast SVGStyleElement Animatable where cast = believe_me


export %inline
Cast SVGStyleElement ChildNode where cast = believe_me


export %inline
Cast SVGStyleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGStyleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGStyleElement GeometryUtils where cast = believe_me


export %inline
Cast SVGStyleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGStyleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGStyleElement InnerHTML where cast = believe_me


export %inline
Cast SVGStyleElement LinkStyle where cast = believe_me


export %inline
Cast SVGStyleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGStyleElement ParentNode where cast = believe_me


export %inline
Cast SVGStyleElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGStyleElement Slottable where cast = believe_me

