module Web.Raw.DataTransferItem

import JS
import Web.Types.DataTransferItem
import Web.Types.File
import Web.Types.FunctionStringCallback


%default total


export
%foreign "browser:lambda:x=>x.kind"
prim__kind : DataTransferItem -> PrimIO String


export
%foreign "browser:lambda:x=>x.type"
prim__type : DataTransferItem -> PrimIO String


export
%foreign "browser:lambda:x=>x.getAsFile()"
prim__getAsFile : DataTransferItem -> PrimIO (Nullable File)


export
%foreign "browser:lambda:(x,a)=>x.getAsString(a)"
prim__getAsString :
     DataTransferItem
  -> Nullable FunctionStringCallback
  -> PrimIO ()


export
kind : (obj : DataTransferItem) -> JSIO String
kind a = primJS $ DataTransferItem.prim__kind a


export
type : (obj : DataTransferItem) -> JSIO String
type a = primJS $ DataTransferItem.prim__type a


export
getAsFile : (obj : DataTransferItem) -> JSIO (Maybe File)
getAsFile a = tryJS "DataTransferItem.getAsFile" $
  DataTransferItem.prim__getAsFile a


export
getAsString :
     (obj : DataTransferItem)
  -> (callback : Maybe FunctionStringCallback)
  -> JSIO ()
getAsString a b = primJS $ DataTransferItem.prim__getAsString a (toFFI b)

