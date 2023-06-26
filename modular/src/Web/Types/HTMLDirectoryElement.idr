module Web.Types.HTMLDirectoryElement

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

export data HTMLDirectoryElement : Type where [external]

export
ToFFI HTMLDirectoryElement HTMLDirectoryElement where toFFI = id

export
FromFFI HTMLDirectoryElement HTMLDirectoryElement where fromFFI = Just

export
SafeCast HTMLDirectoryElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDirectoryElement"


export %inline
Cast HTMLDirectoryElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDirectoryElement Element where cast = believe_me


export %inline
Cast HTMLDirectoryElement Node where cast = believe_me


export %inline
Cast HTMLDirectoryElement EventTarget where cast = believe_me


export %inline
Cast HTMLDirectoryElement Object where cast = believe_me


export %inline
Cast HTMLDirectoryElement Animatable where cast = believe_me


export %inline
Cast HTMLDirectoryElement ChildNode where cast = believe_me


export %inline
Cast HTMLDirectoryElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDirectoryElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDirectoryElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDirectoryElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDirectoryElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDirectoryElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDirectoryElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDirectoryElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDirectoryElement ParentNode where cast = believe_me


export %inline
Cast HTMLDirectoryElement Slottable where cast = believe_me
