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
  size a =   primToJSIO "size" $ prim__size (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Blob) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

namespace File
  
  public export
  JSType File where
    parents =  [ Blob , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : File) -> JSIO Int64
  lastModified a =   primToJSIO "lastModified" $ prim__lastModified (toJS a)
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : File) -> JSIO String
  name a =   primToJSIO "name" $ prim__name (toJS a)

namespace FileList
  
  public export
  JSType FileList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : FileList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

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
  error a =   primToJSIO "error" $ prim__error (toJS a)
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : FileReader) -> JSIO UInt16
  readyState a =   primToJSIO "readyState" $ prim__readyState (toJS a)
  
  %foreign "browser:lambda:x=>x.result"
  prim__result : AnyPtr -> PrimIO AnyPtr

  export
  result : (obj : FileReader) -> JSIO (Maybe (NS I [ String , ArrayBuffer ]))
  result a =   primToJSIO "result" $ prim__result (toJS a)
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : FileReader) -> JSIO EventHandler
  onabort a =   primToJSIO "onabort" $ prim__onabort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  setOnabort a b =
    primToJSIO "setOnabort" $ prim__setOnabort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : FileReader) -> JSIO EventHandler
  onerror a =   primToJSIO "onerror" $ prim__onerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  setOnerror a b =
    primToJSIO "setOnerror" $ prim__setOnerror (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  export
  onload : (obj : FileReader) -> JSIO EventHandler
  onload a =   primToJSIO "onload" $ prim__onload (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onload  = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnload : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  setOnload a b =   primToJSIO "setOnload" $ prim__setOnload (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr

  export
  onloadend : (obj : FileReader) -> JSIO EventHandler
  onloadend a =   primToJSIO "onloadend" $ prim__onloadend (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onloadend  = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadend : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  setOnloadend a b =
    primToJSIO "setOnloadend" $ prim__setOnloadend (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  export
  onloadstart : (obj : FileReader) -> JSIO EventHandler
  onloadstart a =   primToJSIO "onloadstart" $ prim__onloadstart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onloadstart  = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadstart : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  setOnloadstart a b =
    primToJSIO "setOnloadstart" $ prim__setOnloadstart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  export
  onprogress : (obj : FileReader) -> JSIO EventHandler
  onprogress a =   primToJSIO "onprogress" $ prim__onprogress (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onprogress  = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnprogress : (obj : FileReader) -> (v : EventHandler) -> JSIO ()
  setOnprogress a b =
    primToJSIO "setOnprogress" $ prim__setOnprogress (toJS a) (toJS b)

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
  endings a =   primToJSIO "endings" $ prim__endings (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.endings  = v}"
  prim__setEndings : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndings : (obj : BlobPropertyBag) -> (v : EndingType) -> JSIO ()
  setEndings a b =
    primToJSIO "setEndings" $ prim__setEndings (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : BlobPropertyBag) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : BlobPropertyBag) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

namespace FilePropertyBag
  
  public export
  JSType FilePropertyBag where
    parents =  [ BlobPropertyBag , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr

  export
  lastModified : (obj : FilePropertyBag) -> JSIO Int64
  lastModified a =   primToJSIO "lastModified" $ prim__lastModified (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lastModified  = v}"
  prim__setLastModified : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLastModified : (obj : FilePropertyBag) -> (v : Int64) -> JSIO ()
  setLastModified a b =
    primToJSIO "setLastModified" $ prim__setLastModified (toJS a) (toJS b)

