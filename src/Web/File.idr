module Web.File
 
import JS
import Web.Internal.FilePrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
  public export
  JSType Blob where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (blobParts : UndefOr (Array BlobPart))
      -> (options : UndefOr BlobPropertyBag)
      -> JSIO Blob
  new a b = primJS $ Blob.prim__new a b
  
  export
  size : (obj : Blob) -> JSIO UInt64
  size a = primJS $ Blob.prim__size a
  
  export
  type : (obj : Blob) -> JSIO String
  type a = primJS $ Blob.prim__type a
  
  export
  arrayBuffer : (obj : Blob) -> JSIO (Promise ArrayBuffer)
  arrayBuffer a = primJS $ Blob.prim__arrayBuffer a
  
  export
  slice :  (obj : Blob)
        -> (start : UndefOr Int64)
        -> (end : UndefOr Int64)
        -> (contentType : UndefOr String)
        -> JSIO Blob
  slice a b c d = primJS $ Blob.prim__slice a b c d
  
  export
  stream : (obj : Blob) -> JSIO ReadableStream
  stream a = primJS $ Blob.prim__stream a
  
  export
  text : (obj : Blob) -> JSIO (Promise String)
  text a = primJS $ Blob.prim__text a

namespace File
  
  public export
  JSType File where
    parents =  [ Blob , Object ]

    mixins =  []
  
  export
  new :  (fileBits : Array BlobPart)
      -> (fileName : String)
      -> (options : UndefOr FilePropertyBag)
      -> JSIO File
  new a b c = primJS $ File.prim__new a b c
  
  export
  lastModified : (obj : File) -> JSIO Int64
  lastModified a = primJS $ File.prim__lastModified a
  
  export
  name : (obj : File) -> JSIO String
  name a = primJS $ File.prim__name a

namespace FileList
  
  public export
  JSType FileList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : FileList) -> JSIO UInt32
  length a = primJS $ FileList.prim__length a

namespace FileReader
  
  public export
  JSType FileReader where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  public export
  DONE : UInt16
  DONE = 2
  
  public export
  EMPTY : UInt16
  EMPTY = 0
  
  public export
  LOADING : UInt16
  LOADING = 1
  
  export
  new : JSIO FileReader
  new = primJS $ FileReader.prim__new 
  
  export
  error : (obj : FileReader) -> JSIO (Nullable DOMException)
  error a = primJS $ FileReader.prim__error a
  
  export
  onabort : (obj : FileReader) -> JSIO EventHandler
  onabort a = primJS $ FileReader.prim__onabort a
  
  export
  setOnabort : (obj : FileReader) -> (value : EventHandler) -> JSIO ()
  setOnabort a b = primJS $ FileReader.prim__setOnabort a b
  
  export
  onerror : (obj : FileReader) -> JSIO EventHandler
  onerror a = primJS $ FileReader.prim__onerror a
  
  export
  setOnerror : (obj : FileReader) -> (value : EventHandler) -> JSIO ()
  setOnerror a b = primJS $ FileReader.prim__setOnerror a b
  
  export
  onload : (obj : FileReader) -> JSIO EventHandler
  onload a = primJS $ FileReader.prim__onload a
  
  export
  setOnload : (obj : FileReader) -> (value : EventHandler) -> JSIO ()
  setOnload a b = primJS $ FileReader.prim__setOnload a b
  
  export
  onloadend : (obj : FileReader) -> JSIO EventHandler
  onloadend a = primJS $ FileReader.prim__onloadend a
  
  export
  setOnloadend : (obj : FileReader) -> (value : EventHandler) -> JSIO ()
  setOnloadend a b = primJS $ FileReader.prim__setOnloadend a b
  
  export
  onloadstart : (obj : FileReader) -> JSIO EventHandler
  onloadstart a = primJS $ FileReader.prim__onloadstart a
  
  export
  setOnloadstart : (obj : FileReader) -> (value : EventHandler) -> JSIO ()
  setOnloadstart a b = primJS $ FileReader.prim__setOnloadstart a b
  
  export
  onprogress : (obj : FileReader) -> JSIO EventHandler
  onprogress a = primJS $ FileReader.prim__onprogress a
  
  export
  setOnprogress : (obj : FileReader) -> (value : EventHandler) -> JSIO ()
  setOnprogress a b = primJS $ FileReader.prim__setOnprogress a b
  
  export
  readyState : (obj : FileReader) -> JSIO UInt16
  readyState a = primJS $ FileReader.prim__readyState a
  
  export
  result : (obj : FileReader) -> JSIO (Nullable (Union2 String ArrayBuffer))
  result a = primJS $ FileReader.prim__result a
  
  export
  abort : (obj : FileReader) -> JSIO ()
  abort a = primJS $ FileReader.prim__abort a
  
  export
  readAsArrayBuffer : (obj : FileReader) -> (blob : Blob) -> JSIO ()
  readAsArrayBuffer a b = primJS $ FileReader.prim__readAsArrayBuffer a b
  
  export
  readAsBinaryString : (obj : FileReader) -> (blob : Blob) -> JSIO ()
  readAsBinaryString a b = primJS $ FileReader.prim__readAsBinaryString a b
  
  export
  readAsDataURL : (obj : FileReader) -> (blob : Blob) -> JSIO ()
  readAsDataURL a b = primJS $ FileReader.prim__readAsDataURL a b
  
  export
  readAsText :  (obj : FileReader)
             -> (blob : Blob)
             -> (encoding : UndefOr String)
             -> JSIO ()
  readAsText a b c = primJS $ FileReader.prim__readAsText a b c

