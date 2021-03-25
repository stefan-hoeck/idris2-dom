module Web.File

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
  %foreign "browser:lambda:x=>x.size"
  prim__size : AnyPtr -> PrimIO AnyPtr
  
  export
  size : Cast blob Blob => ToJS Blob => (obj : blob) -> IO UInt64
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type : Cast blob Blob => ToJS Blob => (obj : blob) -> IO String

namespace File
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr
  
  export
  lastModified : Cast file File => ToJS File => (obj : file) -> IO Int64
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name : Cast file File => ToJS File => (obj : file) -> IO String

namespace FileList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast fileList FileList
         => ToJS FileList
         => (obj : fileList)
         -> IO UInt32

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
  
  export
  error :  Cast fileReader FileReader
        => ToJS FileReader
        => (obj : fileReader)
        -> IO (Maybe DOMException)
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  export
  readyState :  Cast fileReader FileReader
             => ToJS FileReader
             => (obj : fileReader)
             -> IO UInt16
  
  %foreign "browser:lambda:x=>x.result"
  prim__result : AnyPtr -> PrimIO AnyPtr
  
  export
  result :  Cast fileReader FileReader
         => ToJS FileReader
         => (obj : fileReader)
         -> IO (Maybe (NS I [ String , ArrayBuffer ]))
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr
  
  export
  onabort :  Cast fileReader FileReader
          => ToJS FileReader
          => (obj : fileReader)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnabort :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast fileReader FileReader
             => ToJS FileReader
             => (obj : fileReader)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onerror :  Cast fileReader FileReader
          => ToJS FileReader
          => (obj : fileReader)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnerror :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast fileReader FileReader
             => ToJS FileReader
             => (obj : fileReader)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr
  
  export
  onload :  Cast fileReader FileReader
         => ToJS FileReader
         => (obj : fileReader)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnload :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast fileReader FileReader
            => ToJS FileReader
            => (obj : fileReader)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr
  
  export
  onloadend :  Cast fileReader FileReader
            => ToJS FileReader
            => (obj : fileReader)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnloadend :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast fileReader FileReader
               => ToJS FileReader
               => (obj : fileReader)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr
  
  export
  onloadstart :  Cast fileReader FileReader
              => ToJS FileReader
              => (obj : fileReader)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnloadstart :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast fileReader FileReader
                 => ToJS FileReader
                 => (obj : fileReader)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr
  
  export
  onprogress :  Cast fileReader FileReader
             => ToJS FileReader
             => (obj : fileReader)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnprogress :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast fileReader FileReader
                => ToJS FileReader
                => (obj : fileReader)
                -> (v : eventHandler)
                -> IO ()


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  %foreign "browser:lambda:x=>x.endings"
  prim__endings : AnyPtr -> PrimIO AnyPtr
  
  export
  endings :  Cast blobPropertyBag BlobPropertyBag
          => ToJS BlobPropertyBag
          => (obj : blobPropertyBag)
          -> IO EndingType
  
  %foreign "browser:lambda:(x,v)=>{x.endings = v}"
  prim__setEndings : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEndings :  Cast blobPropertyBag BlobPropertyBag
             => ToJS BlobPropertyBag
             => Cast endingType EndingType
             => ToJS EndingType
             => (obj : blobPropertyBag)
             -> (v : endingType)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast blobPropertyBag BlobPropertyBag
       => ToJS BlobPropertyBag
       => (obj : blobPropertyBag)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast blobPropertyBag BlobPropertyBag
          => ToJS BlobPropertyBag
          => (obj : blobPropertyBag)
          -> (v : String)
          -> IO ()

namespace FilePropertyBag
  
  %foreign "browser:lambda:x=>x.lastModified"
  prim__lastModified : AnyPtr -> PrimIO AnyPtr
  
  export
  lastModified :  Cast filePropertyBag FilePropertyBag
               => ToJS FilePropertyBag
               => (obj : filePropertyBag)
               -> IO Int64
  
  %foreign "browser:lambda:(x,v)=>{x.lastModified = v}"
  prim__setLastModified : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLastModified :  Cast filePropertyBag FilePropertyBag
                  => ToJS FilePropertyBag
                  => (obj : filePropertyBag)
                  -> (v : Int64)
                  -> IO ()



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