module Web.Raw.PluginArray

import JS
import Web.Types.PluginArray


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : PluginArray -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : PluginArray -> Bits32 -> PrimIO (Nullable Object)


export
%foreign "browser:lambda:(x,a)=>x.namedItem(a)"
prim__namedItem : PluginArray -> String -> PrimIO (Nullable Object)


export
%foreign "browser:lambda:x=>x.refresh()"
prim__refresh : PluginArray -> PrimIO ()


export
length : (obj : PluginArray) -> JSIO Bits32
length a = primJS $ PluginArray.prim__length a


export
item : (obj : PluginArray) -> (index : Bits32) -> JSIO (Maybe Object)
item a b = tryJS "PluginArray.item" $ PluginArray.prim__item a b


export
namedItem : (obj : PluginArray) -> (name : String) -> JSIO (Maybe Object)
namedItem a b = tryJS "PluginArray.namedItem" $ PluginArray.prim__namedItem a b


export
refresh : (obj : PluginArray) -> JSIO ()
refresh a = primJS $ PluginArray.prim__refresh a

