module Web.Raw.CloseEventInit

import JS
import Web.Types.CloseEventInit
import Web.Types.EventInit


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({wasClean: a,code: b,reason: c})"
prim__new :
     UndefOr Boolean
  -> UndefOr Bits16
  -> UndefOr String
  -> PrimIO CloseEventInit


export
%foreign "browser:lambda:x=>x.code"
prim__code : CloseEventInit -> PrimIO (UndefOr Bits16)



export
%foreign "browser:lambda:(x,v)=>{x.code = v}"
prim__setCode : CloseEventInit -> UndefOr Bits16 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.reason"
prim__reason : CloseEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.reason = v}"
prim__setReason : CloseEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.wasClean"
prim__wasClean : CloseEventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.wasClean = v}"
prim__setWasClean : CloseEventInit -> UndefOr Boolean -> PrimIO ()



export
new' :
     (wasClean : Optional Bool)
  -> (code : Optional Bits16)
  -> (reason : Optional String)
  -> JSIO CloseEventInit
new' a b c = primJS $ CloseEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO CloseEventInit
new = primJS $ CloseEventInit.prim__new undef undef undef


export
code : {auto _ : Cast t CloseEventInit} -> t -> Attribute True Optional Bits16
code v = fromUndefOrPrim
           "CloseEventInit.getcode"
           prim__code
           prim__setCode
           0
           (cast {to = CloseEventInit} v)


export
reason : {auto _ : Cast t CloseEventInit} -> t -> Attribute True Optional String
reason v = fromUndefOrPrim
             "CloseEventInit.getreason"
             prim__reason
             prim__setReason
             ""
             (cast {to = CloseEventInit} v)


export
wasClean : {auto _ : Cast t CloseEventInit} -> t -> Attribute True Optional Bool
wasClean v = fromUndefOrPrim
               "CloseEventInit.getwasClean"
               prim__wasClean
               prim__setWasClean
               False
               (cast {to = CloseEventInit} v)

