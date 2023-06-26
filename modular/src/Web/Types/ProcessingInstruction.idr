module Web.Types.ProcessingInstruction

import JS
import Web.Types.CharacterData
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.LinkStyle
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode


%default total

export data ProcessingInstruction : Type where [external]

export
ToFFI ProcessingInstruction ProcessingInstruction where toFFI = id

export
FromFFI ProcessingInstruction ProcessingInstruction where fromFFI = Just

export
SafeCast ProcessingInstruction where
  safeCast = unsafeCastOnPrototypeName "ProcessingInstruction"


export %inline
Cast ProcessingInstruction CharacterData where cast = believe_me


export %inline
Cast ProcessingInstruction Node where cast = believe_me


export %inline
Cast ProcessingInstruction EventTarget where cast = believe_me


export %inline
Cast ProcessingInstruction Object where cast = believe_me


export %inline
Cast ProcessingInstruction ChildNode where cast = believe_me


export %inline
Cast ProcessingInstruction LinkStyle where cast = believe_me


export %inline
Cast ProcessingInstruction NonDocumentTypeChildNode where cast = believe_me

