module Web.Raw.HTMLHyperlinkElementUtils

import JS
import Web.Types.HTMLHyperlinkElementUtils


%default total


export
%foreign "browser:lambda:x=>x.hash"
prim__hash : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.hash = v}"
prim__setHash : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.host"
prim__host : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.host = v}"
prim__setHost : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hostname"
prim__hostname : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.hostname = v}"
prim__setHostname : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.href"
prim__href : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.href = v}"
prim__setHref : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.origin"
prim__origin : HTMLHyperlinkElementUtils -> PrimIO String


export
%foreign "browser:lambda:x=>x.password"
prim__password : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.password = v}"
prim__setPassword : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.pathname"
prim__pathname : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.pathname = v}"
prim__setPathname : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.port"
prim__port : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.port = v}"
prim__setPort : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.protocol"
prim__protocol : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.protocol = v}"
prim__setProtocol : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.search"
prim__search : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.search = v}"
prim__setSearch : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.username"
prim__username : HTMLHyperlinkElementUtils -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.username = v}"
prim__setUsername : HTMLHyperlinkElementUtils -> String -> PrimIO ()



export
hash :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
hash v = fromPrim
           "HTMLHyperlinkElementUtils.gethash"
           prim__hash
           prim__setHash
           (cast {to = HTMLHyperlinkElementUtils} v)


export
host :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
host v = fromPrim
           "HTMLHyperlinkElementUtils.gethost"
           prim__host
           prim__setHost
           (cast {to = HTMLHyperlinkElementUtils} v)


export
hostname :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
hostname v = fromPrim
               "HTMLHyperlinkElementUtils.gethostname"
               prim__hostname
               prim__setHostname
               (cast {to = HTMLHyperlinkElementUtils} v)


export
href :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
href v = fromPrim
           "HTMLHyperlinkElementUtils.gethref"
           prim__href
           prim__setHref
           (cast {to = HTMLHyperlinkElementUtils} v)


export
origin :
     {auto _ : Cast t1 HTMLHyperlinkElementUtils}
  -> (obj : t1)
  -> JSIO String
origin a = primJS $ HTMLHyperlinkElementUtils.prim__origin (cast a)


export
password :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
password v = fromPrim
               "HTMLHyperlinkElementUtils.getpassword"
               prim__password
               prim__setPassword
               (cast {to = HTMLHyperlinkElementUtils} v)


export
pathname :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
pathname v = fromPrim
               "HTMLHyperlinkElementUtils.getpathname"
               prim__pathname
               prim__setPathname
               (cast {to = HTMLHyperlinkElementUtils} v)


export
port :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
port v = fromPrim
           "HTMLHyperlinkElementUtils.getport"
           prim__port
           prim__setPort
           (cast {to = HTMLHyperlinkElementUtils} v)


export
protocol :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
protocol v = fromPrim
               "HTMLHyperlinkElementUtils.getprotocol"
               prim__protocol
               prim__setProtocol
               (cast {to = HTMLHyperlinkElementUtils} v)


export
search :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
search v = fromPrim
             "HTMLHyperlinkElementUtils.getsearch"
             prim__search
             prim__setSearch
             (cast {to = HTMLHyperlinkElementUtils} v)


export
username :
     {auto _ : Cast t HTMLHyperlinkElementUtils}
  -> t
  -> Attribute True Prelude.id String
username v = fromPrim
               "HTMLHyperlinkElementUtils.getusername"
               prim__username
               prim__setUsername
               (cast {to = HTMLHyperlinkElementUtils} v)

