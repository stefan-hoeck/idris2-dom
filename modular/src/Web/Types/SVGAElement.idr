module Web.Types.SVGAElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLHyperlinkElementUtils
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

export data SVGAElement : Type where [external]

export
ToFFI SVGAElement SVGAElement where toFFI = id

export
FromFFI SVGAElement SVGAElement where fromFFI = Just

export
SafeCast SVGAElement where
  safeCast = unsafeCastOnPrototypeName "SVGAElement"


export %inline
Cast SVGAElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGAElement SVGElement where cast = believe_me


export %inline
Cast SVGAElement Element where cast = believe_me


export %inline
Cast SVGAElement Node where cast = believe_me


export %inline
Cast SVGAElement EventTarget where cast = believe_me


export %inline
Cast SVGAElement Object where cast = believe_me


export %inline
Cast SVGAElement Animatable where cast = believe_me


export %inline
Cast SVGAElement ChildNode where cast = believe_me


export %inline
Cast SVGAElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGAElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGAElement GeometryUtils where cast = believe_me


export %inline
Cast SVGAElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGAElement HTMLHyperlinkElementUtils where cast = believe_me


export %inline
Cast SVGAElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGAElement InnerHTML where cast = believe_me


export %inline
Cast SVGAElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGAElement ParentNode where cast = believe_me


export %inline
Cast SVGAElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGAElement SVGTests where cast = believe_me


export %inline
Cast SVGAElement SVGURIReference where cast = believe_me


export %inline
Cast SVGAElement Slottable where cast = believe_me
