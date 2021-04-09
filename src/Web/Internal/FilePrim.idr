module Web.Internal.FilePrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
  export
  %foreign "browser:lambda:(a,b)=> new Blob(a b)"
  prim__new : UndefOr (Array BlobPart) -> UndefOr BlobPropertyBag -> PrimIO Blob
  
  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : Blob -> PrimIO UInt64
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : Blob -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a)=>x.arrayBuffer(a)"
  prim__arrayBuffer : Blob -> PrimIO (Promise ArrayBuffer)
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.slice(a b c d)"
  prim__slice :  Blob
              -> UndefOr Int64
              -> UndefOr Int64
              -> UndefOr String
              -> PrimIO Blob
  
  export
  %foreign "browser:lambda:(x,a)=>x.stream(a)"
  prim__stream : Blob -> PrimIO ReadableStream
  
  export
  %foreign "browser:lambda:(x,a)=>x.text(a)"
  prim__text : Blob -> PrimIO (Promise String)

namespace File
  
  export
  %foreign "browser:lambda:(a,b,c)=> new File(a b c)"
  prim__new : Array BlobPart -> String -> UndefOr FilePropertyBag -> PrimIO File
  
  export
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : File -> PrimIO Int64
  
  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : File -> PrimIO String

namespace FileList
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : FileList -> PrimIO UInt32

namespace FileReader
  
  export
  %foreign "browser:lambda:()=> new FileReader()"
  prim__new : PrimIO FileReader
  
  export
  %foreign "browser:lambda:x=>x.error"
  prim__error : FileReader -> PrimIO (Nullable DOMException)
  
  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : FileReader -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : FileReader -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : FileReader -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : FileReader -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : FileReader -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : FileReader -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : FileReader -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
  prim__setOnloadend : FileReader -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : FileReader -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : FileReader -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : FileReader -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : FileReader -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : FileReader -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:x=>x.result"
  prim__result : FileReader -> PrimIO (Nullable (Union2 String ArrayBuffer))
  
  export
  %foreign "browser:lambda:(x,a)=>x.abort(a)"
  prim__abort : FileReader -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.readAsArrayBuffer(a b)"
  prim__readAsArrayBuffer : FileReader -> Blob -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.readAsBinaryString(a b)"
  prim__readAsBinaryString : FileReader -> Blob -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.readAsDataURL(a b)"
  prim__readAsDataURL : FileReader -> Blob -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.readAsText(a b c)"
  prim__readAsText : FileReader -> Blob -> UndefOr String -> PrimIO ()

namespace FileReaderSync
  
  export
  %foreign "browser:lambda:()=> new FileReaderSync()"
  prim__new : PrimIO FileReaderSync
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.readAsArrayBuffer(a b)"
  prim__readAsArrayBuffer : FileReaderSync -> Blob -> PrimIO ArrayBuffer
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.readAsBinaryString(a b)"
  prim__readAsBinaryString : FileReaderSync -> Blob -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.readAsDataURL(a b)"
  prim__readAsDataURL : FileReaderSync -> Blob -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.readAsText(a b c)"
  prim__readAsText : FileReaderSync -> Blob -> UndefOr String -> PrimIO String


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  export
  %foreign "browser:lambda:(a,b)=> {type: a,endings: b}"
  prim__new : UndefOr String -> UndefOr EndingType -> PrimIO BlobPropertyBag
  
  export
  %foreign "browser:lambda:x=>x.endings"
  prim__endings : BlobPropertyBag -> PrimIO (UndefOr EndingType)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.endings = v}"
  prim__setEndings : BlobPropertyBag -> UndefOr EndingType -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : BlobPropertyBag -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : BlobPropertyBag -> UndefOr String -> PrimIO ()

namespace FilePropertyBag
  
  export
  %foreign "browser:lambda:(a)=> {lastModified: a}"
  prim__new : UndefOr Int64 -> PrimIO FilePropertyBag
  
  export
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : FilePropertyBag -> PrimIO (UndefOr Int64)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.lastModified = v}"
  prim__setLastModified : FilePropertyBag -> UndefOr Int64 -> PrimIO ()