module Web.Raw.File

import JS
import Web.Types.Blob
import Web.Types.File
import Web.Types.FilePropertyBag


%default total


export
%foreign "browser:lambda:(a,b,c)=> new File(a,b,c)"
prim__new :
     Array
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
          String)
  -> String
  -> UndefOr FilePropertyBag
  -> PrimIO File


export
%foreign "browser:lambda:x=>x.lastModified"
prim__lastModified : File -> PrimIO JSInt64


export
%foreign "browser:lambda:x=>x.name"
prim__name : File -> PrimIO String


export
new' :
     {auto _ : Cast t3 FilePropertyBag}
  -> (fileBits : Array
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
  -> (fileName : String)
  -> (options : Optional t3)
  -> JSIO File
new' a b c = primJS $ File.prim__new a b (optUp c)

export
new :
     (fileBits : Array
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
  -> (fileName : String)
  -> JSIO File
new a b = primJS $ File.prim__new a b undef


export
lastModified : (obj : File) -> JSIO JSInt64
lastModified a = primJS $ File.prim__lastModified a


export
name : (obj : File) -> JSIO String
name a = primJS $ File.prim__name a
