module Web.Raw.XMLSerializer

import JS
import Web.Types.Node
import Web.Types.XMLSerializer


%default total


export
%foreign "browser:lambda:()=> new XMLSerializer()"
prim__new : PrimIO XMLSerializer


export
%foreign "browser:lambda:(x,a)=>x.serializeToString(a)"
prim__serializeToString : XMLSerializer -> Node -> PrimIO String


export
new : JSIO XMLSerializer
new = primJS $ XMLSerializer.prim__new


export
serializeToString :
     {auto _ : Cast t2 Node}
  -> (obj : XMLSerializer)
  -> (root : t2)
  -> JSIO String
serializeToString a b = primJS $
  XMLSerializer.prim__serializeToString a (cast b)

