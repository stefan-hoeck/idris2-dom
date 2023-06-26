module Web.Raw.Node

import JS
import Web.Types.Document
import Web.Types.Element
import Web.Types.EventTarget
import Web.Types.GetRootNodeOptions
import Web.Types.Node
import Web.Types.NodeList


%default total


export
ATTRIBUTE_NODE : Bits16
ATTRIBUTE_NODE = 2


export
CDATA_SECTION_NODE : Bits16
CDATA_SECTION_NODE = 4


export
COMMENT_NODE : Bits16
COMMENT_NODE = 8


export
DOCUMENT_FRAGMENT_NODE : Bits16
DOCUMENT_FRAGMENT_NODE = 11


export
DOCUMENT_NODE : Bits16
DOCUMENT_NODE = 9


export
DOCUMENT_POSITION_CONTAINED_BY : Bits16
DOCUMENT_POSITION_CONTAINED_BY = 0x10


export
DOCUMENT_POSITION_CONTAINS : Bits16
DOCUMENT_POSITION_CONTAINS = 0x8


export
DOCUMENT_POSITION_DISCONNECTED : Bits16
DOCUMENT_POSITION_DISCONNECTED = 0x1


export
DOCUMENT_POSITION_FOLLOWING : Bits16
DOCUMENT_POSITION_FOLLOWING = 0x4


export
DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC : Bits16
DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20


export
DOCUMENT_POSITION_PRECEDING : Bits16
DOCUMENT_POSITION_PRECEDING = 0x2


export
DOCUMENT_TYPE_NODE : Bits16
DOCUMENT_TYPE_NODE = 10


export
ELEMENT_NODE : Bits16
ELEMENT_NODE = 1


export
ENTITY_NODE : Bits16
ENTITY_NODE = 6


export
ENTITY_REFERENCE_NODE : Bits16
ENTITY_REFERENCE_NODE = 5


export
NOTATION_NODE : Bits16
NOTATION_NODE = 12


export
PROCESSING_INSTRUCTION_NODE : Bits16
PROCESSING_INSTRUCTION_NODE = 7


export
TEXT_NODE : Bits16
TEXT_NODE = 3


export
%foreign "browser:lambda:x=>x.baseURI"
prim__baseURI : Node -> PrimIO String


export
%foreign "browser:lambda:x=>x.childNodes"
prim__childNodes : Node -> PrimIO NodeList


export
%foreign "browser:lambda:x=>x.firstChild"
prim__firstChild : Node -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.isConnected"
prim__isConnected : Node -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.lastChild"
prim__lastChild : Node -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.nextSibling"
prim__nextSibling : Node -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.nodeName"
prim__nodeName : Node -> PrimIO String


export
%foreign "browser:lambda:x=>x.nodeType"
prim__nodeType : Node -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.nodeValue"
prim__nodeValue : Node -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.nodeValue = v}"
prim__setNodeValue : Node -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ownerDocument"
prim__ownerDocument : Node -> PrimIO (Nullable Document)


export
%foreign "browser:lambda:x=>x.parentElement"
prim__parentElement : Node -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:x=>x.parentNode"
prim__parentNode : Node -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.previousSibling"
prim__previousSibling : Node -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.textContent"
prim__textContent : Node -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.textContent = v}"
prim__setTextContent : Node -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.appendChild(a)"
prim__appendChild : Node -> Node -> PrimIO Node


export
%foreign "browser:lambda:(x,a)=>x.cloneNode(a)"
prim__cloneNode : Node -> UndefOr Boolean -> PrimIO Node


export
%foreign "browser:lambda:(x,a)=>x.compareDocumentPosition(a)"
prim__compareDocumentPosition : Node -> Node -> PrimIO Bits16


export
%foreign "browser:lambda:(x,a)=>x.contains(a)"
prim__contains : Node -> Nullable Node -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.getRootNode(a)"
prim__getRootNode : Node -> UndefOr GetRootNodeOptions -> PrimIO Node


export
%foreign "browser:lambda:x=>x.hasChildNodes()"
prim__hasChildNodes : Node -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.insertBefore(a,b)"
prim__insertBefore : Node -> Node -> Nullable Node -> PrimIO Node


export
%foreign "browser:lambda:(x,a)=>x.isDefaultNamespace(a)"
prim__isDefaultNamespace : Node -> Nullable String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isEqualNode(a)"
prim__isEqualNode : Node -> Nullable Node -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isSameNode(a)"
prim__isSameNode : Node -> Nullable Node -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.lookupNamespaceURI(a)"
prim__lookupNamespaceURI : Node -> Nullable String -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,a)=>x.lookupPrefix(a)"
prim__lookupPrefix : Node -> Nullable String -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.normalize()"
prim__normalize : Node -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.removeChild(a)"
prim__removeChild : Node -> Node -> PrimIO Node


export
%foreign "browser:lambda:(x,a,b)=>x.replaceChild(a,b)"
prim__replaceChild : Node -> Node -> Node -> PrimIO Node


export
baseURI : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO String
baseURI a = primJS $ Node.prim__baseURI (cast a)


export
childNodes : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO NodeList
childNodes a = primJS $ Node.prim__childNodes (cast a)


export
firstChild : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO (Maybe Node)
firstChild a = tryJS "Node.firstChild" $ Node.prim__firstChild (cast a)


