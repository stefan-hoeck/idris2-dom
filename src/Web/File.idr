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
  new :  (blobParts : Optional (Array (Union13 Int8Array
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
      -> (options : Optional BlobPropertyBag)
      -> JSIO Blob
  new a b = primJS $ Blob.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO Blob
  new' = new Undef Undef
  
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
        -> (start : Optional Int64)
        -> (end : Optional Int64)
        -> (contentType : Optional String)
        -> JSIO Blob
  slice a b c d = primJS $ Blob.prim__slice a (toFFI b) (toFFI c) (toFFI d)

  export
  slice' : (obj : Blob) -> JSIO Blob
  slice' a = slice a Undef Undef Undef
  
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
  new :  (fileBits : Array (Union13 Int8Array
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
      -> (options : Optional FilePropertyBag)
      -> JSIO File
  new a b c = primJS $ File.prim__new a b (toFFI c)

  export
  new' :  (fileBits : Array (Union13 Int8Array
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
  new' a b = new a b Undef
  
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
  
  export
  item : (obj : FileList) -> (index : UInt32) -> JSIO (Maybe File)
  item a b = tryJS "FileList.item" $ FileList.prim__item a b

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
  error : (obj : FileReader) -> JSIO (Maybe DOMException)
  error a = tryJS "FileReader.error" $ FileReader.prim__error a
  
  export
  onabort : (obj : FileReader) -> JSIO (Maybe EventHandlerNonNull)
  onabort a = tryJS "FileReader.onabort" $ FileReader.prim__onabort a
  
  export
  setOnabort :  (obj : FileReader)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnabort a b = primJS $ FileReader.prim__setOnabort a (toFFI b)
  
  export
  onerror : (obj : FileReader) -> JSIO (Maybe EventHandlerNonNull)
  onerror a = tryJS "FileReader.onerror" $ FileReader.prim__onerror a
  
  export
  setOnerror :  (obj : FileReader)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnerror a b = primJS $ FileReader.prim__setOnerror a (toFFI b)
  
  export
  onload : (obj : FileReader) -> JSIO (Maybe EventHandlerNonNull)
  onload a = tryJS "FileReader.onload" $ FileReader.prim__onload a
  
  export
  setOnload :  (obj : FileReader)
            -> (value : Maybe EventHandlerNonNull)
            -> JSIO ()
  setOnload a b = primJS $ FileReader.prim__setOnload a (toFFI b)
  
  export
  onloadend : (obj : FileReader) -> JSIO (Maybe EventHandlerNonNull)
  onloadend a = tryJS "FileReader.onloadend" $ FileReader.prim__onloadend a
  
  export
  setOnloadend :  (obj : FileReader)
               -> (value : Maybe EventHandlerNonNull)
               -> JSIO ()
  setOnloadend a b = primJS $ FileReader.prim__setOnloadend a (toFFI b)
  
  export
  onloadstart : (obj : FileReader) -> JSIO (Maybe EventHandlerNonNull)
  onloadstart a = tryJS "FileReader.onloadstart" $ FileReader.prim__onloadstart a
  
  export
  setOnloadstart :  (obj : FileReader)
                 -> (value : Maybe EventHandlerNonNull)
                 -> JSIO ()
  setOnloadstart a b = primJS $ FileReader.prim__setOnloadstart a (toFFI b)
  
  export
  onprogress : (obj : FileReader) -> JSIO (Maybe EventHandlerNonNull)
  onprogress a = tryJS "FileReader.onprogress" $ FileReader.prim__onprogress a
  
  export
  setOnprogress :  (obj : FileReader)
                -> (value : Maybe EventHandlerNonNull)
                -> JSIO ()
  setOnprogress a b = primJS $ FileReader.prim__setOnprogress a (toFFI b)
  
  export
  readyState : (obj : FileReader) -> JSIO UInt16
  readyState a = primJS $ FileReader.prim__readyState a
  
  export
  result : (obj : FileReader) -> JSIO (Maybe (Union2 String ArrayBuffer))
  result a = tryJS "FileReader.result" $ FileReader.prim__result a
  
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
             -> (encoding : Optional String)
             -> JSIO ()
  readAsText a b c = primJS $ FileReader.prim__readAsText a b (toFFI c)

  export
  readAsText' : (obj : FileReader) -> (blob : Blob) -> JSIO ()
  readAsText' a b = readAsText a b Undef

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
             -> (encoding : Optional String)
             -> JSIO String
  readAsText a b c = primJS $ FileReaderSync.prim__readAsText a b (toFFI c)

  export
  readAsText' : (obj : FileReaderSync) -> (blob : Blob) -> JSIO String
  readAsText' a b = readAsText a b Undef


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  public export
  JSType BlobPropertyBag where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (type : Optional String)
      -> (endings : Optional EndingType)
      -> JSIO BlobPropertyBag
  new a b = primJS $ BlobPropertyBag.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO BlobPropertyBag
  new' = new Undef Undef
  
  export
  endings : (obj : BlobPropertyBag) -> JSIO $ Optional EndingType
  endings a = tryJS "BlobPropertyBag.endings" $ BlobPropertyBag.prim__endings a
  
  export
  setEndings :  (obj : BlobPropertyBag)
             -> (value : Optional EndingType)
             -> JSIO ()
  setEndings a b = primJS $ BlobPropertyBag.prim__setEndings a (toFFI b)

  export
  setEndings' : (obj : BlobPropertyBag) -> JSIO ()
  setEndings' a = setEndings a Undef
  
  export
  type : (obj : BlobPropertyBag) -> JSIO $ Optional String
  type a = tryJS "BlobPropertyBag.type" $ BlobPropertyBag.prim__type a
  
  export
  setType : (obj : BlobPropertyBag) -> (value : Optional String) -> JSIO ()
  setType a b = primJS $ BlobPropertyBag.prim__setType a (toFFI b)

  export
  setType' : (obj : BlobPropertyBag) -> JSIO ()
  setType' a = setType a Undef

namespace FilePropertyBag
  
  public export
  JSType FilePropertyBag where
    parents =  [ BlobPropertyBag , Object ]

    mixins =  []
  
  export
  new : (lastModified : Optional Int64) -> JSIO FilePropertyBag
  new a = primJS $ FilePropertyBag.prim__new (toFFI a)

  export
  new' : JSIO FilePropertyBag
  new' = new Undef
  
  export
  lastModified : (obj : FilePropertyBag) -> JSIO $ Optional Int64
  lastModified a = tryJS "FilePropertyBag.lastModified" $ FilePropertyBag.prim__lastModified a
  
  export
  setLastModified :  (obj : FilePropertyBag)
                  -> (value : Optional Int64)
                  -> JSIO ()
  setLastModified a b = primJS $ FilePropertyBag.prim__setLastModified a
                                                                       (toFFI b)

  export
  setLastModified' : (obj : FilePropertyBag) -> JSIO ()
  setLastModified' a = setLastModified a Undef
