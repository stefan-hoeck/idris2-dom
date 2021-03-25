module Web.Fetch

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Request
  
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : AnyPtr -> PrimIO AnyPtr
  
  export
  cache :  Cast request Request
        => ToJS Request
        => (obj : request)
        -> IO RequestCache
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr
  
  export
  credentials :  Cast request Request
              => ToJS Request
              => (obj : request)
              -> IO RequestCredentials
  
  %foreign "browser:lambda:x=>x.destination"
  prim__destination : AnyPtr -> PrimIO AnyPtr
  
  export
  destination :  Cast request Request
              => ToJS Request
              => (obj : request)
              -> IO RequestDestination
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr
  
  export
  headers :  Cast request Request
          => ToJS Request
          => (obj : request)
          -> IO Headers
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr
  
  export
  integrity :  Cast request Request
            => ToJS Request
            => (obj : request)
            -> IO String
  
  %foreign "browser:lambda:x=>x.isHistoryNavigation"
  prim__isHistoryNavigation : AnyPtr -> PrimIO AnyPtr
  
  export
  isHistoryNavigation :  Cast request Request
                      => ToJS Request
                      => (obj : request)
                      -> IO Bool
  
  %foreign "browser:lambda:x=>x.isReloadNavigation"
  prim__isReloadNavigation : AnyPtr -> PrimIO AnyPtr
  
  export
  isReloadNavigation :  Cast request Request
                     => ToJS Request
                     => (obj : request)
                     -> IO Bool
  
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : AnyPtr -> PrimIO AnyPtr
  
  export
  keepalive : Cast request Request => ToJS Request => (obj : request) -> IO Bool
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr
  
  export
  method : Cast request Request => ToJS Request => (obj : request) -> IO String
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  export
  mode :  Cast request Request
       => ToJS Request
       => (obj : request)
       -> IO RequestMode
  
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : AnyPtr -> PrimIO AnyPtr
  
  export
  redirect :  Cast request Request
           => ToJS Request
           => (obj : request)
           -> IO RequestRedirect
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr
  
  export
  referrer :  Cast request Request
           => ToJS Request
           => (obj : request)
           -> IO String
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast request Request
                 => ToJS Request
                 => (obj : request)
                 -> IO ReferrerPolicy
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr
  
  export
  signal :  Cast request Request
         => ToJS Request
         => (obj : request)
         -> IO AbortSignal
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  export
  url : Cast request Request => ToJS Request => (obj : request) -> IO String

