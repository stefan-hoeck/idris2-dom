module Web.Raw.NodeIterator

import JS
import Web.Types.Node
import Web.Types.NodeFilter
import Web.Types.NodeIterator


%default total


export
%foreign "browser:lambda:x=>x.filter"
prim__filter : NodeIterator -> PrimIO (Nullable NodeFilter)


export
%foreign "browser:lambda:x=>x.pointerBeforeReferenceNode"
prim__pointerBeforeReferenceNode : NodeIterator -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.referenceNode"
prim__referenceNode : NodeIterator -> PrimIO Node


export
%foreign "browser:lambda:x=>x.root"
prim__root : NodeIterator -> PrimIO Node


export
%foreign "browser:lambda:x=>x.whatToShow"
prim__whatToShow : NodeIterator -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.detach()"
prim__detach : NodeIterator -> PrimIO ()


export
%foreign "browser:lambda:x=>x.nextNode()"
prim__nextNode : NodeIterator -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.previousNode()"
prim__previousNode : NodeIterator -> PrimIO (Nullable Node)


export
filter : (obj : NodeIterator) -> JSIO (Maybe NodeFilter)
filter a = tryJS "NodeIterator.filter" $ NodeIterator.prim__filter a


export
pointerBeforeReferenceNode : (obj : NodeIterator) -> JSIO Bool
pointerBeforeReferenceNode a = tryJS "NodeIterator.pointerBeforeReferenceNode" $
  NodeIterator.prim__pointerBeforeReferenceNode a


export
referenceNode : (obj : NodeIterator) -> JSIO Node
referenceNode a = primJS $ NodeIterator.prim__referenceNode a


export
root : (obj : NodeIterator) -> JSIO Node
root a = primJS $ NodeIterator.prim__root a


export
whatToShow : (obj : NodeIterator) -> JSIO Bits32
whatToShow a = primJS $ NodeIterator.prim__whatToShow a


export
detach : (obj : NodeIterator) -> JSIO ()
detach a = primJS $ NodeIterator.prim__detach a


export
nextNode : (obj : NodeIterator) -> JSIO (Maybe Node)
nextNode a = tryJS "NodeIterator.nextNode" $ NodeIterator.prim__nextNode a


export
previousNode : (obj : NodeIterator) -> JSIO (Maybe Node)
previousNode a = tryJS "NodeIterator.previousNode" $
  NodeIterator.prim__previousNode a

