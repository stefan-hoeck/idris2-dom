module Web.Raw.URL

import JS
import Web.Types.Blob
import Web.Types.MediaSource
import Web.Types.URL
import Web.Types.URLSearchParams


%default total


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


export
new' : (url : String) -> (base : Optional String) -> JSIO URL
new' a b = primJS $ URL.prim__new a (toFFI b)

export
new : (url : String) -> JSIO URL
new a = primJS $ URL.prim__new a undef


export
createObjectURL : (obj : HSum [Blob, MediaSource]) -> JSIO String
createObjectURL a = primJS $ URL.prim__createObjectURL (toFFI a)


export
createObjectURL1 : (mediaSource : MediaSource) -> JSIO String
createObjectURL1 a = primJS $ URL.prim__createObjectURL1 a


export
revokeObjectURL : (url : String) -> JSIO ()
revokeObjectURL a = primJS $ URL.prim__revokeObjectURL a


export
hash : URL -> Attribute True Prelude.id String
hash v = fromPrim "URL.gethash" prim__hash prim__setHash v


export
host : URL -> Attribute True Prelude.id String
host v = fromPrim "URL.gethost" prim__host prim__setHost v


export
hostname : URL -> Attribute True Prelude.id String
hostname v = fromPrim "URL.gethostname" prim__hostname prim__setHostname v


export
href : URL -> Attribute True Prelude.id String
href v = fromPrim "URL.gethref" prim__href prim__setHref v


export
origin : (obj : URL) -> JSIO String
origin a = primJS $ URL.prim__origin a


export
password : URL -> Attribute True Prelude.id String
password v = fromPrim "URL.getpassword" prim__password prim__setPassword v


export
pathname : URL -> Attribute True Prelude.id String
pathname v = fromPrim "URL.getpathname" prim__pathname prim__setPathname v


export
port : URL -> Attribute True Prelude.id String
port v = fromPrim "URL.getport" prim__port prim__setPort v


export
protocol : URL -> Attribute True Prelude.id String
protocol v = fromPrim "URL.getprotocol" prim__protocol prim__setProtocol v


export
search : URL -> Attribute True Prelude.id String
search v = fromPrim "URL.getsearch" prim__search prim__setSearch v


export
searchParams : (obj : URL) -> JSIO URLSearchParams
searchParams a = primJS $ URL.prim__searchParams a


export
username : URL -> Attribute True Prelude.id String
username v = fromPrim "URL.getusername" prim__username prim__setUsername v


export
toJSON : (obj : URL) -> JSIO String
toJSON a = primJS $ URL.prim__toJSON a

