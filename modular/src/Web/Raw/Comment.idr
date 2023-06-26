module Web.Raw.Comment

import JS
import Web.Types.CharacterData
import Web.Types.ChildNode
import Web.Types.Comment
import Web.Types.EventTarget
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode


%default total


export
%foreign "browser:lambda:(a)=> new Comment(a)"
prim__new : UndefOr String -> PrimIO Comment


export
new' : (data_ : Optional String) -> JSIO Comment
new' a = primJS $ Comment.prim__new (toFFI a)

export
new : JSIO Comment
new = primJS $ Comment.prim__new undef
