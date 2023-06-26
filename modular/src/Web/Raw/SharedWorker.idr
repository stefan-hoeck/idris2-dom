module Web.Raw.SharedWorker

import JS
import Web.Types.AbstractWorker
import Web.Types.EventTarget
import Web.Types.MessagePort
import Web.Types.SharedWorker
import Web.Types.WorkerOptions


%default total


export
%foreign "browser:lambda:(a,b)=> new SharedWorker(a,b)"
prim__new :
     String
  -> UndefOr (Union2 String WorkerOptions)
  -> PrimIO SharedWorker


export
%foreign "browser:lambda:x=>x.port"
prim__port : SharedWorker -> PrimIO MessagePort


export
new' :
     (scriptURL : String)
  -> (options : Optional (HSum [String, WorkerOptions]))
  -> JSIO SharedWorker
new' a b = primJS $ SharedWorker.prim__new a (toFFI b)

export
new : (scriptURL : String) -> JSIO SharedWorker
new a = primJS $ SharedWorker.prim__new a undef


export
port : (obj : SharedWorker) -> JSIO MessagePort
port a = primJS $ SharedWorker.prim__port a

