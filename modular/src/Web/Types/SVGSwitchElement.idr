module Web.Types.SVGSwitchElement

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

export data SVGSwitchElement : Type where [external]

export
ToFFI SVGSwitchElement SVGSwitchElement where toFFI = id

export
FromFFI SVGSwitchElement SVGSwitchElement where fromFFI = Just

export
SafeCast SVGSwitchElement where
  safeCast = unsafeCastOnPrototypeName "SVGSwitchElement"


export %inline
Cast SVGSwitchElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGSwitchElement SVGElement where cast = believe_me


export %inline
Cast SVGSwitchElement Element where cast = believe_me


export %inline
Cast SVGSwitchElement Node where cast = believe_me


export %inline
Cast SVGSwitchElement EventTarget where cast = believe_me


export %inline
Cast SVGSwitchElement Object where cast = believe_me


export %inline
Cast SVGSwitchElement Animatable where cast = believe_me


export %inline
Cast SVGSwitchElement ChildNode where cast = believe_me


export %inline
Cast SVGSwitchElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGSwitchElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGSwitchElement GeometryUtils where cast = believe_me


export %inline
Cast SVGSwitchElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGSwitchElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGSwitchElement InnerHTML where cast = believe_me


export %inline
Cast SVGSwitchElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGSwitchElement ParentNode where cast = believe_me


export %inline
Cast SVGSwitchElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGSwitchElement SVGTests where cast = believe_me


export %inline
Cast SVGSwitchElement Slottable where cast = believe_me

