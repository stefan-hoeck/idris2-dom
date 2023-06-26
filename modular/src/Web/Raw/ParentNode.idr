module Web.Raw.ParentNode

import JS
import Web.Types.Element
import Web.Types.HTMLCollection
import Web.Types.Node
import Web.Types.NodeList
import Web.Types.ParentNode


%default total


export
%foreign "browser:lambda:x=>x.childElementCount"
prim__childElementCount : ParentNode -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.children"
prim__children : ParentNode -> PrimIO HTMLCollection


export
%foreign "browser:lambda:x=>x.firstElementChild"
prim__firstElementChild : ParentNode -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:x=>x.lastElementChild"
prim__lastElementChild : ParentNode -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:(x,va)=>x.append(...va())"
prim__append : ParentNode -> IO (Array (Union2 Node String)) -> PrimIO ()


export
%foreign "browser:lambda:(x,va)=>x.prepend(...va())"
prim__prepend : ParentNode -> IO (Array (Union2 Node String)) -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.querySelectorAll(a)"
prim__querySelectorAll : ParentNode -> String -> PrimIO NodeList


export
%foreign "browser:lambda:(x,a)=>x.querySelector(a)"
prim__querySelector : ParentNode -> String -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:(x,va)=>x.replaceChildren(...va())"
prim__replaceChildren :
     ParentNode
  -> IO (Array (Union2 Node String))
  -> PrimIO ()


export
childElementCount : {auto _ : Cast t1 ParentNode} -> (obj : t1) -> JSIO Bits32
childElementCount a = primJS $ ParentNode.prim__childElementCount (cast a)


export
children : {auto _ : Cast t1 ParentNode} -> (obj : t1) -> JSIO HTMLCollection
children a = primJS $ ParentNode.prim__children (cast a)


export
firstElementChild :
     {auto _ : Cast t1 ParentNode}
  -> (obj : t1)
  -> JSIO (Maybe Element)
firstElementChild a = tryJS "ParentNode.firstElementChild" $
  ParentNode.prim__firstElementChild (cast a)


export
lastElementChild :
     {auto _ : Cast t1 ParentNode}
  -> (obj : t1)
  -> JSIO (Maybe Element)
lastElementChild a = tryJS "ParentNode.lastElementChild" $
  ParentNode.prim__lastElementChild (cast a)


export
append :
     {auto _ : Cast t1 ParentNode}
  -> (obj : t1)
  -> (nodes : List (HSum [Node, String]))
  -> JSIO ()
append a b = primJS $ ParentNode.prim__append (cast a) (toFFI b)


export
prepend :
     {auto _ : Cast t1 ParentNode}
  -> (obj : t1)
  -> (nodes : List (HSum [Node, String]))
  -> JSIO ()
prepend a b = primJS $ ParentNode.prim__prepend (cast a) (toFFI b)


export
querySelectorAll :
     {auto _ : Cast t1 ParentNode}
  -> (obj : t1)
  -> (selectors : String)
  -> JSIO NodeList
querySelectorAll a b = primJS $ ParentNode.prim__querySelectorAll (cast a) b


export
querySelector :
     {auto _ : Cast t1 ParentNode}
  -> (obj : t1)
  -> (selectors : String)
  -> JSIO (Maybe Element)
querySelector a b = tryJS "ParentNode.querySelector" $
  ParentNode.prim__querySelector (cast a) b


export
replaceChildren :
     {auto _ : Cast t1 ParentNode}
  -> (obj : t1)
  -> (nodes : List (HSum [Node, String]))
  -> JSIO ()
replaceChildren a b = primJS $
  ParentNode.prim__replaceChildren (cast a) (toFFI b)