namespace Response
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr
  
  export
  headers :  Cast response Response
          => ToJS Response
          => (obj : response)
          -> IO Headers
  
  %foreign "browser:lambda:x=>x.ok"
  prim__ok : AnyPtr -> PrimIO AnyPtr
  
  export
  ok : Cast response Response => ToJS Response => (obj : response) -> IO Bool
  
  %foreign "browser:lambda:x=>x.redirected"
  prim__redirected : AnyPtr -> PrimIO AnyPtr
  
  export
  redirected :  Cast response Response
             => ToJS Response
             => (obj : response)
             -> IO Bool
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr
  
  export
  status :  Cast response Response
         => ToJS Response
         => (obj : response)
         -> IO UInt16
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr
  
  export
  statusText :  Cast response Response
             => ToJS Response
             => (obj : response)
             -> IO String
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast response Response
       => ToJS Response
       => (obj : response)
       -> IO ResponseType
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  export
  url : Cast response Response => ToJS Response => (obj : response) -> IO String

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Body
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr
  
  export
  body :  Cast body Body
       => ToJS Body
       => (obj : body)
       -> IO (Maybe ReadableStream)
  
  %foreign "browser:lambda:x=>x.bodyUsed"
  prim__bodyUsed : AnyPtr -> PrimIO AnyPtr
  
  export
  bodyUsed : Cast body Body => ToJS Body => (obj : body) -> IO Bool

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace RequestInit
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr
  
  export
  body :  Cast requestInit RequestInit
       => ToJS RequestInit
       => (obj : requestInit)
       -> IO (Maybe BodyInit)
  
  %foreign "browser:lambda:(x,v)=>{x.body = v}"
  prim__setBody : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBody :  Cast bodyInit BodyInit
          => ToJS BodyInit
          => Cast requestInit RequestInit
          => ToJS RequestInit
          => (obj : requestInit)
          -> (v : Maybe bodyInit)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : AnyPtr -> PrimIO AnyPtr
  
  export
  cache :  Cast requestInit RequestInit
        => ToJS RequestInit
        => (obj : requestInit)
        -> IO RequestCache
  
  %foreign "browser:lambda:(x,v)=>{x.cache = v}"
  prim__setCache : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCache :  Cast requestCache RequestCache
           => ToJS RequestCache
           => Cast requestInit RequestInit
           => ToJS RequestInit
           => (obj : requestInit)
           -> (v : requestCache)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr
  
  export
  credentials :  Cast requestInit RequestInit
              => ToJS RequestInit
              => (obj : requestInit)
              -> IO RequestCredentials
  
  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCredentials :  Cast requestCredentials RequestCredentials
                 => ToJS RequestCredentials
                 => Cast requestInit RequestInit
                 => ToJS RequestInit
                 => (obj : requestInit)
                 -> (v : requestCredentials)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr
  
  export
  headers :  Cast requestInit RequestInit
          => ToJS RequestInit
          => (obj : requestInit)
          -> IO HeadersInit
  
  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeaders :  Cast headersInit HeadersInit
             => ToJS HeadersInit
             => Cast requestInit RequestInit
             => ToJS RequestInit
             => (obj : requestInit)
             -> (v : headersInit)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr
  
  export
  integrity :  Cast requestInit RequestInit
            => ToJS RequestInit
            => (obj : requestInit)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIntegrity :  Cast requestInit RequestInit
               => ToJS RequestInit
               => (obj : requestInit)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : AnyPtr -> PrimIO AnyPtr
  
  export
  keepalive :  Cast requestInit RequestInit
            => ToJS RequestInit
            => (obj : requestInit)
            -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.keepalive = v}"
  prim__setKeepalive : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setKeepalive :  Cast requestInit RequestInit
               => ToJS RequestInit
               => (obj : requestInit)
               -> (v : Bool)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr
  
  export
  method :  Cast requestInit RequestInit
         => ToJS RequestInit
         => (obj : requestInit)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.method = v}"
  prim__setMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMethod :  Cast requestInit RequestInit
            => ToJS RequestInit
            => (obj : requestInit)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  export
  mode :  Cast requestInit RequestInit
       => ToJS RequestInit
       => (obj : requestInit)
       -> IO RequestMode
  
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMode :  Cast requestInit RequestInit
          => ToJS RequestInit
          => Cast requestMode RequestMode
          => ToJS RequestMode
          => (obj : requestInit)
          -> (v : requestMode)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : AnyPtr -> PrimIO AnyPtr
  
  export
  redirect :  Cast requestInit RequestInit
           => ToJS RequestInit
           => (obj : requestInit)
           -> IO RequestRedirect
  
  %foreign "browser:lambda:(x,v)=>{x.redirect = v}"
  prim__setRedirect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRedirect :  Cast requestInit RequestInit
              => ToJS RequestInit
              => Cast requestRedirect RequestRedirect
              => ToJS RequestRedirect
              => (obj : requestInit)
              -> (v : requestRedirect)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr
  
  export
  referrer :  Cast requestInit RequestInit
           => ToJS RequestInit
           => (obj : requestInit)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.referrer = v}"
  prim__setReferrer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrer :  Cast requestInit RequestInit
              => ToJS RequestInit
              => (obj : requestInit)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast requestInit RequestInit
                 => ToJS RequestInit
                 => (obj : requestInit)
                 -> IO ReferrerPolicy
  
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrerPolicy :  Cast referrerPolicy ReferrerPolicy
                    => ToJS ReferrerPolicy
                    => Cast requestInit RequestInit
                    => ToJS RequestInit
                    => (obj : requestInit)
                    -> (v : referrerPolicy)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr
  
  export
  signal :  Cast requestInit RequestInit
         => ToJS RequestInit
         => (obj : requestInit)
         -> IO (Maybe AbortSignal)
  
  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSignal :  Cast abortSignal AbortSignal
            => ToJS AbortSignal
            => Cast requestInit RequestInit
            => ToJS RequestInit
            => (obj : requestInit)
            -> (v : Maybe abortSignal)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.window"
  prim__window : AnyPtr -> PrimIO AnyPtr
  
  export
  window :  Cast requestInit RequestInit
         => ToJS RequestInit
         => (obj : requestInit)
         -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.window = v}"
  prim__setWindow : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWindow :  Cast requestInit RequestInit
            => ToJS RequestInit
            => (obj : requestInit)
            -> (v : JSAny)
            -> IO ()

namespace ResponseInit
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr
  
  export
  headers :  Cast responseInit ResponseInit
          => ToJS ResponseInit
          => (obj : responseInit)
          -> IO HeadersInit
  
  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeaders :  Cast headersInit HeadersInit
             => ToJS HeadersInit
             => Cast responseInit ResponseInit
             => ToJS ResponseInit
             => (obj : responseInit)
             -> (v : headersInit)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr
  
  export
  status :  Cast responseInit ResponseInit
         => ToJS ResponseInit
         => (obj : responseInit)
         -> IO UInt16
  
  %foreign "browser:lambda:(x,v)=>{x.status = v}"
  prim__setStatus : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStatus :  Cast responseInit ResponseInit
            => ToJS ResponseInit
            => (obj : responseInit)
            -> (v : UInt16)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr
  
  export
  statusText :  Cast responseInit ResponseInit
             => ToJS ResponseInit
             => (obj : responseInit)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.statusText = v}"
  prim__setStatusText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStatusText :  Cast responseInit ResponseInit
                => ToJS ResponseInit
                => (obj : responseInit)
                -> (v : String)
                -> IO ()



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast Request Body where
  cast = believe_me

export
Cast Response Body where
  cast = believe_me