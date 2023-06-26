module Web.Raw.GetSVGDocument

import JS
import Web.Types.Document
import Web.Types.GetSVGDocument


%default total


export
%foreign "browser:lambda:x=>x.getSVGDocument()"
prim__getSVGDocument : GetSVGDocument -> PrimIO Document


export
getSVGDocument :
     {auto _ : Cast t1 GetSVGDocument}
  -> (obj : t1)
  -> JSIO Document
getSVGDocument a = primJS $ GetSVGDocument.prim__getSVGDocument (cast a)
