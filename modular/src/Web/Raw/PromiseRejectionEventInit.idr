module Web.Raw.PromiseRejectionEventInit

import JS
import Web.Types.EventInit
import Web.Types.PromiseRejectionEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> ({promise: a,reason: b})"
prim__new : Promise AnyPtr -> UndefOr AnyPtr -> PrimIO PromiseRejectionEventInit


export
%foreign "browser:lambda:x=>x.promise"
prim__promise : PromiseRejectionEventInit -> PrimIO (Promise AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.promise = v}"
prim__setPromise : PromiseRejectionEventInit -> Promise AnyPtr -> PrimIO ()



export
%foreign "browser:lambda:x=>x.reason"
prim__reason : PromiseRejectionEventInit -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.reason = v}"
prim__setReason : PromiseRejectionEventInit -> UndefOr AnyPtr -> PrimIO ()



export
new' :
     (promise : Promise AnyPtr)
  -> (reason : Optional Any)
  -> JSIO PromiseRejectionEventInit
new' a b = primJS $ PromiseRejectionEventInit.prim__new a (toFFI b)

export
new : (promise : Promise AnyPtr) -> JSIO PromiseRejectionEventInit
new a = primJS $ PromiseRejectionEventInit.prim__new a undef


export
promise :
     {auto _ : Cast t PromiseRejectionEventInit}
  -> t
  -> Attribute True Prelude.id (Promise AnyPtr)
promise v = fromPrim
              "PromiseRejectionEventInit.getpromise"
              prim__promise
              prim__setPromise
              (cast {to = PromiseRejectionEventInit} v)


export
reason :
     {auto _ : Cast t PromiseRejectionEventInit}
  -> t
  -> Attribute False Optional Any
reason v = fromUndefOrPrimNoDefault
             "PromiseRejectionEventInit.getreason"
             prim__reason
             prim__setReason
             (cast {to = PromiseRejectionEventInit} v)

