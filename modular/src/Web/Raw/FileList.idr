module Web.Raw.FileList

import JS
import Web.Types.File
import Web.Types.FileList


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : FileList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : FileList -> Bits32 -> PrimIO (Nullable File)


export
length : (obj : FileList) -> JSIO Bits32
length a = primJS $ FileList.prim__length a


export
item : (obj : FileList) -> (index : Bits32) -> JSIO (Maybe File)
item a b = tryJS "FileList.item" $ FileList.prim__item a b

