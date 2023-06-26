module Web.Raw.IDBIndexParameters

import JS
import Web.Types.IDBIndexParameters


%default total


export
%foreign "browser:lambda:(a,b)=> ({unique: a,multiEntry: b})"
prim__new : UndefOr Boolean -> UndefOr Boolean -> PrimIO IDBIndexParameters


export
%foreign "browser:lambda:x=>x.multiEntry"
prim__multiEntry : IDBIndexParameters -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.multiEntry = v}"
prim__setMultiEntry : IDBIndexParameters -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.unique"
prim__unique : IDBIndexParameters -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.unique = v}"
prim__setUnique : IDBIndexParameters -> UndefOr Boolean -> PrimIO ()



export
new' :
     (unique : Optional Bool)
  -> (multiEntry : Optional Bool)
  -> JSIO IDBIndexParameters
new' a b = primJS $ IDBIndexParameters.prim__new (toFFI a) (toFFI b)

export
new : JSIO IDBIndexParameters
new = primJS $ IDBIndexParameters.prim__new undef undef


export
multiEntry :
     {auto _ : Cast t IDBIndexParameters}
  -> t
  -> Attribute True Optional Bool
multiEntry v = fromUndefOrPrim
                 "IDBIndexParameters.getmultiEntry"
                 prim__multiEntry
                 prim__setMultiEntry
                 False
                 (cast {to = IDBIndexParameters} v)


export
unique :
     {auto _ : Cast t IDBIndexParameters}
  -> t
  -> Attribute True Optional Bool
unique v = fromUndefOrPrim
             "IDBIndexParameters.getunique"
             prim__unique
             prim__setUnique
             False
             (cast {to = IDBIndexParameters} v)

