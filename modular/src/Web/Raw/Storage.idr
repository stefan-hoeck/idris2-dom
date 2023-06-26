module Web.Raw.Storage

import JS
import Web.Types.Storage


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : Storage -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.clear()"
prim__clear : Storage -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getItem(a)"
prim__getItem : Storage -> String -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,a)=>x.key(a)"
prim__key : Storage -> Bits32 -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,a,b)=>x.setItem(a,b)"
prim__setItem : Storage -> String -> String -> PrimIO ()


export
length : (obj : Storage) -> JSIO Bits32
length a = primJS $ Storage.prim__length a


export
clear : (obj : Storage) -> JSIO ()
clear a = primJS $ Storage.prim__clear a


export
getItem : (obj : Storage) -> (key : String) -> JSIO (Maybe String)
getItem a b = tryJS "Storage.getItem" $ Storage.prim__getItem a b


export
key : (obj : Storage) -> (index : Bits32) -> JSIO (Maybe String)
key a b = tryJS "Storage.key" $ Storage.prim__key a b


export
setItem : (obj : Storage) -> (key : String) -> (value : String) -> JSIO ()
setItem a b c = primJS $ Storage.prim__setItem a b c
