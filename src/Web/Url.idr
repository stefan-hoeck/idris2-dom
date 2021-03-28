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
  
  %foreign "browser:lambda:x=>x.searchParams"
  prim__searchParams : AnyPtr -> PrimIO AnyPtr

  export
  searchParams : (obj : URL) -> JSIO URLSearchParams
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  export
  hash : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hash  = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHash : (obj : URL) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  export
  host : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.host  = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHost : (obj : URL) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  export
  hostname : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hostname  = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHostname : (obj : URL) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.password"
  prim__password : AnyPtr -> PrimIO AnyPtr

  export
  password : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.password  = v}"
  prim__setPassword : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPassword : (obj : URL) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  export
  pathname : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.pathname  = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPathname : (obj : URL) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  export
  port : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.port  = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPort : (obj : URL) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  export
  protocol : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.protocol  = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setProtocol : (obj : URL) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  export
  search : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.search  = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSearch : (obj : URL) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.username"
  prim__username : AnyPtr -> PrimIO AnyPtr

  export
  username : (obj : URL) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.username  = v}"
  prim__setUsername : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUsername : (obj : URL) -> (v : String) -> JSIO ()

namespace URLSearchParams
  
  public export
  JSType URLSearchParams where
    parents =  [ JSObject ]

    mixins =  []



