module Web.Raw.NonElementParentNode

import JS
import Web.Types.Element
import Web.Types.NonElementParentNode


%default total


export
%foreign "browser:lambda:(x,a)=>x.getElementById(a)"
prim__getElementById :
     NonElementParentNode
  -> String
  -> PrimIO (Nullable Element)


export
getElementById :
     {auto _ : Cast t1 NonElementParentNode}
  -> (obj : t1)
  -> (elementId : String)
  -> JSIO (Maybe Element)
getElementById a b = tryJS "NonElementParentNode.getElementById" $
  NonElementParentNode.prim__getElementById (cast a) b

