module Web.Types.SVGMetadataElement

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

export data SVGMetadataElement : Type where [external]

export
ToFFI SVGMetadataElement SVGMetadataElement where toFFI = id

export
FromFFI SVGMetadataElement SVGMetadataElement where fromFFI = Just

export
SafeCast SVGMetadataElement where
  safeCast = unsafeCastOnPrototypeName "SVGMetadataElement"


export %inline
Cast SVGMetadataElement SVGElement where cast = believe_me


export %inline
Cast SVGMetadataElement Element where cast = believe_me


export %inline
Cast SVGMetadataElement Node where cast = believe_me


export %inline
Cast SVGMetadataElement EventTarget where cast = believe_me


export %inline
Cast SVGMetadataElement Object where cast = believe_me


export %inline
Cast SVGMetadataElement Animatable where cast = believe_me


export %inline
Cast SVGMetadataElement ChildNode where cast = believe_me


export %inline
Cast SVGMetadataElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGMetadataElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGMetadataElement GeometryUtils where cast = believe_me


export %inline
Cast SVGMetadataElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGMetadataElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGMetadataElement InnerHTML where cast = believe_me


export %inline
Cast SVGMetadataElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGMetadataElement ParentNode where cast = believe_me


export %inline
Cast SVGMetadataElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGMetadataElement Slottable where cast = believe_me
