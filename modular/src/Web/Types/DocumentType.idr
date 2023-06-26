module Web.Types.DocumentType

import JS
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.Node


%default total

export data DocumentType : Type where [external]

export
ToFFI DocumentType DocumentType where toFFI = id

export
FromFFI DocumentType DocumentType where fromFFI = Just

export
SafeCast DocumentType where
  safeCast = unsafeCastOnPrototypeName "DocumentType"


export %inline
Cast DocumentType Node where cast = believe_me


export %inline
Cast DocumentType EventTarget where cast = believe_me


export %inline
Cast DocumentType Object where cast = believe_me


export %inline
Cast DocumentType ChildNode where cast = believe_me
