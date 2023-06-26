module Web.Raw.MediaList

import JS
import Web.Types.MediaList


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : MediaList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.mediaText"
prim__mediaText : MediaList -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.mediaText = v}"
prim__setMediaText : MediaList -> String -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.appendMedium(a)"
prim__appendMedium : MediaList -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.deleteMedium(a)"
prim__deleteMedium : MediaList -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : MediaList -> Bits32 -> PrimIO (Nullable String)


export
length : (obj : MediaList) -> JSIO Bits32
length a = primJS $ MediaList.prim__length a


export
mediaText : MediaList -> Attribute True Prelude.id String
mediaText v = fromPrim
                "MediaList.getmediaText"
                prim__mediaText
                prim__setMediaText
                v


export
appendMedium : (obj : MediaList) -> (medium : String) -> JSIO ()
appendMedium a b = primJS $ MediaList.prim__appendMedium a b


export
deleteMedium : (obj : MediaList) -> (medium : String) -> JSIO ()
deleteMedium a b = primJS $ MediaList.prim__deleteMedium a b


export
item : (obj : MediaList) -> (index : Bits32) -> JSIO (Maybe String)
item a b = tryJS "MediaList.item" $ MediaList.prim__item a b
