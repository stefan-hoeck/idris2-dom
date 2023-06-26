module Web.Raw.URLSearchParams

import JS
import Web.Types.URLSearchParams


%default total


export
%foreign "browser:lambda:(a)=> new URLSearchParams(a)"
prim__new :
     UndefOr (Union3 (Array (Array String)) (Record String String) String)
  -> PrimIO URLSearchParams


export
%foreign "browser:lambda:(x,a,b)=>x.append(a,b)"
prim__append : URLSearchParams -> String -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.delete(a)"
prim__delete : URLSearchParams -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getAll(a)"
prim__getAll : URLSearchParams -> String -> PrimIO (Array String)


export
%foreign "browser:lambda:(x,a)=>x.get(a)"
prim__get : URLSearchParams -> String -> PrimIO (Nullable String)


export
%foreign "browser:lambda:(x,a)=>x.has(a)"
prim__has : URLSearchParams -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.set(a,b)"
prim__set : URLSearchParams -> String -> String -> PrimIO ()


export
%foreign "browser:lambda:x=>x.sort()"
prim__sort : URLSearchParams -> PrimIO ()


export
%foreign "browser:lambda:x=>x.toString()"
prim__toString : URLSearchParams -> PrimIO String


export
new' :
     (init : Optional
               (HSum [Array (Array String), Record String String, String]))
  -> JSIO URLSearchParams
new' a = primJS $ URLSearchParams.prim__new (toFFI a)

export
new : JSIO URLSearchParams
new = primJS $ URLSearchParams.prim__new undef


export
append :
     (obj : URLSearchParams)
  -> (name : String)
  -> (value : String)
  -> JSIO ()
append a b c = primJS $ URLSearchParams.prim__append a b c


export
delete : (obj : URLSearchParams) -> (name : String) -> JSIO ()
delete a b = primJS $ URLSearchParams.prim__delete a b


export
getAll : (obj : URLSearchParams) -> (name : String) -> JSIO (Array String)
getAll a b = primJS $ URLSearchParams.prim__getAll a b


export
get : (obj : URLSearchParams) -> (name : String) -> JSIO (Maybe String)
get a b = tryJS "URLSearchParams.get" $ URLSearchParams.prim__get a b


export
has : (obj : URLSearchParams) -> (name : String) -> JSIO Bool
has a b = tryJS "URLSearchParams.has" $ URLSearchParams.prim__has a b


export
set : (obj : URLSearchParams) -> (name : String) -> (value : String) -> JSIO ()
set a b c = primJS $ URLSearchParams.prim__set a b c


export
sort : (obj : URLSearchParams) -> JSIO ()
sort a = primJS $ URLSearchParams.prim__sort a


export
toString : (obj : URLSearchParams) -> JSIO String
toString a = primJS $ URLSearchParams.prim__toString a
