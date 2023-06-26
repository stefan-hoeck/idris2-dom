module Web.Raw.WebGLActiveInfo

import JS
import Web.Types.WebGLActiveInfo


%default total


export
%foreign "browser:lambda:x=>x.name"
prim__name : WebGLActiveInfo -> PrimIO String


export
%foreign "browser:lambda:x=>x.size"
prim__size : WebGLActiveInfo -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.type"
prim__type : WebGLActiveInfo -> PrimIO Bits32


export
name : (obj : WebGLActiveInfo) -> JSIO String
name a = primJS $ WebGLActiveInfo.prim__name a


export
size : (obj : WebGLActiveInfo) -> JSIO Int32
size a = primJS $ WebGLActiveInfo.prim__size a


export
type : (obj : WebGLActiveInfo) -> JSIO Bits32
type a = primJS $ WebGLActiveInfo.prim__type a