export
isConnected : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO Bool
isConnected a = tryJS "Node.isConnected" $ Node.prim__isConnected (cast a)


export
lastChild : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO (Maybe Node)
lastChild a = tryJS "Node.lastChild" $ Node.prim__lastChild (cast a)


export
nextSibling : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO (Maybe Node)
nextSibling a = tryJS "Node.nextSibling" $ Node.prim__nextSibling (cast a)


export
nodeName : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO String
nodeName a = primJS $ Node.prim__nodeName (cast a)


export
nodeType : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO Bits16
nodeType a = primJS $ Node.prim__nodeType (cast a)


export
nodeValue : {auto _ : Cast t Node} -> t -> Attribute False Maybe String
nodeValue v = fromNullablePrim
                "Node.getnodeValue"
                prim__nodeValue
                prim__setNodeValue
                (cast {to = Node} v)


export
ownerDocument : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO (Maybe Document)
ownerDocument a = tryJS "Node.ownerDocument" $ Node.prim__ownerDocument (cast a)


export
parentElement : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO (Maybe Element)
parentElement a = tryJS "Node.parentElement" $ Node.prim__parentElement (cast a)


export
parentNode : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO (Maybe Node)
parentNode a = tryJS "Node.parentNode" $ Node.prim__parentNode (cast a)


export
previousSibling : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO (Maybe Node)
previousSibling a = tryJS "Node.previousSibling" $
  Node.prim__previousSibling (cast a)


export
textContent : {auto _ : Cast t Node} -> t -> Attribute False Maybe String
textContent v = fromNullablePrim
                  "Node.gettextContent"
                  prim__textContent
                  prim__setTextContent
                  (cast {to = Node} v)


export
appendChild :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (node : t2)
  -> JSIO Node
appendChild a b = primJS $ Node.prim__appendChild (cast a) (cast b)


export
cloneNode' :
     {auto _ : Cast t1 Node}
  -> (obj : t1)
  -> (deep : Optional Bool)
  -> JSIO Node
cloneNode' a b = primJS $ Node.prim__cloneNode (cast a) (toFFI b)

export
cloneNode : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO Node
cloneNode a = primJS $ Node.prim__cloneNode (cast a) undef


export
compareDocumentPosition :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (other : t2)
  -> JSIO Bits16
compareDocumentPosition a b = primJS $
  Node.prim__compareDocumentPosition (cast a) (cast b)


export
contains :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (other : Maybe t2)
  -> JSIO Bool
contains a b = tryJS "Node.contains" $ Node.prim__contains (cast a) (mayUp b)


export
getRootNode' :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 GetRootNodeOptions}
  -> (obj : t1)
  -> (options : Optional t2)
  -> JSIO Node
getRootNode' a b = primJS $ Node.prim__getRootNode (cast a) (optUp b)

export
getRootNode : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO Node
getRootNode a = primJS $ Node.prim__getRootNode (cast a) undef


export
hasChildNodes : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO Bool
hasChildNodes a = tryJS "Node.hasChildNodes" $ Node.prim__hasChildNodes (cast a)


export
insertBefore :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 Node}
  -> {auto _ : Cast t3 Node}
  -> (obj : t1)
  -> (node : t2)
  -> (child : Maybe t3)
  -> JSIO Node
insertBefore a b c = primJS $
  Node.prim__insertBefore (cast a) (cast b) (mayUp c)


export
isDefaultNamespace :
     {auto _ : Cast t1 Node}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> JSIO Bool
isDefaultNamespace a b = tryJS "Node.isDefaultNamespace" $
  Node.prim__isDefaultNamespace (cast a) (toFFI b)


export
isEqualNode :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (otherNode : Maybe t2)
  -> JSIO Bool
isEqualNode a b = tryJS "Node.isEqualNode" $
  Node.prim__isEqualNode (cast a) (mayUp b)


export
isSameNode :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (otherNode : Maybe t2)
  -> JSIO Bool
isSameNode a b = tryJS "Node.isSameNode" $
  Node.prim__isSameNode (cast a) (mayUp b)


export
lookupNamespaceURI :
     {auto _ : Cast t1 Node}
  -> (obj : t1)
  -> (prefix_ : Maybe String)
  -> JSIO (Maybe String)
lookupNamespaceURI a b = tryJS "Node.lookupNamespaceURI" $
  Node.prim__lookupNamespaceURI (cast a) (toFFI b)


export
lookupPrefix :
     {auto _ : Cast t1 Node}
  -> (obj : t1)
  -> (namespace_ : Maybe String)
  -> JSIO (Maybe String)
lookupPrefix a b = tryJS "Node.lookupPrefix" $
  Node.prim__lookupPrefix (cast a) (toFFI b)


export
normalize : {auto _ : Cast t1 Node} -> (obj : t1) -> JSIO ()
normalize a = primJS $ Node.prim__normalize (cast a)


export
removeChild :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 Node}
  -> (obj : t1)
  -> (child : t2)
  -> JSIO Node
removeChild a b = primJS $ Node.prim__removeChild (cast a) (cast b)


export
replaceChild :
     {auto _ : Cast t1 Node}
  -> {auto _ : Cast t2 Node}
  -> {auto _ : Cast t3 Node}
  -> (obj : t1)
  -> (node : t2)
  -> (child : t3)
  -> JSIO Node
replaceChild a b c = primJS $ Node.prim__replaceChild (cast a) (cast b) (cast c)
