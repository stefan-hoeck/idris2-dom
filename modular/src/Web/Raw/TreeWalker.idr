module Web.Raw.TreeWalker

import JS
import Web.Types.Node
import Web.Types.NodeFilter
import Web.Types.TreeWalker


%default total


export
%foreign "browser:lambda:x=>x.currentNode"
prim__currentNode : TreeWalker -> PrimIO Node



export
%foreign "browser:lambda:(x,v)=>{x.currentNode = v}"
prim__setCurrentNode : TreeWalker -> Node -> PrimIO ()



export
%foreign "browser:lambda:x=>x.filter"
prim__filter : TreeWalker -> PrimIO (Nullable NodeFilter)


export
%foreign "browser:lambda:x=>x.root"
prim__root : TreeWalker -> PrimIO Node


export
%foreign "browser:lambda:x=>x.whatToShow"
prim__whatToShow : TreeWalker -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.firstChild()"
prim__firstChild : TreeWalker -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.lastChild()"
prim__lastChild : TreeWalker -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.nextNode()"
prim__nextNode : TreeWalker -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.nextSibling()"
prim__nextSibling : TreeWalker -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.parentNode()"
prim__parentNode : TreeWalker -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.previousNode()"
prim__previousNode : TreeWalker -> PrimIO (Nullable Node)


export
%foreign "browser:lambda:x=>x.previousSibling()"
prim__previousSibling : TreeWalker -> PrimIO (Nullable Node)


export
currentNode : TreeWalker -> Attribute True Prelude.id Node
currentNode v = fromPrim
                  "TreeWalker.getcurrentNode"
                  prim__currentNode
                  prim__setCurrentNode
                  v


export
filter : (obj : TreeWalker) -> JSIO (Maybe NodeFilter)
filter a = tryJS "TreeWalker.filter" $ TreeWalker.prim__filter a


export
root : (obj : TreeWalker) -> JSIO Node
root a = primJS $ TreeWalker.prim__root a


export
whatToShow : (obj : TreeWalker) -> JSIO Bits32
whatToShow a = primJS $ TreeWalker.prim__whatToShow a


export
firstChild : (obj : TreeWalker) -> JSIO (Maybe Node)
firstChild a = tryJS "TreeWalker.firstChild" $ TreeWalker.prim__firstChild a


export
lastChild : (obj : TreeWalker) -> JSIO (Maybe Node)
lastChild a = tryJS "TreeWalker.lastChild" $ TreeWalker.prim__lastChild a


export
nextNode : (obj : TreeWalker) -> JSIO (Maybe Node)
nextNode a = tryJS "TreeWalker.nextNode" $ TreeWalker.prim__nextNode a


export
nextSibling : (obj : TreeWalker) -> JSIO (Maybe Node)
nextSibling a = tryJS "TreeWalker.nextSibling" $ TreeWalker.prim__nextSibling a


export
parentNode : (obj : TreeWalker) -> JSIO (Maybe Node)
parentNode a = tryJS "TreeWalker.parentNode" $ TreeWalker.prim__parentNode a


export
previousNode : (obj : TreeWalker) -> JSIO (Maybe Node)
previousNode a = tryJS "TreeWalker.previousNode" $
  TreeWalker.prim__previousNode a


export
previousSibling : (obj : TreeWalker) -> JSIO (Maybe Node)
previousSibling a = tryJS "TreeWalker.previousSibling" $
  TreeWalker.prim__previousSibling a

