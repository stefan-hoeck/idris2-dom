module Web.Raw.Plugin

import JS
import Web.Types.Plugin


%default total


export
%foreign "browser:lambda:x=>x.description"
prim__description : Plugin -> PrimIO ()


export
%foreign "browser:lambda:x=>x.filename"
prim__filename : Plugin -> PrimIO ()


export
%foreign "browser:lambda:x=>x.length"
prim__length : Plugin -> PrimIO ()


export
%foreign "browser:lambda:x=>x.name"
prim__name : Plugin -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : Plugin -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.namedItem(a)"
prim__namedItem : Plugin -> String -> PrimIO ()


export
description : (obj : Plugin) -> JSIO ()
description a = primJS $ Plugin.prim__description a


export
filename : (obj : Plugin) -> JSIO ()
filename a = primJS $ Plugin.prim__filename a


export
length : (obj : Plugin) -> JSIO ()
length a = primJS $ Plugin.prim__length a


export
name : (obj : Plugin) -> JSIO ()
name a = primJS $ Plugin.prim__name a


export
item : (obj : Plugin) -> (index : Bits32) -> JSIO ()
item a b = primJS $ Plugin.prim__item a b


export
namedItem : (obj : Plugin) -> (name : String) -> JSIO ()
namedItem a b = primJS $ Plugin.prim__namedItem a b

