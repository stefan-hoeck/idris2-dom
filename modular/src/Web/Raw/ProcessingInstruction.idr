module Web.Raw.ProcessingInstruction

import JS
import Web.Types.CharacterData
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.LinkStyle
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ProcessingInstruction


%default total


export
%foreign "browser:lambda:x=>x.target"
prim__target : ProcessingInstruction -> PrimIO String


export
target : (obj : ProcessingInstruction) -> JSIO String
target a = primJS $ ProcessingInstruction.prim__target a

