module Web.Internal.FetchPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Headers
  
  export
  %foreign "browser:lambda:(a)=> new Headers(a)"
  prim__new :  UndefOr (Union2 (Array (Array ByteString))
                               (Record ByteString ByteString))
            -> PrimIO Headers
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.append(a b)"
  prim__append : Headers -> ByteString -> ByteString -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.delete(a)"
  prim__delete : Headers -> ByteString -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.get(a)"
  prim__get : Headers -> ByteString -> PrimIO (Nullable ByteString)
  
  export
  %foreign "browser:lambda:(x,a)=>x.has(a)"
  prim__has : Headers -> ByteString -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.set(a b)"
  prim__set : Headers -> ByteString -> ByteString -> PrimIO ()

namespace Request
  
  export
  %foreign "browser:lambda:(a,b)=> new Request(a b)"
  prim__new : Union2 Request String -> UndefOr RequestInit -> PrimIO Request
  
  export
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.destination"
  prim__destination : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : Request -> PrimIO Headers
  
  export
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.isHistoryNavigation"
  prim__isHistoryNavigation : Request -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.isReloadNavigation"
  prim__isReloadNavigation : Request -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : Request -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.method"
  prim__method : Request -> PrimIO ByteString
  
  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : Request -> PrimIO AbortSignal
  
  export
  %foreign "browser:lambda:x=>x.url"
  prim__url : Request -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.clone()"
  prim__clone : Request -> PrimIO Request

namespace Response
  
  export
  %foreign "browser:lambda:(a,b)=> new Response(a b)"
  prim__new :  UndefOr (Nullable (Union16 ReadableStream
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
            -> UndefOr ResponseInit
            -> PrimIO Response
  
  export
  %foreign "browser:lambda:x=>x.error()"
  prim__error : PrimIO Response
  
  export
  %foreign "browser:lambda:(a,b)=>Response.redirect(a b)"
  prim__redirect : String -> UndefOr UInt16 -> PrimIO Response
  
  export
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : Response -> PrimIO Headers
  
  export
  %foreign "browser:lambda:x=>x.ok"
  prim__ok : Response -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.redirected"
  prim__redirected : Response -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.status"
  prim__status : Response -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : Response -> PrimIO ByteString
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : Response -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.url"
  prim__url : Response -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.clone()"
  prim__clone : Response -> PrimIO Response

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Body
  
  export
  %foreign "browser:lambda:x=>x.body"
  prim__body : Body -> PrimIO (Nullable ReadableStream)
  
  export
  %foreign "browser:lambda:x=>x.bodyUsed"
  prim__bodyUsed : Body -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.arrayBuffer()"
  prim__arrayBuffer : Body -> PrimIO (Promise ArrayBuffer)
  
  export
  %foreign "browser:lambda:x=>x.blob()"
  prim__blob : Body -> PrimIO (Promise Blob)
  
  export
  %foreign "browser:lambda:x=>x.formData()"
  prim__formData : Body -> PrimIO (Promise FormData)
  
  export
  %foreign "browser:lambda:x=>x.json()"
  prim__json : Body -> PrimIO (Promise AnyPtr)
  
  export
  %foreign "browser:lambda:x=>x.text()"
  prim__text : Body -> PrimIO (Promise String)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace RequestInit
  
  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l,m)=> {method: a,headers: b,body: c,referrer: d,referrerPolicy: e,mode: f,credentials: g,cache: h,redirect: i,integrity: j,keepalive: k,signal: l,window: m}"
  prim__new :  UndefOr ByteString
            -> UndefOr (Union2 (Array (Array ByteString))
                               (Record ByteString ByteString))
            -> UndefOr (Nullable (Union16 ReadableStream
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
  prim__body :  RequestInit
             -> PrimIO $ UndefOr (Nullable (Union16 ReadableStream
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
  
  export
  %foreign "browser:lambda:(x,v)=>{x.body = v}"
  prim__setBody :  RequestInit
                -> UndefOr (Nullable (Union16 ReadableStream
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
  prim__cache : RequestInit -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cache = v}"
  prim__setCache : RequestInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : RequestInit -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : RequestInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.headers"
  prim__headers :  RequestInit
                -> PrimIO $ UndefOr (Union2 (Array (Array ByteString))
                                            (Record ByteString ByteString))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders :  RequestInit
                   -> UndefOr (Union2 (Array (Array ByteString))
                                      (Record ByteString ByteString))
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : RequestInit -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : RequestInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : RequestInit -> PrimIO $ UndefOr Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.keepalive = v}"
  prim__setKeepalive : RequestInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.method"
  prim__method : RequestInit -> PrimIO $ UndefOr ByteString
  
  export
  %foreign "browser:lambda:(x,v)=>{x.method = v}"
  prim__setMethod : RequestInit -> UndefOr ByteString -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : RequestInit -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : RequestInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : RequestInit -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.redirect = v}"
  prim__setRedirect : RequestInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : RequestInit -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.referrer = v}"
  prim__setReferrer : RequestInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : RequestInit -> PrimIO $ UndefOr String
  
  export
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : RequestInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : RequestInit -> PrimIO $ UndefOr (Nullable AbortSignal)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : RequestInit -> UndefOr (Nullable AbortSignal) -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.window"
  prim__window : RequestInit -> PrimIO $ UndefOr AnyPtr
  
  export
  %foreign "browser:lambda:(x,v)=>{x.window = v}"
  prim__setWindow : RequestInit -> UndefOr AnyPtr -> PrimIO ()

namespace ResponseInit
  
  export
  %foreign "browser:lambda:(a,b,c)=> {status: a,statusText: b,headers: c}"
  prim__new :  UndefOr UInt16
            -> UndefOr ByteString
            -> UndefOr (Union2 (Array (Array ByteString))
                               (Record ByteString ByteString))
            -> PrimIO ResponseInit
  
  export
  %foreign "browser:lambda:x=>x.headers"
  prim__headers :  ResponseInit
                -> PrimIO $ UndefOr (Union2 (Array (Array ByteString))
                                            (Record ByteString ByteString))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders :  ResponseInit
                   -> UndefOr (Union2 (Array (Array ByteString))
                                      (Record ByteString ByteString))
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.status"
  prim__status : ResponseInit -> PrimIO $ UndefOr UInt16
  
  export
  %foreign "browser:lambda:(x,v)=>{x.status = v}"
  prim__setStatus : ResponseInit -> UndefOr UInt16 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : ResponseInit -> PrimIO $ UndefOr ByteString
  
  export
  %foreign "browser:lambda:(x,v)=>{x.statusText = v}"
  prim__setStatusText : ResponseInit -> UndefOr ByteString -> PrimIO ()
