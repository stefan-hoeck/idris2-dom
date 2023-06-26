module Web.Raw.Headers

import JS
import Web.Types.Headers


%default total


export
%foreign "browser:lambda:(a)=> new Headers(a)"
prim__new :
     UndefOr (Union2 (Array (Array ByteString)) (Record ByteString ByteString))
  -> PrimIO Headers


export
%foreign "browser:lambda:(x,a,b)=>x.append(a,b)"
prim__append : Headers -> ByteString -> ByteString -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.delete(a)"
prim__delete : Headers -> ByteString -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.get(a)"
prim__get : Headers -> ByteString -> PrimIO (Nullable ByteString)


export
%foreign "browser:lambda:(x,a)=>x.has(a)"
prim__has : Headers -> ByteString -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.set(a,b)"
prim__set : Headers -> ByteString -> ByteString -> PrimIO ()


export
new' :
     (init : Optional
               (HSum [Array (Array ByteString), Record ByteString ByteString]))
  -> JSIO Headers
new' a = primJS $ Headers.prim__new (toFFI a)

export
new : JSIO Headers
new = primJS $ Headers.prim__new undef


export
append :
     (obj : Headers)
  -> (name : ByteString)
  -> (value : ByteString)
  -> JSIO ()
append a b c = primJS $ Headers.prim__append a b c


export
delete : (obj : Headers) -> (name : ByteString) -> JSIO ()
delete a b = primJS $ Headers.prim__delete a b


export
get : (obj : Headers) -> (name : ByteString) -> JSIO (Maybe ByteString)
get a b = tryJS "Headers.get" $ Headers.prim__get a b


export
has : (obj : Headers) -> (name : ByteString) -> JSIO Bool
has a b = tryJS "Headers.has" $ Headers.prim__has a b


export
set : (obj : Headers) -> (name : ByteString) -> (value : ByteString) -> JSIO ()
set a b c = primJS $ Headers.prim__set a b c

