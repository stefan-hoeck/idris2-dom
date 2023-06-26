module Web.Raw.IDBDatabase

import JS
import Web.Types.DOMStringList
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.IDBDatabase
import Web.Types.IDBObjectStore
import Web.Types.IDBObjectStoreParameters
import Web.Types.IDBTransaction
import Web.Types.IDBTransactionMode
import Web.Types.IDBTransactionOptions


%default total


export
%foreign "browser:lambda:x=>x.name"
prim__name : IDBDatabase -> PrimIO String


export
%foreign "browser:lambda:x=>x.objectStoreNames"
prim__objectStoreNames : IDBDatabase -> PrimIO DOMStringList


export
%foreign "browser:lambda:x=>x.onabort"
prim__onabort : IDBDatabase -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onabort = v}"
prim__setOnabort : IDBDatabase -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onclose"
prim__onclose : IDBDatabase -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onclose = v}"
prim__setOnclose : IDBDatabase -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror : IDBDatabase -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror : IDBDatabase -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onversionchange"
prim__onversionchange : IDBDatabase -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onversionchange = v}"
prim__setOnversionchange :
     IDBDatabase
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.version"
prim__version : IDBDatabase -> PrimIO JSBits64


export
%foreign "browser:lambda:x=>x.close()"
prim__close : IDBDatabase -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.createObjectStore(a,b)"
prim__createObjectStore :
     IDBDatabase
  -> String
  -> UndefOr IDBObjectStoreParameters
  -> PrimIO IDBObjectStore


export
%foreign "browser:lambda:(x,a)=>x.deleteObjectStore(a)"
prim__deleteObjectStore : IDBDatabase -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.transaction(a,b,c)"
prim__transaction :
     IDBDatabase
  -> Union2 String (Array String)
  -> UndefOr String
  -> UndefOr IDBTransactionOptions
  -> PrimIO IDBTransaction


export
name : (obj : IDBDatabase) -> JSIO String
name a = primJS $ IDBDatabase.prim__name a


export
objectStoreNames : (obj : IDBDatabase) -> JSIO DOMStringList
objectStoreNames a = primJS $ IDBDatabase.prim__objectStoreNames a


export
onabort : IDBDatabase -> Attribute False Maybe EventHandlerNonNull
onabort v = fromNullablePrim
              "IDBDatabase.getonabort"
              prim__onabort
              prim__setOnabort
              v


export
onclose : IDBDatabase -> Attribute False Maybe EventHandlerNonNull
onclose v = fromNullablePrim
              "IDBDatabase.getonclose"
              prim__onclose
              prim__setOnclose
              v


export
onerror : IDBDatabase -> Attribute False Maybe EventHandlerNonNull
onerror v = fromNullablePrim
              "IDBDatabase.getonerror"
              prim__onerror
              prim__setOnerror
              v


export
onversionchange : IDBDatabase -> Attribute False Maybe EventHandlerNonNull
onversionchange v = fromNullablePrim
                      "IDBDatabase.getonversionchange"
                      prim__onversionchange
                      prim__setOnversionchange
                      v


export
version : (obj : IDBDatabase) -> JSIO JSBits64
version a = primJS $ IDBDatabase.prim__version a


export
close : (obj : IDBDatabase) -> JSIO ()
close a = primJS $ IDBDatabase.prim__close a


export
createObjectStore' :
     {auto _ : Cast t3 IDBObjectStoreParameters}
  -> (obj : IDBDatabase)
  -> (name : String)
  -> (options : Optional t3)
  -> JSIO IDBObjectStore
createObjectStore' a b c = primJS $
  IDBDatabase.prim__createObjectStore a b (optUp c)

export
createObjectStore :
     (obj : IDBDatabase)
  -> (name : String)
  -> JSIO IDBObjectStore
createObjectStore a b = primJS $ IDBDatabase.prim__createObjectStore a b undef


export
deleteObjectStore : (obj : IDBDatabase) -> (name : String) -> JSIO ()
deleteObjectStore a b = primJS $ IDBDatabase.prim__deleteObjectStore a b


export
transaction' :
     {auto _ : Cast t4 IDBTransactionOptions}
  -> (obj : IDBDatabase)
  -> (storeNames : HSum [String, Array String])
  -> (mode : Optional IDBTransactionMode)
  -> (options : Optional t4)
  -> JSIO IDBTransaction
transaction' a b c d = primJS $
  IDBDatabase.prim__transaction a (toFFI b) (toFFI c) (optUp d)

export
transaction :
     (obj : IDBDatabase)
  -> (storeNames : HSum [String, Array String])
  -> JSIO IDBTransaction
transaction a b = primJS $ IDBDatabase.prim__transaction a (toFFI b) undef undef

