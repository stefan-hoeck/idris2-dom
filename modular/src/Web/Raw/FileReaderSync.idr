module Web.Raw.FileReaderSync

import JS
import Web.Types.Blob
import Web.Types.FileReaderSync


%default total


export
%foreign "browser:lambda:()=> new FileReaderSync()"
prim__new : PrimIO FileReaderSync


export
%foreign "browser:lambda:(x,a)=>x.readAsArrayBuffer(a)"
prim__readAsArrayBuffer : FileReaderSync -> Blob -> PrimIO ArrayBuffer


export
%foreign "browser:lambda:(x,a)=>x.readAsBinaryString(a)"
prim__readAsBinaryString : FileReaderSync -> Blob -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.readAsDataURL(a)"
prim__readAsDataURL : FileReaderSync -> Blob -> PrimIO String


export
%foreign "browser:lambda:(x,a,b)=>x.readAsText(a,b)"
prim__readAsText : FileReaderSync -> Blob -> UndefOr String -> PrimIO String


export
new : JSIO FileReaderSync
new = primJS $ FileReaderSync.prim__new


export
readAsArrayBuffer :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReaderSync)
  -> (blob : t2)
  -> JSIO ArrayBuffer
readAsArrayBuffer a b = primJS $
  FileReaderSync.prim__readAsArrayBuffer a (cast b)


export
readAsBinaryString :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReaderSync)
  -> (blob : t2)
  -> JSIO String
readAsBinaryString a b = primJS $
  FileReaderSync.prim__readAsBinaryString a (cast b)


export
readAsDataURL :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReaderSync)
  -> (blob : t2)
  -> JSIO String
readAsDataURL a b = primJS $ FileReaderSync.prim__readAsDataURL a (cast b)


export
readAsText' :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReaderSync)
  -> (blob : t2)
  -> (encoding : Optional String)
  -> JSIO String
readAsText' a b c = primJS $
  FileReaderSync.prim__readAsText a (cast b) (toFFI c)

export
readAsText :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReaderSync)
  -> (blob : t2)
  -> JSIO String
readAsText a b = primJS $ FileReaderSync.prim__readAsText a (cast b) undef

