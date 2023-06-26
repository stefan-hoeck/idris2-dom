module Web.Raw.Blob

import JS
import Web.Types.Blob
import Web.Types.BlobPropertyBag
import Web.Types.ReadableStream


%default total


export
%foreign "browser:lambda:(a,b)=> new Blob(a,b)"
prim__new :
     UndefOr
       (Array
          (Union13
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
             Blob
             String))
  -> UndefOr BlobPropertyBag
  -> PrimIO Blob


export
%foreign "browser:lambda:x=>x.size"
prim__size : Blob -> PrimIO JSBits64


export
%foreign "browser:lambda:x=>x.type"
prim__type : Blob -> PrimIO String


export
%foreign "browser:lambda:x=>x.arrayBuffer()"
prim__arrayBuffer : Blob -> PrimIO (Promise ArrayBuffer)


export
%foreign "browser:lambda:(x,a,b,c)=>x.slice(a,b,c)"
prim__slice :
     Blob
  -> UndefOr JSInt64
  -> UndefOr JSInt64
  -> UndefOr String
  -> PrimIO Blob


export
%foreign "browser:lambda:x=>x.stream()"
prim__stream : Blob -> PrimIO ReadableStream


export
%foreign "browser:lambda:x=>x.text()"
prim__text : Blob -> PrimIO (Promise String)


export
new' :
     {auto _ : Cast t2 BlobPropertyBag}
  -> (blobParts : Optional
                    (Array
                       (Union13
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
                          Blob
                          String)))
  -> (options : Optional t2)
  -> JSIO Blob
new' a b = primJS $ Blob.prim__new (toFFI a) (optUp b)

export
new : JSIO Blob
new = primJS $ Blob.prim__new undef undef


export
size : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO JSBits64
size a = primJS $ Blob.prim__size (cast a)


export
type : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO String
type a = primJS $ Blob.prim__type (cast a)


export
arrayBuffer :
     {auto _ : Cast t1 Blob}
  -> (obj : t1)
  -> JSIO (Promise ArrayBuffer)
arrayBuffer a = primJS $ Blob.prim__arrayBuffer (cast a)


export
slice' :
     {auto _ : Cast t1 Blob}
  -> (obj : t1)
  -> (start : Optional JSInt64)
  -> (end : Optional JSInt64)
  -> (contentType : Optional String)
  -> JSIO Blob
slice' a b c d = primJS $
  Blob.prim__slice (cast a) (toFFI b) (toFFI c) (toFFI d)

export
slice : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO Blob
slice a = primJS $ Blob.prim__slice (cast a) undef undef undef


export
stream : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO ReadableStream
stream a = primJS $ Blob.prim__stream (cast a)


export
text : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO (Promise String)
text a = primJS $ Blob.prim__text (cast a)

