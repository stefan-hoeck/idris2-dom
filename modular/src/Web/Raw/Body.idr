module Web.Raw.Body

import JS
import Web.Types.Blob
import Web.Types.Body
import Web.Types.FormData
import Web.Types.ReadableStream


%default total


export
%foreign "browser:lambda:x=>x.body"
prim__body : Body -> PrimIO (Nullable ReadableStream)


export
%foreign "browser:lambda:x=>x.bodyUsed"
prim__bodyUsed : Body -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.arrayBuffer()"
prim__arrayBuffer : Body -> PrimIO (Promise ArrayBuffer)


export
%foreign "browser:lambda:x=>x.blob()"
prim__blob : Body -> PrimIO (Promise Blob)


export
%foreign "browser:lambda:x=>x.formData()"
prim__formData : Body -> PrimIO (Promise FormData)


export
%foreign "browser:lambda:x=>x.json()"
prim__json : Body -> PrimIO (Promise AnyPtr)


export
%foreign "browser:lambda:x=>x.text()"
prim__text : Body -> PrimIO (Promise String)


export
body : {auto _ : Cast t1 Body} -> (obj : t1) -> JSIO (Maybe ReadableStream)
body a = tryJS "Body.body" $ Body.prim__body (cast a)


export
bodyUsed : {auto _ : Cast t1 Body} -> (obj : t1) -> JSIO Bool
bodyUsed a = tryJS "Body.bodyUsed" $ Body.prim__bodyUsed (cast a)


export
arrayBuffer :
     {auto _ : Cast t1 Body}
  -> (obj : t1)
  -> JSIO (Promise ArrayBuffer)
arrayBuffer a = primJS $ Body.prim__arrayBuffer (cast a)


export
blob : {auto _ : Cast t1 Body} -> (obj : t1) -> JSIO (Promise Blob)
blob a = primJS $ Body.prim__blob (cast a)


export
formData : {auto _ : Cast t1 Body} -> (obj : t1) -> JSIO (Promise FormData)
formData a = primJS $ Body.prim__formData (cast a)


export
json : {auto _ : Cast t1 Body} -> (obj : t1) -> JSIO (Promise AnyPtr)
json a = primJS $ Body.prim__json (cast a)


export
text : {auto _ : Cast t1 Body} -> (obj : t1) -> JSIO (Promise String)
text a = primJS $ Body.prim__text (cast a)
