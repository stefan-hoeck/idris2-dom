module Web.Raw.AbstractRange

import JS
import Web.Types.AbstractRange
import Web.Types.Node


%default total


export
%foreign "browser:lambda:x=>x.collapsed"
prim__collapsed : AbstractRange -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.endContainer"
prim__endContainer : AbstractRange -> PrimIO Node


export
%foreign "browser:lambda:x=>x.endOffset"
prim__endOffset : AbstractRange -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.startContainer"
prim__startContainer : AbstractRange -> PrimIO Node


export
%foreign "browser:lambda:x=>x.startOffset"
prim__startOffset : AbstractRange -> PrimIO Bits32


export
collapsed : {auto _ : Cast t1 AbstractRange} -> (obj : t1) -> JSIO Bool
collapsed a = tryJS "AbstractRange.collapsed" $
  AbstractRange.prim__collapsed (cast a)


export
endContainer : {auto _ : Cast t1 AbstractRange} -> (obj : t1) -> JSIO Node
endContainer a = primJS $ AbstractRange.prim__endContainer (cast a)


export
endOffset : {auto _ : Cast t1 AbstractRange} -> (obj : t1) -> JSIO Bits32
endOffset a = primJS $ AbstractRange.prim__endOffset (cast a)


export
startContainer : {auto _ : Cast t1 AbstractRange} -> (obj : t1) -> JSIO Node
startContainer a = primJS $ AbstractRange.prim__startContainer (cast a)


export
startOffset : {auto _ : Cast t1 AbstractRange} -> (obj : t1) -> JSIO Bits32
startOffset a = primJS $ AbstractRange.prim__startOffset (cast a)

