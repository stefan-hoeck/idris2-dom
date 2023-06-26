module Web.Raw.WorkerLocation

import JS
import Web.Types.WorkerLocation


%default total


export
%foreign "browser:lambda:x=>x.hash"
prim__hash : WorkerLocation -> PrimIO String


export
%foreign "browser:lambda:x=>x.host"
prim__host : WorkerLocation -> PrimIO String


export
%foreign "browser:lambda:x=>x.hostname"
prim__hostname : WorkerLocation -> PrimIO String


export
%foreign "browser:lambda:x=>x.href"
prim__href : WorkerLocation -> PrimIO String


export
%foreign "browser:lambda:x=>x.origin"
prim__origin : WorkerLocation -> PrimIO String


export
%foreign "browser:lambda:x=>x.pathname"
prim__pathname : WorkerLocation -> PrimIO String


export
%foreign "browser:lambda:x=>x.port"
prim__port : WorkerLocation -> PrimIO String


export
%foreign "browser:lambda:x=>x.protocol"
prim__protocol : WorkerLocation -> PrimIO String


export
%foreign "browser:lambda:x=>x.search"
prim__search : WorkerLocation -> PrimIO String


export
hash : (obj : WorkerLocation) -> JSIO String
hash a = primJS $ WorkerLocation.prim__hash a


export
host : (obj : WorkerLocation) -> JSIO String
host a = primJS $ WorkerLocation.prim__host a


export
hostname : (obj : WorkerLocation) -> JSIO String
hostname a = primJS $ WorkerLocation.prim__hostname a


export
href : (obj : WorkerLocation) -> JSIO String
href a = primJS $ WorkerLocation.prim__href a


export
origin : (obj : WorkerLocation) -> JSIO String
origin a = primJS $ WorkerLocation.prim__origin a


export
pathname : (obj : WorkerLocation) -> JSIO String
pathname a = primJS $ WorkerLocation.prim__pathname a


export
port : (obj : WorkerLocation) -> JSIO String
port a = primJS $ WorkerLocation.prim__port a


export
protocol : (obj : WorkerLocation) -> JSIO String
protocol a = primJS $ WorkerLocation.prim__protocol a


export
search : (obj : WorkerLocation) -> JSIO String
search a = primJS $ WorkerLocation.prim__search a

