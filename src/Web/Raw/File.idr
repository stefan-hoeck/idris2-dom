module Web.Raw.File

import JS
import Web.Internal.FilePrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob

  export
  new' :
       {auto _ : Cast t2 BlobPropertyBag}
    -> (blobParts : Optional
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
                            String)))
    -> (options : Optional t2)
    -> JSIO Blob
  new' a b = primJS $ Blob.prim__new (toFFI a) (optUp b)

  export
  new : JSIO Blob
  new = primJS $ Blob.prim__new undef undef


  export
  size : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO JSBits64
  size a = primJS $ Blob.prim__size (cast a)


  export
  type : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO String
  type a = primJS $ Blob.prim__type (cast a)


  export
  arrayBuffer :
       {auto _ : Cast t1 Blob}
    -> (obj : t1)
    -> JSIO (Promise ArrayBuffer)
  arrayBuffer a = primJS $ Blob.prim__arrayBuffer (cast a)


  export
  slice' :
       {auto _ : Cast t1 Blob}
    -> (obj : t1)
    -> (start : Optional JSInt64)
    -> (end : Optional JSInt64)
    -> (contentType : Optional String)
    -> JSIO Blob
  slice' a b c d = primJS $
    Blob.prim__slice (cast a) (toFFI b) (toFFI c) (toFFI d)

  export
  slice : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO Blob
  slice a = primJS $ Blob.prim__slice (cast a) undef undef undef


  export
  stream : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO ReadableStream
  stream a = primJS $ Blob.prim__stream (cast a)


  export
  text : {auto _ : Cast t1 Blob} -> (obj : t1) -> JSIO (Promise String)
  text a = primJS $ Blob.prim__text (cast a)



namespace File

  export
  new' :
       {auto _ : Cast t3 FilePropertyBag}
    -> (fileBits : Array
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
    -> (fileName : String)
    -> (options : Optional t3)
    -> JSIO File
  new' a b c = primJS $ File.prim__new a b (optUp c)

  export
  new :
       (fileBits : Array
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
    -> (fileName : String)
    -> JSIO File
  new a b = primJS $ File.prim__new a b undef


  export
  lastModified : (obj : File) -> JSIO JSInt64
  lastModified a = primJS $ File.prim__lastModified a


  export
  name : (obj : File) -> JSIO String
  name a = primJS $ File.prim__name a



namespace FileList

  export
  length : (obj : FileList) -> JSIO Bits32
  length a = primJS $ FileList.prim__length a


  export
  item : (obj : FileList) -> (index : Bits32) -> JSIO (Maybe File)
  item a b = tryJS "FileList.item" $ FileList.prim__item a b



namespace FileReader

  export
  DONE : Bits16
  DONE = 2


  export
  EMPTY : Bits16
  EMPTY = 0


  export
  LOADING : Bits16
  LOADING = 1


  export
  new : JSIO FileReader
  new = primJS $ FileReader.prim__new


  export
  error : (obj : FileReader) -> JSIO (Maybe DOMException)
  error a = tryJS "FileReader.error" $ FileReader.prim__error a


  export
  onabort : FileReader -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim
                "FileReader.getonabort"
                prim__onabort
                prim__setOnabort
                v


  export
  onerror : FileReader -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim
                "FileReader.getonerror"
                prim__onerror
                prim__setOnerror
                v


  export
  onload : FileReader -> Attribute False Maybe EventHandlerNonNull
  onload v = fromNullablePrim
               "FileReader.getonload"
               prim__onload
               prim__setOnload
               v


  export
  onloadend : FileReader -> Attribute False Maybe EventHandlerNonNull
  onloadend v = fromNullablePrim
                  "FileReader.getonloadend"
                  prim__onloadend
                  prim__setOnloadend
                  v


  export
  onloadstart : FileReader -> Attribute False Maybe EventHandlerNonNull
  onloadstart v = fromNullablePrim
                    "FileReader.getonloadstart"
                    prim__onloadstart
                    prim__setOnloadstart
                    v


  export
  onprogress : FileReader -> Attribute False Maybe EventHandlerNonNull
  onprogress v = fromNullablePrim
                   "FileReader.getonprogress"
                   prim__onprogress
                   prim__setOnprogress
                   v


  export
  readyState : (obj : FileReader) -> JSIO Bits16
  readyState a = primJS $ FileReader.prim__readyState a


  export
  result : (obj : FileReader) -> JSIO (Maybe (Union2 String ArrayBuffer))
  result a = tryJS "FileReader.result" $ FileReader.prim__result a


  export
  abort : (obj : FileReader) -> JSIO ()
  abort a = primJS $ FileReader.prim__abort a


  export
  readAsArrayBuffer :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReader)
    -> (blob : t2)
    -> JSIO ()
  readAsArrayBuffer a b = primJS $ FileReader.prim__readAsArrayBuffer a (cast b)


  export
  readAsBinaryString :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReader)
    -> (blob : t2)
    -> JSIO ()
  readAsBinaryString a b = primJS $
    FileReader.prim__readAsBinaryString a (cast b)


  export
  readAsDataURL :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReader)
    -> (blob : t2)
    -> JSIO ()
  readAsDataURL a b = primJS $ FileReader.prim__readAsDataURL a (cast b)


  export
  readAsText' :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReader)
    -> (blob : t2)
    -> (encoding : Optional String)
    -> JSIO ()
  readAsText' a b c = primJS $ FileReader.prim__readAsText a (cast b) (toFFI c)

  export
  readAsText :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReader)
    -> (blob : t2)
    -> JSIO ()
  readAsText a b = primJS $ FileReader.prim__readAsText a (cast b) undef



