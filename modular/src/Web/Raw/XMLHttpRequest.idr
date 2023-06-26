module Web.Raw.XMLHttpRequest

import JS
import Web.Types.Blob
import Web.Types.Document
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.FormData
import Web.Types.URLSearchParams
import Web.Types.XMLHttpRequest
import Web.Types.XMLHttpRequestEventTarget
import Web.Types.XMLHttpRequestResponseType
import Web.Types.XMLHttpRequestUpload


%default total


export
DONE : Bits16
DONE = 4


export
HEADERS_RECEIVED : Bits16
HEADERS_RECEIVED = 2


export
LOADING : Bits16
LOADING = 3


export
OPENED : Bits16
OPENED = 1


export
UNSENT : Bits16
UNSENT = 0


export
%foreign "browser:lambda:()=> new XMLHttpRequest()"
prim__new : PrimIO XMLHttpRequest


export
%foreign "browser:lambda:x=>x.onreadystatechange"
prim__onreadystatechange :
     XMLHttpRequest
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
prim__setOnreadystatechange :
     XMLHttpRequest
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : XMLHttpRequest -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.response"
prim__response : XMLHttpRequest -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.responseText"
prim__responseText : XMLHttpRequest -> PrimIO String


export
%foreign "browser:lambda:x=>x.responseType"
prim__responseType : XMLHttpRequest -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.responseType = v}"
prim__setResponseType : XMLHttpRequest -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.responseURL"
prim__responseURL : XMLHttpRequest -> PrimIO String


export
%foreign "browser:lambda:x=>x.responseXML"
prim__responseXML : XMLHttpRequest -> PrimIO (Nullable Document)


export
%foreign "browser:lambda:x=>x.status"
prim__status : XMLHttpRequest -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.statusText"
prim__statusText : XMLHttpRequest -> PrimIO ByteString


export
%foreign "browser:lambda:x=>x.timeout"
prim__timeout : XMLHttpRequest -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.timeout = v}"
prim__setTimeout : XMLHttpRequest -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.upload"
prim__upload : XMLHttpRequest -> PrimIO XMLHttpRequestUpload


export
%foreign "browser:lambda:x=>x.withCredentials"
prim__withCredentials : XMLHttpRequest -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.withCredentials = v}"
prim__setWithCredentials : XMLHttpRequest -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.abort()"
prim__abort : XMLHttpRequest -> PrimIO ()


export
%foreign "browser:lambda:x=>x.getAllResponseHeaders()"
prim__getAllResponseHeaders : XMLHttpRequest -> PrimIO ByteString


export
%foreign "browser:lambda:(x,a)=>x.getResponseHeader(a)"
prim__getResponseHeader :
     XMLHttpRequest
  -> ByteString
  -> PrimIO (Nullable ByteString)


export
%foreign "browser:lambda:(x,a,b)=>x.open(a,b)"
prim__open : XMLHttpRequest -> ByteString -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.open(a,b,c,d,e)"
prim__open1 :
     XMLHttpRequest
  -> ByteString
  -> String
  -> Boolean
  -> UndefOr (Nullable String)
  -> UndefOr (Nullable String)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.overrideMimeType(a)"
prim__overrideMimeType : XMLHttpRequest -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.send(a)"
prim__send :
     XMLHttpRequest
  -> UndefOr
       (Nullable
          (Union16
             Document
             Blob
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
             FormData
             URLSearchParams
             String))
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.setRequestHeader(a,b)"
prim__setRequestHeader : XMLHttpRequest -> ByteString -> ByteString -> PrimIO ()


export
new : JSIO XMLHttpRequest
new = primJS $ XMLHttpRequest.prim__new


export
onreadystatechange : XMLHttpRequest -> Attribute False Maybe EventHandlerNonNull
onreadystatechange v = fromNullablePrim
                         "XMLHttpRequest.getonreadystatechange"
                         prim__onreadystatechange
                         prim__setOnreadystatechange
                         v


export
readyState : (obj : XMLHttpRequest) -> JSIO Bits16
readyState a = primJS $ XMLHttpRequest.prim__readyState a


export
response : (obj : XMLHttpRequest) -> JSIO Any
response a = tryJS "XMLHttpRequest.response" $ XMLHttpRequest.prim__response a


