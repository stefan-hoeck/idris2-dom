module Web.Raw.MutationObserver

import JS
import Web.Types.MutationCallback
import Web.Types.MutationObserver
import Web.Types.MutationObserverInit
import Web.Types.MutationRecord
import Web.Types.Node


%default total


export
%foreign "browser:lambda:(a)=> new MutationObserver(a)"
prim__new : MutationCallback -> PrimIO MutationObserver


export
%foreign "browser:lambda:x=>x.disconnect()"
prim__disconnect : MutationObserver -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.observe(a,b)"
prim__observe :
     MutationObserver
  -> Node
  -> UndefOr MutationObserverInit
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.takeRecords()"
prim__takeRecords : MutationObserver -> PrimIO (Array MutationRecord)


export
new : (callback : MutationCallback) -> JSIO MutationObserver
new a = primJS $ MutationObserver.prim__new a


export
disconnect : (obj : MutationObserver) -> JSIO ()
disconnect a = primJS $ MutationObserver.prim__disconnect a


export
observe' :
     {auto _ : Cast t2 Node}
  -> {auto _ : Cast t3 MutationObserverInit}
  -> (obj : MutationObserver)
  -> (target : t2)
  -> (options : Optional t3)
  -> JSIO ()
observe' a b c = primJS $ MutationObserver.prim__observe a (cast b) (optUp c)

export
observe :
     {auto _ : Cast t2 Node}
  -> (obj : MutationObserver)
  -> (target : t2)
  -> JSIO ()
observe a b = primJS $ MutationObserver.prim__observe a (cast b) undef


export
takeRecords : (obj : MutationObserver) -> JSIO (Array MutationRecord)
takeRecords a = primJS $ MutationObserver.prim__takeRecords a
