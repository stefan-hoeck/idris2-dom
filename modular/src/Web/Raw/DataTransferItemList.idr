module Web.Raw.DataTransferItemList

import JS
import Web.Types.DataTransferItem
import Web.Types.DataTransferItemList
import Web.Types.File


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : DataTransferItemList -> Bits32 -> PrimIO DataTransferItem


export
%foreign "browser:lambda:x=>x.length"
prim__length : DataTransferItemList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a,b)=>x.add(a,b)"
prim__add :
     DataTransferItemList
  -> String
  -> String
  -> PrimIO (Nullable DataTransferItem)


export
%foreign "browser:lambda:(x,a)=>x.add(a)"
prim__add1 : DataTransferItemList -> File -> PrimIO (Nullable DataTransferItem)


export
%foreign "browser:lambda:x=>x.clear()"
prim__clear : DataTransferItemList -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.remove(a)"
prim__remove : DataTransferItemList -> Bits32 -> PrimIO ()


export
get : (obj : DataTransferItemList) -> (index : Bits32) -> JSIO DataTransferItem
get a b = primJS $ DataTransferItemList.prim__get a b


export
length : (obj : DataTransferItemList) -> JSIO Bits32
length a = primJS $ DataTransferItemList.prim__length a


export
add :
     (obj : DataTransferItemList)
  -> (data_ : String)
  -> (type : String)
  -> JSIO (Maybe DataTransferItem)
add a b c = tryJS "DataTransferItemList.add" $
  DataTransferItemList.prim__add a b c


export
add1 :
     (obj : DataTransferItemList)
  -> (data_ : File)
  -> JSIO (Maybe DataTransferItem)
add1 a b = tryJS "DataTransferItemList.add1" $
  DataTransferItemList.prim__add1 a b


export
clear : (obj : DataTransferItemList) -> JSIO ()
clear a = primJS $ DataTransferItemList.prim__clear a


export
remove : (obj : DataTransferItemList) -> (index : Bits32) -> JSIO ()
remove a b = primJS $ DataTransferItemList.prim__remove a b

