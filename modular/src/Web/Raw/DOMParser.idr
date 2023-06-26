module Web.Raw.DOMParser

import JS
import Web.Types.DOMParser
import Web.Types.DOMParserSupportedType
import Web.Types.Document


%default total


export
%foreign "browser:lambda:()=> new DOMParser()"
prim__new : PrimIO DOMParser


export
%foreign "browser:lambda:(x,a,b)=>x.parseFromString(a,b)"
prim__parseFromString : DOMParser -> String -> String -> PrimIO Document


export
new : JSIO DOMParser
new = primJS $ DOMParser.prim__new


export
parseFromString :
     (obj : DOMParser)
  -> (string : String)
  -> (type : DOMParserSupportedType)
  -> JSIO Document
parseFromString a b c = primJS $ DOMParser.prim__parseFromString a b (toFFI c)

