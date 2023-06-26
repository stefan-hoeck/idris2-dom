module Web.Types.HTMLFontElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total

export data HTMLFontElement : Type where [external]

export
ToFFI HTMLFontElement HTMLFontElement where toFFI = id

export
FromFFI HTMLFontElement HTMLFontElement where fromFFI = Just

export
SafeCast HTMLFontElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFontElement"


export %inline
Cast HTMLFontElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFontElement Element where cast = believe_me


export %inline
Cast HTMLFontElement Node where cast = believe_me


export %inline
Cast HTMLFontElement EventTarget where cast = believe_me


export %inline
Cast HTMLFontElement Object where cast = believe_me


export %inline
Cast HTMLFontElement Animatable where cast = believe_me


export %inline
Cast HTMLFontElement ChildNode where cast = believe_me


export %inline
Cast HTMLFontElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFontElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFontElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFontElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFontElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFontElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFontElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFontElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFontElement ParentNode where cast = believe_me


export %inline
Cast HTMLFontElement Slottable where cast = believe_me
