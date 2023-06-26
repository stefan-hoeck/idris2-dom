module Web.Raw.RadioNodeList

import JS
import Web.Types.NodeList
import Web.Types.RadioNodeList


%default total


export
%foreign "browser:lambda:x=>x.value"
prim__value : RadioNodeList -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : RadioNodeList -> String -> PrimIO ()



export
value : RadioNodeList -> Attribute True Prelude.id String
value v = fromPrim "RadioNodeList.getvalue" prim__value prim__setValue v
