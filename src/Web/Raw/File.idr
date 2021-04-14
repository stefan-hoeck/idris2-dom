module Web.Raw.File
 
import JS
import Web.Internal.FilePrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Blob
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem BlobPropertyBag (Types t1)}
      -> (blobParts : Optional (Array (Union13 Int8Array
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
      -> (options : Optional t1)
      -> JSIO Blob
  new a b = primJS $ Blob.prim__new (toFFI a) (optUp b)

  export
  new' : JSIO Blob
  new' = primJS $ Blob.prim__new undef undef
  
  export
  size :  JSType t1
       => {auto 0 _ : Elem Blob (Types t1)}
       -> (obj : t1)
       -> JSIO UInt64
  size a = primJS $ Blob.prim__size (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem Blob (Types t1)}
       -> (obj : t1)
       -> JSIO String
  type a = primJS $ Blob.prim__type (up a)
  
  export
  arrayBuffer :  JSType t1
              => {auto 0 _ : Elem Blob (Types t1)}
              -> (obj : t1)
              -> JSIO (Promise ArrayBuffer)
  arrayBuffer a = primJS $ Blob.prim__arrayBuffer (up a)
  
  export
  slice :  JSType t1
        => {auto 0 _ : Elem Blob (Types t1)}
        -> (obj : t1)
        -> (start : Optional Int64)
        -> (end : Optional Int64)
        -> (contentType : Optional String)
        -> JSIO Blob
  slice a b c d = primJS $ Blob.prim__slice (up a) (toFFI b) (toFFI c) (toFFI d)

  export
  slice' :  JSType t1
         => {auto 0 _ : Elem Blob (Types t1)}
         -> (obj : t1)
         -> JSIO Blob
  slice' a = primJS $ Blob.prim__slice (up a) undef undef undef
  
  export
  stream :  JSType t1
         => {auto 0 _ : Elem Blob (Types t1)}
         -> (obj : t1)
         -> JSIO ReadableStream
  stream a = primJS $ Blob.prim__stream (up a)
  
  export
  text :  JSType t1
       => {auto 0 _ : Elem Blob (Types t1)}
       -> (obj : t1)
       -> JSIO (Promise String)
  text a = primJS $ Blob.prim__text (up a)

namespace File
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem FilePropertyBag (Types t1)}
      -> (fileBits : Array (Union13 Int8Array
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
      -> (options : Optional t1)
      -> JSIO File
  new a b c = primJS $ File.prim__new a b (optUp c)

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
  lastModified :  JSType t1
               => {auto 0 _ : Elem File (Types t1)}
               -> (obj : t1)
               -> JSIO Int64
  lastModified a = primJS $ File.prim__lastModified (up a)
  
  export
  name :  JSType t1
       => {auto 0 _ : Elem File (Types t1)}
       -> (obj : t1)
       -> JSIO String
  name a = primJS $ File.prim__name (up a)

namespace FileList
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem FileList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ FileList.prim__length (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem FileList (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe File)
  item a b = tryJS "FileList.item" $ FileList.prim__item (up a) b

namespace FileReader
  
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
  error :  JSType t1
        => {auto 0 _ : Elem FileReader (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe DOMException)
  error a = tryJS "FileReader.error" $ FileReader.prim__error (up a)
  
  export
  onabort :  JSType t
          => {auto 0 _ : Elem FileReader (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim "FileReader.getonabort"
                               prim__onabort
                               prim__setOnabort
                               (v :> FileReader)
  
  export
  onerror :  JSType t
          => {auto 0 _ : Elem FileReader (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "FileReader.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> FileReader)
  
  export
  onload :  JSType t
         => {auto 0 _ : Elem FileReader (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onload v = fromNullablePrim "FileReader.getonload"
                              prim__onload
                              prim__setOnload
                              (v :> FileReader)
  
  export
  onloadend :  JSType t
            => {auto 0 _ : Elem FileReader (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onloadend v = fromNullablePrim "FileReader.getonloadend"
                                 prim__onloadend
                                 prim__setOnloadend
                                 (v :> FileReader)
  
  export
  onloadstart :  JSType t
              => {auto 0 _ : Elem FileReader (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  onloadstart v = fromNullablePrim "FileReader.getonloadstart"
                                   prim__onloadstart
                                   prim__setOnloadstart
                                   (v :> FileReader)
  
  export
  onprogress :  JSType t
             => {auto 0 _ : Elem FileReader (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onprogress v = fromNullablePrim "FileReader.getonprogress"
                                  prim__onprogress
                                  prim__setOnprogress
                                  (v :> FileReader)
  
  export
  readyState :  JSType t1
             => {auto 0 _ : Elem FileReader (Types t1)}
             -> (obj : t1)
             -> JSIO UInt16
  readyState a = primJS $ FileReader.prim__readyState (up a)
  
  export
  result :  JSType t1
         => {auto 0 _ : Elem FileReader (Types t1)}
         -> (obj : t1)
         -> JSIO (Maybe (Union2 String ArrayBuffer))
  result a = tryJS "FileReader.result" $ FileReader.prim__result (up a)
  
  export
  abort :  JSType t1
        => {auto 0 _ : Elem FileReader (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  abort a = primJS $ FileReader.prim__abort (up a)
  
  export
  readAsArrayBuffer :  JSType t1
                    => JSType t2
                    => {auto 0 _ : Elem FileReader (Types t1)}
                    -> {auto 0 _ : Elem Blob (Types t2)}
                    -> (obj : t1)
                    -> (blob : t2)
                    -> JSIO ()
  readAsArrayBuffer a b = primJS
                        $ FileReader.prim__readAsArrayBuffer (up a) (up b)
  
  export
  readAsBinaryString :  JSType t1
                     => JSType t2
                     => {auto 0 _ : Elem FileReader (Types t1)}
                     -> {auto 0 _ : Elem Blob (Types t2)}
                     -> (obj : t1)
                     -> (blob : t2)
                     -> JSIO ()
  readAsBinaryString a b = primJS
                         $ FileReader.prim__readAsBinaryString (up a) (up b)
  
  export
  readAsDataURL :  JSType t1
                => JSType t2
                => {auto 0 _ : Elem FileReader (Types t1)}
                -> {auto 0 _ : Elem Blob (Types t2)}
                -> (obj : t1)
                -> (blob : t2)
                -> JSIO ()
  readAsDataURL a b = primJS $ FileReader.prim__readAsDataURL (up a) (up b)
  
  export
  readAsText :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem FileReader (Types t1)}
             -> {auto 0 _ : Elem Blob (Types t2)}
             -> (obj : t1)
             -> (blob : t2)
             -> (encoding : Optional String)
             -> JSIO ()
  readAsText a b c = primJS
                   $ FileReader.prim__readAsText (up a) (up b) (toFFI c)

  export
  readAsText' :  JSType t1
              => JSType t2
              => {auto 0 _ : Elem FileReader (Types t1)}
              -> {auto 0 _ : Elem Blob (Types t2)}
              -> (obj : t1)
              -> (blob : t2)
              -> JSIO ()
  readAsText' a b = primJS $ FileReader.prim__readAsText (up a) (up b) undef

namespace FileReaderSync
  
  export
  new : JSIO FileReaderSync
  new = primJS $ FileReaderSync.prim__new 
  
  export
  readAsArrayBuffer :  JSType t1
                    => JSType t2
                    => {auto 0 _ : Elem FileReaderSync (Types t1)}
                    -> {auto 0 _ : Elem Blob (Types t2)}
                    -> (obj : t1)
                    -> (blob : t2)
                    -> JSIO ArrayBuffer
  readAsArrayBuffer a b = primJS
                        $ FileReaderSync.prim__readAsArrayBuffer (up a) (up b)
  
  export
  readAsBinaryString :  JSType t1
                     => JSType t2
                     => {auto 0 _ : Elem FileReaderSync (Types t1)}
                     -> {auto 0 _ : Elem Blob (Types t2)}
                     -> (obj : t1)
                     -> (blob : t2)
                     -> JSIO String
  readAsBinaryString a b = primJS
                         $ FileReaderSync.prim__readAsBinaryString (up a) (up b)
  
  export
  readAsDataURL :  JSType t1
                => JSType t2
                => {auto 0 _ : Elem FileReaderSync (Types t1)}
                -> {auto 0 _ : Elem Blob (Types t2)}
                -> (obj : t1)
                -> (blob : t2)
                -> JSIO String
  readAsDataURL a b = primJS $ FileReaderSync.prim__readAsDataURL (up a) (up b)
  
  export
  readAsText :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem FileReaderSync (Types t1)}
             -> {auto 0 _ : Elem Blob (Types t2)}
             -> (obj : t1)
             -> (blob : t2)
             -> (encoding : Optional String)
             -> JSIO String
  readAsText a b c = primJS
                   $ FileReaderSync.prim__readAsText (up a) (up b) (toFFI c)

  export
  readAsText' :  JSType t1
              => JSType t2
              => {auto 0 _ : Elem FileReaderSync (Types t1)}
              -> {auto 0 _ : Elem Blob (Types t2)}
              -> (obj : t1)
              -> (blob : t2)
              -> JSIO String
  readAsText' a b = primJS $ FileReaderSync.prim__readAsText (up a) (up b) undef


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace BlobPropertyBag
  
  export
  new :  (type : Optional String)
      -> (endings : Optional EndingType)
      -> JSIO BlobPropertyBag
  new a b = primJS $ BlobPropertyBag.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO BlobPropertyBag
  new' = primJS $ BlobPropertyBag.prim__new undef undef
  
  export
  endings :  JSType t
          => {auto 0 _ : Elem BlobPropertyBag (Types t)}
          -> t
          -> Attribute False Optional EndingType
  endings v = fromUndefOrPrimNoDefault "BlobPropertyBag.getendings"
                                       prim__endings
                                       prim__setEndings
                                       (v :> BlobPropertyBag)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem BlobPropertyBag (Types t)}
       -> t
       -> Attribute True Optional String
  type v = fromUndefOrPrim "BlobPropertyBag.gettype"
                           prim__type
                           prim__setType
                           ""
                           (v :> BlobPropertyBag)

namespace FilePropertyBag
  
  export
  new : (lastModified : Optional Int64) -> JSIO FilePropertyBag
  new a = primJS $ FilePropertyBag.prim__new (toFFI a)

  export
  new' : JSIO FilePropertyBag
  new' = primJS $ FilePropertyBag.prim__new undef
  
  export
  lastModified :  JSType t
               => {auto 0 _ : Elem FilePropertyBag (Types t)}
               -> t
               -> Attribute False Optional Int64
  lastModified v = fromUndefOrPrimNoDefault "FilePropertyBag.getlastModified"
                                            prim__lastModified
                                            prim__setLastModified
                                            (v :> FilePropertyBag)
