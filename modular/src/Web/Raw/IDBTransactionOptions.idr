module Web.Raw.IDBTransactionOptions

import JS
import Web.Types.IDBTransactionDurability
import Web.Types.IDBTransactionOptions


%default total


export
%foreign "browser:lambda:(a)=> ({durability: a})"
prim__new : UndefOr String -> PrimIO IDBTransactionOptions


export
%foreign "browser:lambda:x=>x.durability"
prim__durability : IDBTransactionOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.durability = v}"
prim__setDurability : IDBTransactionOptions -> UndefOr String -> PrimIO ()



export
new' :
     (durability : Optional IDBTransactionDurability)
  -> JSIO IDBTransactionOptions
new' a = primJS $ IDBTransactionOptions.prim__new (toFFI a)

export
new : JSIO IDBTransactionOptions
new = primJS $ IDBTransactionOptions.prim__new undef


export
durability :
     {auto _ : Cast t IDBTransactionOptions}
  -> t
  -> Attribute False Optional IDBTransactionDurability
durability v = fromUndefOrPrimNoDefault
                 "IDBTransactionOptions.getdurability"
                 prim__durability
                 prim__setDurability
                 (cast {to = IDBTransactionOptions} v)

