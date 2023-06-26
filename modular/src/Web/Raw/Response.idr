module Web.Raw.Response

import JS
import Web.Types.Blob
import Web.Types.Body
import Web.Types.FormData
import Web.Types.Headers
import Web.Types.ReadableStream
import Web.Types.Response
import Web.Types.ResponseInit
import Web.Types.ResponseType
import Web.Types.URLSearchParams


%default total


export
%foreign "browser:lambda:(a,b)=> new Response(a,b)"
prim__new :
     UndefOr
       (Nullable
          (Union16
             ReadableStream
             Blob
             Int8Array
             Int16Array
             Int32Array
             UInt8Array
             UInt8Array
             UInt8Array
             UInt8ClampedArray
             Float32Array
             Float64Array
             DataView
             ArrayBuffer
             FormData
             URLSearchParams
             String))
  -> UndefOr ResponseInit
  -> PrimIO Response


export
%foreign "browser:lambda:x=>x.error()"
prim__error : PrimIO Response


export
%foreign "browser:lambda:(a,b)=>Response.redirect(a,b)"
prim__redirect : String -> UndefOr Bits16 -> PrimIO Response


export
%foreign "browser:lambda:x=>x.headers"
prim__headers : Response -> PrimIO Headers


export
%foreign "browser:lambda:x=>x.ok"
prim__ok : Response -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.redirected"
prim__redirected : Response -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.status"
prim__status : Response -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.statusText"
prim__statusText : Response -> PrimIO ByteString


export
%foreign "browser:lambda:x=>x.type"
prim__type : Response -> PrimIO String


export
%foreign "browser:lambda:x=>x.url"
prim__url : Response -> PrimIO String


export
%foreign "browser:lambda:x=>x.clone()"
prim__clone : Response -> PrimIO Response


export
new' :
     {auto _ : Cast t2 ResponseInit}
  -> (body : Optional
               (Maybe
                  (HSum
                     [ ReadableStream
                     , Blob
                     , Int8Array
                     , Int16Array
                     , Int32Array
                     , UInt8Array
                     , UInt8Array
                     , UInt8Array
                     , UInt8ClampedArray
                     , Float32Array
                     , Float64Array
                     , DataView
                     , ArrayBuffer
                     , FormData
                     , URLSearchParams
                     , String
                     ])))
  -> (init : Optional t2)
  -> JSIO Response
new' a b = primJS $ Response.prim__new (toFFI a) (optUp b)

export
new : JSIO Response
new = primJS $ Response.prim__new undef undef


export
error : JSIO Response
error = primJS $ Response.prim__error


export
redirect' : (url : String) -> (status : Optional Bits16) -> JSIO Response
redirect' a b = primJS $ Response.prim__redirect a (toFFI b)

export
redirect : (url : String) -> JSIO Response
redirect a = primJS $ Response.prim__redirect a undef


export
headers : (obj : Response) -> JSIO Headers
headers a = primJS $ Response.prim__headers a


export
ok : (obj : Response) -> JSIO Bool
ok a = tryJS "Response.ok" $ Response.prim__ok a


export
redirected : (obj : Response) -> JSIO Bool
redirected a = tryJS "Response.redirected" $ Response.prim__redirected a


export
status : (obj : Response) -> JSIO Bits16
status a = primJS $ Response.prim__status a


export
statusText : (obj : Response) -> JSIO ByteString
statusText a = primJS $ Response.prim__statusText a


export
type : (obj : Response) -> JSIO ResponseType
type a = tryJS "Response.type" $ Response.prim__type a


export
url : (obj : Response) -> JSIO String
url a = primJS $ Response.prim__url a


export
clone : (obj : Response) -> JSIO Response
clone a = primJS $ Response.prim__clone a

