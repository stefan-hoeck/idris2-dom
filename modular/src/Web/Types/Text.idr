module Web.Types.Text

import JS
import Web.Types.CharacterData
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.Slottable


%default total

export data Text : Type where [external]

export
ToFFI Text Text where toFFI = id

export
FromFFI Text Text where fromFFI = Just

export
SafeCast Text where
  safeCast = unsafeCastOnPrototypeName "Text"


export %inline
Cast Text CharacterData where cast = believe_me


export %inline
Cast Text Node where cast = believe_me


export %inline
Cast Text EventTarget where cast = believe_me


export %inline
Cast Text Object where cast = believe_me


export %inline
Cast Text ChildNode where cast = believe_me


export %inline
Cast Text GeometryUtils where cast = believe_me


export %inline
Cast Text NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast Text Slottable where cast = believe_me

