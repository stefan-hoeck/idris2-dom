module Web.Url
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace URL
  
  public export
  JSType URL where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : URL) -> JSIO String
  origin a =   primToJSIO "origin" $ prim__origin (toJS a)
  
  %foreign "browser:lambda:x=>x.searchParams"
  prim__searchParams : AnyPtr -> PrimIO AnyPtr

  export
  searchParams : (obj : URL) -> JSIO URLSearchParams
  searchParams a =   primToJSIO "searchParams" $ prim__searchParams (toJS a)
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  export
  hash : (obj : URL) -> JSIO String
  hash a =   primToJSIO "hash" $ prim__hash (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hash  = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHash : (obj : URL) -> (v : String) -> JSIO ()
  setHash a b =   primToJSIO "setHash" $ prim__setHash (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : URL) -> JSIO String
  host a =   primToJSIO "host" $ prim__host (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.host  = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHost : (obj : URL) -> (v : String) -> JSIO ()
  setHost a b =   primToJSIO "setHost" $ prim__setHost (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  export
  hostname : (obj : URL) -> JSIO String
  hostname a =   primToJSIO "hostname" $ prim__hostname (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hostname  = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHostname : (obj : URL) -> (v : String) -> JSIO ()
  setHostname a b =
    primToJSIO "setHostname" $ prim__setHostname (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.password"
  prim__password : AnyPtr -> PrimIO AnyPtr

  export
  password : (obj : URL) -> JSIO String
  password a =   primToJSIO "password" $ prim__password (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.password  = v}"
  prim__setPassword : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPassword : (obj : URL) -> (v : String) -> JSIO ()
  setPassword a b =
    primToJSIO "setPassword" $ prim__setPassword (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  export
  pathname : (obj : URL) -> JSIO String
  pathname a =   primToJSIO "pathname" $ prim__pathname (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.pathname  = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPathname : (obj : URL) -> (v : String) -> JSIO ()
  setPathname a b =
    primToJSIO "setPathname" $ prim__setPathname (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : URL) -> JSIO String
  port a =   primToJSIO "port" $ prim__port (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.port  = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPort : (obj : URL) -> (v : String) -> JSIO ()
  setPort a b =   primToJSIO "setPort" $ prim__setPort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : URL) -> JSIO String
  protocol a =   primToJSIO "protocol" $ prim__protocol (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.protocol  = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setProtocol : (obj : URL) -> (v : String) -> JSIO ()
  setProtocol a b =
    primToJSIO "setProtocol" $ prim__setProtocol (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  export
  search : (obj : URL) -> JSIO String
  search a =   primToJSIO "search" $ prim__search (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.search  = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSearch : (obj : URL) -> (v : String) -> JSIO ()
  setSearch a b =   primToJSIO "setSearch" $ prim__setSearch (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.username"
  prim__username : AnyPtr -> PrimIO AnyPtr

  export
  username : (obj : URL) -> JSIO String
  username a =   primToJSIO "username" $ prim__username (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.username  = v}"
  prim__setUsername : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUsername : (obj : URL) -> (v : String) -> JSIO ()
  setUsername a b =
    primToJSIO "setUsername" $ prim__setUsername (toJS a) (toJS b)

namespace URLSearchParams
  
  public export
  JSType URLSearchParams where
    parents =  [ JSObject ]

    mixins =  []



