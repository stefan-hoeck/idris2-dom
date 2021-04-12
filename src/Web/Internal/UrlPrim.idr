module Web.Internal.UrlPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace URL
  
  export
  %foreign "browser:lambda:(a,b)=> new URL(a,b)"
  prim__new : String -> UndefOr String -> PrimIO URL
  
  export
  %foreign "browser:lambda:(a)=>URL.createObjectURL(a)"
  prim__createObjectURL : Union2 Blob MediaSource -> PrimIO String
  
  export
  %foreign "browser:lambda:(a)=>URL.createObjectURL(a)"
  prim__createObjectURL1 : MediaSource -> PrimIO String
  
  export
  %foreign "browser:lambda:(a)=>URL.revokeObjectURL(a)"
  prim__revokeObjectURL : String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.hash = v}"
  prim__setHash : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.host"
  prim__host : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.host = v}"
  prim__setHost : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.hostname = v}"
  prim__setHostname : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.href = v}"
  prim__setHref : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : URL -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.password"
  prim__password : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.password = v}"
  prim__setPassword : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.pathname = v}"
  prim__setPathname : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.port"
  prim__port : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.port = v}"
  prim__setPort : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.protocol = v}"
  prim__setProtocol : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.search"
  prim__search : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.search = v}"
  prim__setSearch : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.searchParams"
  prim__searchParams : URL -> PrimIO URLSearchParams
  
  export
  %foreign "browser:lambda:x=>x.username"
  prim__username : URL -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,v)=>{x.username = v}"
  prim__setUsername : URL -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.toJSON()"
  prim__toJSON : URL -> PrimIO String

namespace URLSearchParams
  
  export
  %foreign "browser:lambda:(a)=> new URLSearchParams(a)"
  prim__new :  UndefOr (Union3 (Array (Array String))
                               (Record String String)
                               String)
            -> PrimIO URLSearchParams
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.append(a,b)"
  prim__append : URLSearchParams -> String -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.delete(a)"
  prim__delete : URLSearchParams -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.getAll(a)"
  prim__getAll : URLSearchParams -> String -> PrimIO (Array String)
  
  export
  %foreign "browser:lambda:(x,a)=>x.get(a)"
  prim__get : URLSearchParams -> String -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a)=>x.has(a)"
  prim__has : URLSearchParams -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.set(a,b)"
  prim__set : URLSearchParams -> String -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sort()"
  prim__sort : URLSearchParams -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.toString()"
  prim__toString : URLSearchParams -> PrimIO String