namespace FileReaderSync

  export
  new : JSIO FileReaderSync
  new = primJS $ FileReaderSync.prim__new


  export
  readAsArrayBuffer :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReaderSync)
    -> (blob : t2)
    -> JSIO ArrayBuffer
  readAsArrayBuffer a b = primJS $
    FileReaderSync.prim__readAsArrayBuffer a (cast b)


  export
  readAsBinaryString :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReaderSync)
    -> (blob : t2)
    -> JSIO String
  readAsBinaryString a b = primJS $
    FileReaderSync.prim__readAsBinaryString a (cast b)


  export
  readAsDataURL :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReaderSync)
    -> (blob : t2)
    -> JSIO String
  readAsDataURL a b = primJS $ FileReaderSync.prim__readAsDataURL a (cast b)


  export
  readAsText' :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReaderSync)
    -> (blob : t2)
    -> (encoding : Optional String)
    -> JSIO String
  readAsText' a b c = primJS $
    FileReaderSync.prim__readAsText a (cast b) (toFFI c)

  export
  readAsText :
       {auto _ : Cast t2 Blob}
    -> (obj : FileReaderSync)
    -> (blob : t2)
    -> JSIO String
  readAsText a b = primJS $ FileReaderSync.prim__readAsText a (cast b) undef





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag

  export
  new' :
       (type : Optional String)
    -> (endings : Optional EndingType)
    -> JSIO BlobPropertyBag
  new' a b = primJS $ BlobPropertyBag.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO BlobPropertyBag
  new = primJS $ BlobPropertyBag.prim__new undef undef


  export
  endings :
       {auto _ : Cast t BlobPropertyBag}
    -> t
    -> Attribute False Optional EndingType
  endings v = fromUndefOrPrimNoDefault
                "BlobPropertyBag.getendings"
                prim__endings
                prim__setEndings
                (cast {to = BlobPropertyBag} v)


  export
  type :
       {auto _ : Cast t BlobPropertyBag}
    -> t
    -> Attribute True Optional String
  type v = fromUndefOrPrim
             "BlobPropertyBag.gettype"
             prim__type
             prim__setType
             ""
             (cast {to = BlobPropertyBag} v)



namespace FilePropertyBag

  export
  new' : (lastModified : Optional JSInt64) -> JSIO FilePropertyBag
  new' a = primJS $ FilePropertyBag.prim__new (toFFI a)

  export
  new : JSIO FilePropertyBag
  new = primJS $ FilePropertyBag.prim__new undef


  export
  lastModified :
       {auto _ : Cast t FilePropertyBag}
    -> t
    -> Attribute False Optional JSInt64
  lastModified v = fromUndefOrPrimNoDefault
                     "FilePropertyBag.getlastModified"
                     prim__lastModified
                     prim__setLastModified
                     (cast {to = FilePropertyBag} v)
