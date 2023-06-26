module Web.Types.CDATASection

import JS
import Web.Types.CharacterData
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.Slottable
import Web.Types.Text


%default total

export data CDATASection : Type where [external]

export
ToFFI CDATASection CDATASection where toFFI = id

export
FromFFI CDATASection CDATASection where fromFFI = Just

export
SafeCast CDATASection where
  safeCast = unsafeCastOnPrototypeName "CDATASection"


export %inline
Cast CDATASection Text where cast = believe_me


export %inline
Cast CDATASection CharacterData where cast = believe_me


export %inline
Cast CDATASection Node where cast = believe_me


export %inline
Cast CDATASection EventTarget where cast = believe_me


export %inline
Cast CDATASection Object where cast = believe_me


export %inline
Cast CDATASection ChildNode where cast = believe_me


export %inline
Cast CDATASection GeometryUtils where cast = believe_me


export %inline
Cast CDATASection NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast CDATASection Slottable where cast = believe_me

