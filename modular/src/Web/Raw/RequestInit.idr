module Web.Raw.RequestInit

import JS
import Web.Types.AbortSignal
import Web.Types.Blob
import Web.Types.FormData
import Web.Types.ReadableStream
import Web.Types.ReferrerPolicy
import Web.Types.RequestCache
import Web.Types.RequestCredentials
import Web.Types.RequestInit
import Web.Types.RequestMode
import Web.Types.RequestRedirect
import Web.Types.URLSearchParams


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l,m)=> ({method: a,headers: b,body: c,referrer: d,referrerPolicy: e,mode: f,credentials: g,cache: h,redirect: i,integrity: j,keepalive: k,signal: l,window: m})"
prim__new :
     UndefOr ByteString
  -> UndefOr (Union2 (Array (Array ByteString)) (Record ByteString ByteString))
  -> UndefOr
       (Nullable
          (Union16
             ReadableStream
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
  -> UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> UndefOr Boolean
  -> UndefOr (Nullable AbortSignal)
  -> UndefOr AnyPtr
  -> PrimIO RequestInit


export
%foreign "browser:lambda:x=>x.body"
prim__body :
     RequestInit
  -> PrimIO
       (UndefOr
          (Nullable
             (Union16
                ReadableStream
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
                String)))



export
%foreign "browser:lambda:(x,v)=>{x.body = v}"
prim__setBody :
     RequestInit
  -> UndefOr
       (Nullable
          (Union16
             ReadableStream
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
%foreign "browser:lambda:x=>x.cache"
prim__cache : RequestInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.cache = v}"
prim__setCache : RequestInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.credentials"
prim__credentials : RequestInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.credentials = v}"
prim__setCredentials : RequestInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.headers"
prim__headers :
     RequestInit
  -> PrimIO
       (UndefOr
          (Union2 (Array (Array ByteString)) (Record ByteString ByteString)))



export
%foreign "browser:lambda:(x,v)=>{x.headers = v}"
prim__setHeaders :
     RequestInit
  -> UndefOr (Union2 (Array (Array ByteString)) (Record ByteString ByteString))
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.integrity"
prim__integrity : RequestInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.integrity = v}"
prim__setIntegrity : RequestInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.keepalive"
prim__keepalive : RequestInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.keepalive = v}"
prim__setKeepalive : RequestInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.method"
prim__method : RequestInit -> PrimIO (UndefOr ByteString)



export
%foreign "browser:lambda:(x,v)=>{x.method = v}"
prim__setMethod : RequestInit -> UndefOr ByteString -> PrimIO ()



export
%foreign "browser:lambda:x=>x.mode"
prim__mode : RequestInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.mode = v}"
prim__setMode : RequestInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.redirect"
prim__redirect : RequestInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.redirect = v}"
prim__setRedirect : RequestInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.referrer"
prim__referrer : RequestInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.referrer = v}"
prim__setReferrer : RequestInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : RequestInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
prim__setReferrerPolicy : RequestInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.signal"
prim__signal : RequestInit -> PrimIO (UndefOr (Nullable AbortSignal))



export
%foreign "browser:lambda:(x,v)=>{x.signal = v}"
prim__setSignal : RequestInit -> UndefOr (Nullable AbortSignal) -> PrimIO ()



export
%foreign "browser:lambda:x=>x.window"
prim__window : RequestInit -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.window = v}"
prim__setWindow : RequestInit -> UndefOr AnyPtr -> PrimIO ()



export
new' :
     (method : Optional ByteString)
  -> (headers : Optional
                  (HSum
                     [Array (Array ByteString), Record ByteString ByteString]))
  -> (body : Optional
               (Maybe
                  (HSum
                     [ ReadableStream
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
  -> (referrer : Optional String)
  -> (referrerPolicy : Optional ReferrerPolicy)
  -> (mode : Optional RequestMode)
  -> (credentials : Optional RequestCredentials)
  -> (cache : Optional RequestCache)
  -> (redirect : Optional RequestRedirect)
  -> (integrity : Optional String)
  -> (keepalive : Optional Bool)
  -> (signal : Optional (Maybe AbortSignal))
  -> (window : Optional Any)
  -> JSIO RequestInit
new' a b c d e f g h i j k l m = primJS $
  RequestInit.prim__new
    (toFFI a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)
    (toFFI i)
    (toFFI j)
    (toFFI k)
    (toFFI l)
    (toFFI m)

export
new : JSIO RequestInit
new = primJS $
  RequestInit.prim__new
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef
    undef


export
body :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional (Maybe
                                 (Union16
                                    ReadableStream
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
body v = fromUndefOrPrimNoDefault
           "RequestInit.getbody"
           prim__body
           prim__setBody
           (cast {to = RequestInit} v)


export
cache :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional RequestCache
cache v = fromUndefOrPrimNoDefault
            "RequestInit.getcache"
            prim__cache
            prim__setCache
            (cast {to = RequestInit} v)


export
credentials :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional RequestCredentials
credentials v = fromUndefOrPrimNoDefault
                  "RequestInit.getcredentials"
                  prim__credentials
                  prim__setCredentials
                  (cast {to = RequestInit} v)


export
headers :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional (Union2
                                 (Array (Array ByteString))
                                 (Record ByteString ByteString))
headers v = fromUndefOrPrimNoDefault
              "RequestInit.getheaders"
              prim__headers
              prim__setHeaders
              (cast {to = RequestInit} v)


export
integrity :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional String
integrity v = fromUndefOrPrimNoDefault
                "RequestInit.getintegrity"
                prim__integrity
                prim__setIntegrity
                (cast {to = RequestInit} v)


export
keepalive : {auto _ : Cast t RequestInit} -> t -> Attribute False Optional Bool
keepalive v = fromUndefOrPrimNoDefault
                "RequestInit.getkeepalive"
                prim__keepalive
                prim__setKeepalive
                (cast {to = RequestInit} v)


export
method :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional ByteString
method v = fromUndefOrPrimNoDefault
             "RequestInit.getmethod"
             prim__method
             prim__setMethod
             (cast {to = RequestInit} v)


export
mode :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional RequestMode
mode v = fromUndefOrPrimNoDefault
           "RequestInit.getmode"
           prim__mode
           prim__setMode
           (cast {to = RequestInit} v)


export
redirect :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional RequestRedirect
redirect v = fromUndefOrPrimNoDefault
               "RequestInit.getredirect"
               prim__redirect
               prim__setRedirect
               (cast {to = RequestInit} v)


export
referrer : {auto _ : Cast t RequestInit} -> t -> Attribute False Optional String
referrer v = fromUndefOrPrimNoDefault
               "RequestInit.getreferrer"
               prim__referrer
               prim__setReferrer
               (cast {to = RequestInit} v)


export
referrerPolicy :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional ReferrerPolicy
referrerPolicy v = fromUndefOrPrimNoDefault
                     "RequestInit.getreferrerPolicy"
                     prim__referrerPolicy
                     prim__setReferrerPolicy
                     (cast {to = RequestInit} v)


export
signal :
     {auto _ : Cast t RequestInit}
  -> t
  -> Attribute False Optional (Maybe AbortSignal)
signal v = fromUndefOrPrimNoDefault
             "RequestInit.getsignal"
             prim__signal
             prim__setSignal
             (cast {to = RequestInit} v)


export
window : {auto _ : Cast t RequestInit} -> t -> Attribute False Optional Any
window v = fromUndefOrPrimNoDefault
             "RequestInit.getwindow"
             prim__window
             prim__setWindow
             (cast {to = RequestInit} v)

