module Web.Raw.NonDocumentTypeChildNode

import JS
import Web.Types.Element
import Web.Types.NonDocumentTypeChildNode


%default total


export
%foreign "browser:lambda:x=>x.nextElementSibling"
prim__nextElementSibling : NonDocumentTypeChildNode -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:x=>x.previousElementSibling"
prim__previousElementSibling :
     NonDocumentTypeChildNode
  -> PrimIO (Nullable Element)


export
nextElementSibling :
     {auto _ : Cast t1 NonDocumentTypeChildNode}
  -> (obj : t1)
  -> JSIO (Maybe Element)
nextElementSibling a = tryJS "NonDocumentTypeChildNode.nextElementSibling" $
  NonDocumentTypeChildNode.prim__nextElementSibling (cast a)


export
previousElementSibling :
     {auto _ : Cast t1 NonDocumentTypeChildNode}
  -> (obj : t1)
  -> JSIO (Maybe Element)
previousElementSibling a = tryJS "NonDocumentTypeChildNode.previousElementSibling" $
  NonDocumentTypeChildNode.prim__previousElementSibling (cast a)
