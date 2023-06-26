module Web.Types.Comment

import JS
import Web.Types.CharacterData
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode


%default total

export data Comment : Type where [external]

export
ToFFI Comment Comment where toFFI = id

export
FromFFI Comment Comment where fromFFI = Just

export
SafeCast Comment where
  safeCast = unsafeCastOnPrototypeName "Comment"


export %inline
Cast Comment CharacterData where cast = believe_me


export %inline
Cast Comment Node where cast = believe_me


export %inline
Cast Comment EventTarget where cast = believe_me


export %inline
Cast Comment Object where cast = believe_me


export %inline
Cast Comment ChildNode where cast = believe_me


export %inline
Cast Comment NonDocumentTypeChildNode where cast = believe_me
