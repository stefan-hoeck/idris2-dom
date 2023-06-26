module Web.Raw.CaretPosition

import JS
import Web.Types.CaretPosition
import Web.Types.DOMRect
import Web.Types.Node


%default total


export
%foreign "browser:lambda:x=>x.offset"
prim__offset : CaretPosition -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.offsetNode"
prim__offsetNode : CaretPosition -> PrimIO Node


export
%foreign "browser:lambda:x=>x.getClientRect()"
prim__getClientRect : CaretPosition -> PrimIO (Nullable DOMRect)


export
offset : (obj : CaretPosition) -> JSIO Bits32
offset a = primJS $ CaretPosition.prim__offset a


export
offsetNode : (obj : CaretPosition) -> JSIO Node
offsetNode a = primJS $ CaretPosition.prim__offsetNode a


export
getClientRect : (obj : CaretPosition) -> JSIO (Maybe DOMRect)
getClientRect a = tryJS "CaretPosition.getClientRect" $
  CaretPosition.prim__getClientRect a
