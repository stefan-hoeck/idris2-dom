module Web.Url

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace URL
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.searchParams"
  prim__searchParams : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hash"
  prim__hash : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hash = v}"
  prim__setHash : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.host"
  prim__host : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.host = v}"
  prim__setHost : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hostname"
  prim__hostname : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hostname = v}"
  prim__setHostname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.password"
  prim__password : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.password = v}"
  prim__setPassword : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pathname"
  prim__pathname : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.pathname = v}"
  prim__setPathname : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.port"
  prim__port : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.port = v}"
  prim__setPort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.protocol"
  prim__protocol : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.protocol = v}"
  prim__setProtocol : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.search"
  prim__search : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.search = v}"
  prim__setSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.username"
  prim__username : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.username = v}"
  prim__setUsername : AnyPtr -> AnyPtr -> PrimIO AnyPtr




