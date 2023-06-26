module Web.Raw.DOMTokenList

import JS
import Web.Types.DOMTokenList


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : DOMTokenList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.value"
prim__value : DOMTokenList -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : DOMTokenList -> String -> PrimIO ()



export
%foreign "browser:lambda:(x,va)=>x.add(...va())"
prim__add : DOMTokenList -> IO (Array String) -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.contains(a)"
prim__contains : DOMTokenList -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : DOMTokenList -> Bits32 -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,va)=>x.remove(...va())"
prim__remove : DOMTokenList -> IO (Array String) -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.replace(a,b)"
prim__replace : DOMTokenList -> String -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.supports(a)"
prim__supports : DOMTokenList -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.toggle(a,b)"
prim__toggle : DOMTokenList -> String -> UndefOr Boolean -> PrimIO Boolean


export
length : (obj : DOMTokenList) -> JSIO Bits32
length a = primJS $ DOMTokenList.prim__length a


export
value : DOMTokenList -> Attribute True Prelude.id String
value v = fromPrim "DOMTokenList.getvalue" prim__value prim__setValue v


export
add : (obj : DOMTokenList) -> (tokens : List String) -> JSIO ()
add a b = primJS $ DOMTokenList.prim__add a (toFFI b)


export
contains : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
contains a b = tryJS "DOMTokenList.contains" $ DOMTokenList.prim__contains a b


export
item : (obj : DOMTokenList) -> (index : Bits32) -> JSIO (Maybe String)
item a b = tryJS "DOMTokenList.item" $ DOMTokenList.prim__item a b


export
remove : (obj : DOMTokenList) -> (tokens : List String) -> JSIO ()
remove a b = primJS $ DOMTokenList.prim__remove a (toFFI b)


export
replace :
     (obj : DOMTokenList)
  -> (token : String)
  -> (newToken : String)
  -> JSIO Bool
replace a b c = tryJS "DOMTokenList.replace" $ DOMTokenList.prim__replace a b c


export
supports : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
supports a b = tryJS "DOMTokenList.supports" $ DOMTokenList.prim__supports a b


export
toggle' :
     (obj : DOMTokenList)
  -> (token : String)
  -> (force : Optional Bool)
  -> JSIO Bool
toggle' a b c = tryJS "DOMTokenList.toggle'" $
  DOMTokenList.prim__toggle a b (toFFI c)

export
toggle : (obj : DOMTokenList) -> (token : String) -> JSIO Bool
toggle a b = tryJS "DOMTokenList.toggle" $ DOMTokenList.prim__toggle a b undef
