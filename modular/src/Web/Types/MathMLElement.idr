module Web.Types.MathMLElement

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
import Web.Types.Slottable


%default total

export data MathMLElement : Type where [external]

export
ToFFI MathMLElement MathMLElement where toFFI = id

export
FromFFI MathMLElement MathMLElement where fromFFI = Just

export
SafeCast MathMLElement where
  safeCast = unsafeCastOnPrototypeName "MathMLElement"


export %inline
Cast MathMLElement Element where cast = believe_me


export %inline
Cast MathMLElement Node where cast = believe_me


export %inline
Cast MathMLElement EventTarget where cast = believe_me


export %inline
Cast MathMLElement Object where cast = believe_me


export %inline
Cast MathMLElement Animatable where cast = believe_me


export %inline
Cast MathMLElement ChildNode where cast = believe_me


export %inline
Cast MathMLElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast MathMLElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast MathMLElement GeometryUtils where cast = believe_me


export %inline
Cast MathMLElement GlobalEventHandlers where cast = believe_me


export %inline
Cast MathMLElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast MathMLElement InnerHTML where cast = believe_me


export %inline
Cast MathMLElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast MathMLElement ParentNode where cast = believe_me


export %inline
Cast MathMLElement Slottable where cast = believe_me
