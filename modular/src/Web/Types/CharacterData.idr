module Web.Types.CharacterData

import JS
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode


%default total

export data CharacterData : Type where [external]

export
ToFFI CharacterData CharacterData where toFFI = id

export
FromFFI CharacterData CharacterData where fromFFI = Just

export
SafeCast CharacterData where
  safeCast = unsafeCastOnPrototypeName "CharacterData"


export %inline
Cast CharacterData Node where cast = believe_me


export %inline
Cast CharacterData EventTarget where cast = believe_me


export %inline
Cast CharacterData Object where cast = believe_me


export %inline
Cast CharacterData ChildNode where cast = believe_me


export %inline
Cast CharacterData NonDocumentTypeChildNode where cast = believe_me

