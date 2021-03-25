module Web.File

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

namespace File
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

namespace FileList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace FileReader
  
  public export
  DONE : UInt16
  DONE = 2
  
  public export
  EMPTY : UInt16
  EMPTY = 0o0
  
  public export
  LOADING : UInt16
  LOADING = 1
  
  %foreign "browser:lambda:x=>x.error"
  prim__error : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.result"
  prim__result : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  %foreign "browser:lambda:x=>x.endings"
  prim__endings : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.endings = v}"
  prim__setEndings : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace FilePropertyBag
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lastModified = v}"
  prim__setLastModified : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast File Blob where
  cast = believe_me

export
Cast FilePropertyBag BlobPropertyBag where
  cast = believe_me

export
Cast FileReader EventTarget where
  cast = believe_me