module Web.Raw.DOMImplementation

import JS
import Web.Types.DOMImplementation
import Web.Types.Document
import Web.Types.DocumentType
import Web.Types.XMLDocument


%default total


export
%foreign "browser:lambda:(x,a,b,c)=>x.createDocument(a,b,c)"
prim__createDocument :
     DOMImplementation
  -> Nullable String
  -> String
  -> UndefOr (Nullable DocumentType)
  -> PrimIO XMLDocument


export
%foreign "browser:lambda:(x,a,b,c)=>x.createDocumentType(a,b,c)"
prim__createDocumentType :
     DOMImplementation
  -> String
  -> String
  -> String
  -> PrimIO DocumentType


export
%foreign "browser:lambda:(x,a)=>x.createHTMLDocument(a)"
prim__createHTMLDocument :
     DOMImplementation
  -> UndefOr String
  -> PrimIO Document


export
%foreign "browser:lambda:x=>x.hasFeature()"
prim__hasFeature : DOMImplementation -> PrimIO Boolean


export
createDocument' :
     (obj : DOMImplementation)
  -> (namespace_ : Maybe String)
  -> (qualifiedName : String)
  -> (doctype : Optional (Maybe DocumentType))
  -> JSIO XMLDocument
createDocument' a b c d = primJS $
  DOMImplementation.prim__createDocument a (toFFI b) c (toFFI d)

export
createDocument :
     (obj : DOMImplementation)
  -> (namespace_ : Maybe String)
  -> (qualifiedName : String)
  -> JSIO XMLDocument
createDocument a b c = primJS $
  DOMImplementation.prim__createDocument a (toFFI b) c undef


export
createDocumentType :
     (obj : DOMImplementation)
  -> (qualifiedName : String)
  -> (publicId : String)
  -> (systemId : String)
  -> JSIO DocumentType
createDocumentType a b c d = primJS $
  DOMImplementation.prim__createDocumentType a b c d


export
createHTMLDocument' :
     (obj : DOMImplementation)
  -> (title : Optional String)
  -> JSIO Document
createHTMLDocument' a b = primJS $
  DOMImplementation.prim__createHTMLDocument a (toFFI b)

export
createHTMLDocument : (obj : DOMImplementation) -> JSIO Document
createHTMLDocument a = primJS $
  DOMImplementation.prim__createHTMLDocument a undef


export
hasFeature : (obj : DOMImplementation) -> JSIO Bool
hasFeature a = tryJS "DOMImplementation.hasFeature" $
  DOMImplementation.prim__hasFeature a

