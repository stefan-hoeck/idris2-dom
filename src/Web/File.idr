module Web.File
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
  public export
  JSVal Blob where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr

  export
  size : (obj : Blob) -> IO UInt64
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Blob) -> IO String

namespace File
  
  public export
  JSVal File where
    parents =  [ Blob , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : File) -> IO Int64
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : File) -> IO String

namespace FileList
  
  public export
  JSVal FileList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : FileList) -> IO UInt32

namespace FileReader
  
  public export
  JSVal FileReader where
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
  error : (obj : FileReader) -> IO (Maybe DOMException)
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : FileReader) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.result"
  prim__result : AnyPtr -> PrimIO AnyPtr

  export
  result : (obj : FileReader) -> IO (Maybe (NS I [ String , ArrayBuffer ]))
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : FileReader) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : FileReader) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : FileReader) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : FileReader) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  export
  onload : (obj : FileReader) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onload  = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnload : (obj : FileReader) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr

  export
  onloadend : (obj : FileReader) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadend  = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadend : (obj : FileReader) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  export
  onloadstart : (obj : FileReader) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadstart  = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadstart : (obj : FileReader) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  export
  onprogress : (obj : FileReader) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onprogress  = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnprogress : (obj : FileReader) -> (v : EventHandler) -> IO ()

namespace FileReaderSync
  
  public export
  JSVal FileReaderSync where
    parents =  [ JSObject ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  public export
  JSVal BlobPropertyBag where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.endings"
  prim__endings : AnyPtr -> PrimIO AnyPtr

  export
  endings : (obj : BlobPropertyBag) -> IO EndingType

  %foreign "browser:lambda:(x,v)=>{x.endings  = v}"
  prim__setEndings : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndings : (obj : BlobPropertyBag) -> (v : EndingType) -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : BlobPropertyBag) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : BlobPropertyBag) -> (v : String) -> IO ()

namespace FilePropertyBag
  
  public export
  JSVal FilePropertyBag where
    parents =  [ BlobPropertyBag , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : FilePropertyBag) -> IO Int64

  %foreign "browser:lambda:(x,v)=>{x.lastModified  = v}"
  prim__setLastModified : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLastModified : (obj : FilePropertyBag) -> (v : Int64) -> IO ()

