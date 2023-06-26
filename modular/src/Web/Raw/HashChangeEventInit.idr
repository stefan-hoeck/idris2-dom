module Web.Raw.HashChangeEventInit

import JS
import Web.Types.EventInit
import Web.Types.HashChangeEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> ({oldURL: a,newURL: b})"
prim__new : UndefOr String -> UndefOr String -> PrimIO HashChangeEventInit


export
%foreign "browser:lambda:x=>x.newURL"
prim__newURL : HashChangeEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.newURL = v}"
prim__setNewURL : HashChangeEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oldURL"
prim__oldURL : HashChangeEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.oldURL = v}"
prim__setOldURL : HashChangeEventInit -> UndefOr String -> PrimIO ()



export
new' :
     (oldURL : Optional String)
  -> (newURL : Optional String)
  -> JSIO HashChangeEventInit
new' a b = primJS $ HashChangeEventInit.prim__new (toFFI a) (toFFI b)

export
new : JSIO HashChangeEventInit
new = primJS $ HashChangeEventInit.prim__new undef undef


export
newURL :
     {auto _ : Cast t HashChangeEventInit}
  -> t
  -> Attribute True Optional String
newURL v = fromUndefOrPrim
             "HashChangeEventInit.getnewURL"
             prim__newURL
             prim__setNewURL
             ""
             (cast {to = HashChangeEventInit} v)


export
oldURL :
     {auto _ : Cast t HashChangeEventInit}
  -> t
  -> Attribute True Optional String
oldURL v = fromUndefOrPrim
             "HashChangeEventInit.getoldURL"
             prim__oldURL
             prim__setOldURL
             ""
             (cast {to = HashChangeEventInit} v)
