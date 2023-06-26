module Web.Raw.NodeList

import JS
import Web.Types.Node
import Web.Types.NodeList


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : NodeList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : NodeList -> Bits32 -> PrimIO (Nullable Node)


export
length : {auto _ : Cast t1 NodeList} -> (obj : t1) -> JSIO Bits32
length a = primJS $ NodeList.prim__length (cast a)


export
item :
     {auto _ : Cast t1 NodeList}
  -> (obj : t1)
  -> (index : Bits32)
  -> JSIO (Maybe Node)
item a b = tryJS "NodeList.item" $ NodeList.prim__item (cast a) b

