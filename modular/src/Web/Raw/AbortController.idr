module Web.Raw.AbortController

import JS
import Web.Types.AbortController
import Web.Types.AbortSignal


%default total


export
%foreign "browser:lambda:()=> new AbortController()"
prim__new : PrimIO AbortController


export
%foreign "browser:lambda:x=>x.signal"
prim__signal : AbortController -> PrimIO AbortSignal


export
%foreign "browser:lambda:x=>x.abort()"
prim__abort : AbortController -> PrimIO ()


export
new : JSIO AbortController
new = primJS $ AbortController.prim__new


export
signal : (obj : AbortController) -> JSIO AbortSignal
signal a = primJS $ AbortController.prim__signal a


export
abort : (obj : AbortController) -> JSIO ()
abort a = primJS $ AbortController.prim__abort a
