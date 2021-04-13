module Web.Raw.File

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
  new' = primJS $ Blob.prim__new undef undef

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
  slice' a = primJS $ Blob.prim__slice a undef undef undef

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
  new' a b = primJS $ File.prim__new a b undef

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
  onabort : FileReader -> Attribute False Maybe EventHandlerNonNull
  onabort = fromNullablePrim "FileReader.getonabort"
                             prim__onabort
                             prim__setOnabort

  export
  onerror : FileReader -> Attribute False Maybe EventHandlerNonNull
  onerror = fromNullablePrim "FileReader.getonerror"
                             prim__onerror
                             prim__setOnerror

  export
  onload : FileReader -> Attribute False Maybe EventHandlerNonNull
  onload = fromNullablePrim "FileReader.getonload" prim__onload prim__setOnload

  export
  onloadend : FileReader -> Attribute False Maybe EventHandlerNonNull
  onloadend = fromNullablePrim "FileReader.getonloadend"
                               prim__onloadend
                               prim__setOnloadend

  export
  onloadstart : FileReader -> Attribute False Maybe EventHandlerNonNull
  onloadstart = fromNullablePrim "FileReader.getonloadstart"
                                 prim__onloadstart
                                 prim__setOnloadstart

  export
  onprogress : FileReader -> Attribute False Maybe EventHandlerNonNull
  onprogress = fromNullablePrim "FileReader.getonprogress"
                                prim__onprogress
                                prim__setOnprogress

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
  readAsText' a b = primJS $ FileReader.prim__readAsText a b undef

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
  readAsText' a b = primJS $ FileReaderSync.prim__readAsText a b undef


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
  new' = primJS $ BlobPropertyBag.prim__new undef undef

  export
  endings : BlobPropertyBag -> Attribute False Optional EndingType
  endings = fromUndefOrPrimNoDefault "BlobPropertyBag.getendings"
                                     prim__endings
                                     prim__setEndings

  export
  type : BlobPropertyBag -> Attribute True Optional String
  type = fromUndefOrPrim "BlobPropertyBag.gettype" prim__type prim__setType ""

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
  new' = primJS $ FilePropertyBag.prim__new undef

  export
  lastModified : FilePropertyBag -> Attribute False Optional Int64
  lastModified = fromUndefOrPrimNoDefault "FilePropertyBag.getlastModified"
                                          prim__lastModified
                                          prim__setLastModified
