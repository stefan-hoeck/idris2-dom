module Web.Raw.Text

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


export
%foreign "browser:lambda:(a)=> new Text(a)"
prim__new : UndefOr String -> PrimIO Text


export
%foreign "browser:lambda:x=>x.wholeText"
prim__wholeText : Text -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.splitText(a)"
prim__splitText : Text -> Bits32 -> PrimIO Text


export
new' : (data_ : Optional String) -> JSIO Text
new' a = primJS $ Text.prim__new (toFFI a)

export
new : JSIO Text
new = primJS $ Text.prim__new undef


export
wholeText : {auto _ : Cast t1 Text} -> (obj : t1) -> JSIO String
wholeText a = primJS $ Text.prim__wholeText (cast a)


export
splitText :
     {auto _ : Cast t1 Text}
  -> (obj : t1)
  -> (offset : Bits32)
  -> JSIO Text
splitText a b = primJS $ Text.prim__splitText (cast a) b