export
responseText : (obj : XMLHttpRequest) -> JSIO String
responseText a = primJS $ XMLHttpRequest.prim__responseText a


export
responseType :
     XMLHttpRequest
  -> Attribute True Prelude.id XMLHttpRequestResponseType
responseType v = fromPrim
                   "XMLHttpRequest.getresponseType"
                   prim__responseType
                   prim__setResponseType
                   v


export
responseURL : (obj : XMLHttpRequest) -> JSIO String
responseURL a = primJS $ XMLHttpRequest.prim__responseURL a


export
responseXML : (obj : XMLHttpRequest) -> JSIO (Maybe Document)
responseXML a = tryJS "XMLHttpRequest.responseXML" $
  XMLHttpRequest.prim__responseXML a


export
status : (obj : XMLHttpRequest) -> JSIO Bits16
status a = primJS $ XMLHttpRequest.prim__status a


export
statusText : (obj : XMLHttpRequest) -> JSIO ByteString
statusText a = primJS $ XMLHttpRequest.prim__statusText a


export
timeout : XMLHttpRequest -> Attribute True Prelude.id Bits32
timeout v = fromPrim
              "XMLHttpRequest.gettimeout"
              prim__timeout
              prim__setTimeout
              v


export
upload : (obj : XMLHttpRequest) -> JSIO XMLHttpRequestUpload
upload a = primJS $ XMLHttpRequest.prim__upload a


export
withCredentials : XMLHttpRequest -> Attribute True Prelude.id Bool
withCredentials v = fromPrim
                      "XMLHttpRequest.getwithCredentials"
                      prim__withCredentials
                      prim__setWithCredentials
                      v


export
abort : (obj : XMLHttpRequest) -> JSIO ()
abort a = primJS $ XMLHttpRequest.prim__abort a


export
getAllResponseHeaders : (obj : XMLHttpRequest) -> JSIO ByteString
getAllResponseHeaders a = primJS $ XMLHttpRequest.prim__getAllResponseHeaders a


export
getResponseHeader :
     (obj : XMLHttpRequest)
  -> (name : ByteString)
  -> JSIO (Maybe ByteString)
getResponseHeader a b = tryJS "XMLHttpRequest.getResponseHeader" $
  XMLHttpRequest.prim__getResponseHeader a b


export
open_ :
     (obj : XMLHttpRequest)
  -> (method : ByteString)
  -> (url : String)
  -> JSIO ()
open_ a b c = primJS $ XMLHttpRequest.prim__open a b c


export
open1' :
     (obj : XMLHttpRequest)
  -> (method : ByteString)
  -> (url : String)
  -> (async : Bool)
  -> (username : Optional (Maybe String))
  -> (password : Optional (Maybe String))
  -> JSIO ()
open1' a b c d e f = primJS $
  XMLHttpRequest.prim__open1 a b c (toFFI d) (toFFI e) (toFFI f)

export
open1 :
     (obj : XMLHttpRequest)
  -> (method : ByteString)
  -> (url : String)
  -> (async : Bool)
  -> JSIO ()
open1 a b c d = primJS $ XMLHttpRequest.prim__open1 a b c (toFFI d) undef undef


export
overrideMimeType : (obj : XMLHttpRequest) -> (mime : String) -> JSIO ()
overrideMimeType a b = primJS $ XMLHttpRequest.prim__overrideMimeType a b


export
send' :
     (obj : XMLHttpRequest)
  -> (body : Optional
               (Maybe
                  (HSum
                     [ Document
                     , Blob
                     , Int8Array
                     , Int16Array
                     , Int32Array
                     , UInt8Array
                     , UInt8Array
                     , UInt8Array
                     , UInt8ClampedArray
                     , Float32Array
                     , Float64Array
                     , DataView
                     , ArrayBuffer
                     , FormData
                     , URLSearchParams
                     , String
                     ])))
  -> JSIO ()
send' a b = primJS $ XMLHttpRequest.prim__send a (toFFI b)

export
send : (obj : XMLHttpRequest) -> JSIO ()
send a = primJS $ XMLHttpRequest.prim__send a undef


export
setRequestHeader :
     (obj : XMLHttpRequest)
  -> (name : ByteString)
  -> (value : ByteString)
  -> JSIO ()
setRequestHeader a b c = primJS $ XMLHttpRequest.prim__setRequestHeader a b c