namespace FileReaderSync
  
  public export
  JSType FileReaderSync where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO FileReaderSync
  new = primJS $ FileReaderSync.prim__new 
  
  export
  readAsArrayBuffer :  (obj : FileReaderSync)
                    -> (blob : Blob)
                    -> JSIO ArrayBuffer
  readAsArrayBuffer a b = primJS $ FileReaderSync.prim__readAsArrayBuffer a b
  
  export
  readAsBinaryString : (obj : FileReaderSync) -> (blob : Blob) -> JSIO String
  readAsBinaryString a b = primJS $ FileReaderSync.prim__readAsBinaryString a b
  
  export
  readAsDataURL : (obj : FileReaderSync) -> (blob : Blob) -> JSIO String
  readAsDataURL a b = primJS $ FileReaderSync.prim__readAsDataURL a b
  
  export
  readAsText :  (obj : FileReaderSync)
             -> (blob : Blob)
             -> (encoding : UndefOr String)
             -> JSIO String
  readAsText a b c = primJS $ FileReaderSync.prim__readAsText a b c


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  public export
  JSType BlobPropertyBag where
    parents =  [ Object ]

    mixins =  []
  
  export
  endings : (obj : BlobPropertyBag) -> JSIO (UndefOr EndingType)
  endings a = primJS $ BlobPropertyBag.prim__endings a
  
  export
  setEndings :  (obj : BlobPropertyBag)
             -> (value : UndefOr EndingType)
             -> JSIO ()
  setEndings a b = primJS $ BlobPropertyBag.prim__setEndings a b
  
  export
  type : (obj : BlobPropertyBag) -> JSIO (UndefOr String)
  type a = primJS $ BlobPropertyBag.prim__type a
  
  export
  setType : (obj : BlobPropertyBag) -> (value : UndefOr String) -> JSIO ()
  setType a b = primJS $ BlobPropertyBag.prim__setType a b

namespace FilePropertyBag
  
  public export
  JSType FilePropertyBag where
    parents =  [ BlobPropertyBag , Object ]

    mixins =  []
  
  export
  lastModified : (obj : FilePropertyBag) -> JSIO (UndefOr Int64)
  lastModified a = primJS $ FilePropertyBag.prim__lastModified a
  
  export
  setLastModified :  (obj : FilePropertyBag)
                  -> (value : UndefOr Int64)
                  -> JSIO ()
  setLastModified a b = primJS $ FilePropertyBag.prim__setLastModified a b
