module Web.Types.Element

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total

export data Element : Type where [external]

export
ToFFI Element Element where toFFI = id

export
FromFFI Element Element where fromFFI = Just

export
SafeCast Element where
  safeCast = unsafeCastOnPrototypeName "Element"


export %inline
Cast Element Node where cast = believe_me


export %inline
Cast Element EventTarget where cast = believe_me


export %inline
Cast Element Object where cast = believe_me


export %inline
Cast Element Animatable where cast = believe_me


export %inline
Cast Element ChildNode where cast = believe_me


export %inline
Cast Element GeometryUtils where cast = believe_me


export %inline
Cast Element InnerHTML where cast = believe_me


export %inline
Cast Element NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast Element ParentNode where cast = believe_me


export %inline
Cast Element Slottable where cast = believe_me

