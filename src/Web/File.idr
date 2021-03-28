module Web.File
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
  public export
  JSType Blob where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : Blob) -> JSIO UInt64
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Blob) -> JSIO String

namespace File
  
  public export
  JSType File where
    parents =  [ Blob , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : File) -> JSIO Int64
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : File) -> JSIO String

namespace FileList
  
  public export
  JSType FileList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : FileList) -> JSIO UInt32

namespace FileReader
  
  public export
  JSType FileReader where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
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

  export
  error : (obj : FileReader) -> JSIO (Maybe DOMException)
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : FileReader) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.result"
  prim__result : AnyPtr -> PrimIO AnyPtr

  export
  result : (obj : FileReader) -> JSIO (Maybe (NS I [ String , ArrayBuffer ]))
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : FileReader) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : FileReader) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  export
  onload : (obj : FileReader) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onload  = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnload : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr

  export
  onloadend : (obj : FileReader) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadend  = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadend : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  export
  onloadstart : (obj : FileReader) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadstart  = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadstart : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  export
  onprogress : (obj : FileReader) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onprogress  = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnprogress : (obj : FileReader) -> (v : EventHandler) -> JSIO ()

namespace FileReaderSync
  
  public export
  JSType FileReaderSync where
    parents =  [ JSObject ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  public export
  JSType BlobPropertyBag where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.endings"
  prim__endings : AnyPtr -> PrimIO AnyPtr

  export
  endings : (obj : BlobPropertyBag) -> JSIO EndingType

  %foreign "browser:lambda:(x,v)=>{x.endings  = v}"
  prim__setEndings : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndings : (obj : BlobPropertyBag) -> (v : EndingType) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : BlobPropertyBag) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : BlobPropertyBag) -> (v : String) -> JSIO ()

namespace FilePropertyBag
  
  public export
  JSType FilePropertyBag where
    parents =  [ BlobPropertyBag , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : FilePropertyBag) -> JSIO Int64

  %foreign "browser:lambda:(x,v)=>{x.lastModified  = v}"
  prim__setLastModified : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLastModified : (obj : FilePropertyBag) -> (v : Int64) -> JSIO ()

