module Web.Raw.ChildNode

import JS
import Web.Types.ChildNode
import Web.Types.Node


%default total


export
%foreign "browser:lambda:(x,va)=>x.after(...va())"
prim__after : ChildNode -> IO (Array (Union2 Node String)) -> PrimIO ()


export
%foreign "browser:lambda:(x,va)=>x.before(...va())"
prim__before : ChildNode -> IO (Array (Union2 Node String)) -> PrimIO ()


export
%foreign "browser:lambda:x=>x.remove()"
prim__remove : ChildNode -> PrimIO ()


export
%foreign "browser:lambda:(x,va)=>x.replaceWith(...va())"
prim__replaceWith : ChildNode -> IO (Array (Union2 Node String)) -> PrimIO ()


export
after :
     {auto _ : Cast t1 ChildNode}
  -> (obj : t1)
  -> (nodes : List (HSum [Node, String]))
  -> JSIO ()
after a b = primJS $ ChildNode.prim__after (cast a) (toFFI b)


export
before :
     {auto _ : Cast t1 ChildNode}
  -> (obj : t1)
  -> (nodes : List (HSum [Node, String]))
  -> JSIO ()
before a b = primJS $ ChildNode.prim__before (cast a) (toFFI b)


export
remove : {auto _ : Cast t1 ChildNode} -> (obj : t1) -> JSIO ()
remove a = primJS $ ChildNode.prim__remove (cast a)


export
replaceWith :
     {auto _ : Cast t1 ChildNode}
  -> (obj : t1)
  -> (nodes : List (HSum [Node, String]))
  -> JSIO ()
replaceWith a b = primJS $ ChildNode.prim__replaceWith (cast a) (toFFI b)
