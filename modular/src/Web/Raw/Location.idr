module Web.Raw.Location

import JS
import Web.Types.DOMStringList
import Web.Types.Location


%default total


export
%foreign "browser:lambda:x=>x.ancestorOrigins"
prim__ancestorOrigins : Location -> PrimIO DOMStringList


export
%foreign "browser:lambda:x=>x.hash"
prim__hash : Location -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.hash = v}"
prim__setHash : Location -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.host"
prim__host : Location -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.host = v}"
prim__setHost : Location -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hostname"
prim__hostname : Location -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.hostname = v}"
prim__setHostname : Location -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.href"
prim__href : Location -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.href = v}"
prim__setHref : Location -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.origin"
prim__origin : Location -> PrimIO String


export
%foreign "browser:lambda:x=>x.pathname"
prim__pathname : Location -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.pathname = v}"
prim__setPathname : Location -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.port"
prim__port : Location -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.port = v}"
prim__setPort : Location -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.protocol"
prim__protocol : Location -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.protocol = v}"
prim__setProtocol : Location -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.search"
prim__search : Location -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.search = v}"
prim__setSearch : Location -> String -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.assign(a)"
prim__assign : Location -> String -> PrimIO ()


export
%foreign "browser:lambda:x=>x.reload()"
prim__reload : Location -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.replace(a)"
prim__replace : Location -> String -> PrimIO ()


export
ancestorOrigins : (obj : Location) -> JSIO DOMStringList
ancestorOrigins a = primJS $ Location.prim__ancestorOrigins a


export
hash : Location -> Attribute True Prelude.id String
hash v = fromPrim "Location.gethash" prim__hash prim__setHash v


export
host : Location -> Attribute True Prelude.id String
host v = fromPrim "Location.gethost" prim__host prim__setHost v


export
hostname : Location -> Attribute True Prelude.id String
hostname v = fromPrim "Location.gethostname" prim__hostname prim__setHostname v


export
href : Location -> Attribute True Prelude.id String
href v = fromPrim "Location.gethref" prim__href prim__setHref v


export
origin : (obj : Location) -> JSIO String
origin a = primJS $ Location.prim__origin a


export
pathname : Location -> Attribute True Prelude.id String
pathname v = fromPrim "Location.getpathname" prim__pathname prim__setPathname v


export
port : Location -> Attribute True Prelude.id String
port v = fromPrim "Location.getport" prim__port prim__setPort v


export
protocol : Location -> Attribute True Prelude.id String
protocol v = fromPrim "Location.getprotocol" prim__protocol prim__setProtocol v


export
search : Location -> Attribute True Prelude.id String
search v = fromPrim "Location.getsearch" prim__search prim__setSearch v


export
assign : (obj : Location) -> (url : String) -> JSIO ()
assign a b = primJS $ Location.prim__assign a b


export
reload : (obj : Location) -> JSIO ()
reload a = primJS $ Location.prim__reload a


export
replace : (obj : Location) -> (url : String) -> JSIO ()
replace a b = primJS $ Location.prim__replace a b

