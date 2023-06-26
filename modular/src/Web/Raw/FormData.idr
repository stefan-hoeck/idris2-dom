module Web.Raw.FormData

import JS
import Web.Types.Blob
import Web.Types.File
import Web.Types.FormData
import Web.Types.HTMLFormElement


%default total


export
%foreign "browser:lambda:(a)=> new FormData(a)"
prim__new : UndefOr HTMLFormElement -> PrimIO FormData


export
%foreign "browser:lambda:(x,a,b)=>x.append(a,b)"
prim__append : FormData -> String -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.append(a,b,c)"
prim__append1 : FormData -> String -> Blob -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.delete(a)"
prim__delete : FormData -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getAll(a)"
prim__getAll : FormData -> String -> PrimIO (Array (Union2 File String))


export
%foreign "browser:lambda:(x,a)=>x.get(a)"
prim__get : FormData -> String -> PrimIO (Nullable (Union2 File String))


export
%foreign "browser:lambda:(x,a)=>x.has(a)"
prim__has : FormData -> String -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.set(a,b)"
prim__set : FormData -> String -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.set(a,b,c)"
prim__set1 : FormData -> String -> Blob -> UndefOr String -> PrimIO ()


export
new' : (form : Optional HTMLFormElement) -> JSIO FormData
new' a = primJS $ FormData.prim__new (toFFI a)

export
new : JSIO FormData
new = primJS $ FormData.prim__new undef


export
append : (obj : FormData) -> (name : String) -> (value : String) -> JSIO ()
append a b c = primJS $ FormData.prim__append a b c


export
append1' :
     {auto _ : Cast t3 Blob}
  -> (obj : FormData)
  -> (name : String)
  -> (blobValue : t3)
  -> (filename : Optional String)
  -> JSIO ()
append1' a b c d = primJS $ FormData.prim__append1 a b (cast c) (toFFI d)

export
append1 :
     {auto _ : Cast t3 Blob}
  -> (obj : FormData)
  -> (name : String)
  -> (blobValue : t3)
  -> JSIO ()
append1 a b c = primJS $ FormData.prim__append1 a b (cast c) undef


export
delete : (obj : FormData) -> (name : String) -> JSIO ()
delete a b = primJS $ FormData.prim__delete a b


export
getAll :
     (obj : FormData)
  -> (name : String)
  -> JSIO (Array (Union2 File String))
getAll a b = primJS $ FormData.prim__getAll a b


export
get : (obj : FormData) -> (name : String) -> JSIO (Maybe (HSum [File, String]))
get a b = tryJS "FormData.get" $ FormData.prim__get a b


export
has : (obj : FormData) -> (name : String) -> JSIO Bool
has a b = tryJS "FormData.has" $ FormData.prim__has a b


export
set : (obj : FormData) -> (name : String) -> (value : String) -> JSIO ()
set a b c = primJS $ FormData.prim__set a b c


export
set1' :
     {auto _ : Cast t3 Blob}
  -> (obj : FormData)
  -> (name : String)
  -> (blobValue : t3)
  -> (filename : Optional String)
  -> JSIO ()
set1' a b c d = primJS $ FormData.prim__set1 a b (cast c) (toFFI d)

export
set1 :
     {auto _ : Cast t3 Blob}
  -> (obj : FormData)
  -> (name : String)
  -> (blobValue : t3)
  -> JSIO ()
set1 a b c = primJS $ FormData.prim__set1 a b (cast c) undef

