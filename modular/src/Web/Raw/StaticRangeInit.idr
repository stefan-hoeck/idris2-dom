module Web.Raw.StaticRangeInit

import JS
import Web.Types.Node
import Web.Types.StaticRangeInit


%default total


export
%foreign "browser:lambda:(a,b,c,d)=> ({startContainer: a,startOffset: b,endContainer: c,endOffset: d})"
prim__new : Node -> Bits32 -> Node -> Bits32 -> PrimIO StaticRangeInit


export
%foreign "browser:lambda:x=>x.endContainer"
prim__endContainer : StaticRangeInit -> PrimIO Node



export
%foreign "browser:lambda:(x,v)=>{x.endContainer = v}"
prim__setEndContainer : StaticRangeInit -> Node -> PrimIO ()



export
%foreign "browser:lambda:x=>x.endOffset"
prim__endOffset : StaticRangeInit -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.endOffset = v}"
prim__setEndOffset : StaticRangeInit -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.startContainer"
prim__startContainer : StaticRangeInit -> PrimIO Node



export
%foreign "browser:lambda:(x,v)=>{x.startContainer = v}"
prim__setStartContainer : StaticRangeInit -> Node -> PrimIO ()



export
%foreign "browser:lambda:x=>x.startOffset"
prim__startOffset : StaticRangeInit -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.startOffset = v}"
prim__setStartOffset : StaticRangeInit -> Bits32 -> PrimIO ()



export
new :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t3 Node}
  -> (startContainer : t1)
  -> (startOffset : Bits32)
  -> (endContainer : t3)
  -> (endOffset : Bits32)
  -> JSIO StaticRangeInit
new a b c d = primJS $ StaticRangeInit.prim__new (cast a) b (cast c) d


export
endContainer :
     {auto _ : Cast t StaticRangeInit}
  -> t
  -> Attribute True Prelude.id Node
endContainer v = fromPrim
                   "StaticRangeInit.getendContainer"
                   prim__endContainer
                   prim__setEndContainer
                   (cast {to = StaticRangeInit} v)


export
endOffset :
     {auto _ : Cast t StaticRangeInit}
  -> t
  -> Attribute True Prelude.id Bits32
endOffset v = fromPrim
                "StaticRangeInit.getendOffset"
                prim__endOffset
                prim__setEndOffset
                (cast {to = StaticRangeInit} v)


export
startContainer :
     {auto _ : Cast t StaticRangeInit}
  -> t
  -> Attribute True Prelude.id Node
startContainer v = fromPrim
                     "StaticRangeInit.getstartContainer"
                     prim__startContainer
                     prim__setStartContainer
                     (cast {to = StaticRangeInit} v)


export
startOffset :
     {auto _ : Cast t StaticRangeInit}
  -> t
  -> Attribute True Prelude.id Bits32
startOffset v = fromPrim
                  "StaticRangeInit.getstartOffset"
                  prim__startOffset
                  prim__setStartOffset
                  (cast {to = StaticRangeInit} v)
