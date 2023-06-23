module Web.Internal.FilePrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
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



namespace File
  
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



namespace FileList
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : FileList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : FileList -> Bits32 -> PrimIO (Nullable File)



namespace FileReader
  
  export
  %foreign "browser:lambda:()=> new FileReader()"
  prim__new : PrimIO FileReader

  
  export
  %foreign "browser:lambda:x=>x.error"
  prim__error : FileReader -> PrimIO (Nullable DOMException)

  
  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : FileReader -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : FileReader -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : FileReader -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : FileReader -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
  prim__setOnloadend : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : FileReader -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : FileReader -> PrimIO (Nullable EventHandlerNonNull)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : FileReader -> PrimIO Bits16

  
  export
  %foreign "browser:lambda:x=>x.result"
  prim__result : FileReader -> PrimIO (Nullable (Union2 String ArrayBuffer))

  
  export
  %foreign "browser:lambda:x=>x.abort()"
  prim__abort : FileReader -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.readAsArrayBuffer(a)"
  prim__readAsArrayBuffer : FileReader -> Blob -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.readAsBinaryString(a)"
  prim__readAsBinaryString : FileReader -> Blob -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.readAsDataURL(a)"
  prim__readAsDataURL : FileReader -> Blob -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.readAsText(a,b)"
  prim__readAsText : FileReader -> Blob -> UndefOr String -> PrimIO ()



namespace FileReaderSync
  
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





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  export
  %foreign "browser:lambda:(a,b)=> ({type: a,endings: b})"
  prim__new : UndefOr String -> UndefOr String -> PrimIO BlobPropertyBag

  
  export
  %foreign "browser:lambda:x=>x.endings"
  prim__endings : BlobPropertyBag -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.endings = v}"
  prim__setEndings : BlobPropertyBag -> UndefOr String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : BlobPropertyBag -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : BlobPropertyBag -> UndefOr String -> PrimIO ()




namespace FilePropertyBag
  
  export
  %foreign "browser:lambda:(a)=> ({lastModified: a})"
  prim__new : UndefOr JSInt64 -> PrimIO FilePropertyBag

  
  export
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : FilePropertyBag -> PrimIO (UndefOr JSInt64)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.lastModified = v}"
  prim__setLastModified : FilePropertyBag -> UndefOr JSInt64 -> PrimIO ()




