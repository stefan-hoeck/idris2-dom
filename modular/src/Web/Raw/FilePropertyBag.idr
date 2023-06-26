module Web.Raw.FilePropertyBag

import JS
import Web.Types.BlobPropertyBag
import Web.Types.FilePropertyBag


%default total


export
%foreign "browser:lambda:(a)=> ({lastModified: a})"
prim__new : UndefOr JSInt64 -> PrimIO FilePropertyBag


export
%foreign "browser:lambda:x=>x.lastModified"
prim__lastModified : FilePropertyBag -> PrimIO (UndefOr JSInt64)



export
%foreign "browser:lambda:(x,v)=>{x.lastModified = v}"
prim__setLastModified : FilePropertyBag -> UndefOr JSInt64 -> PrimIO ()



export
new' : (lastModified : Optional JSInt64) -> JSIO FilePropertyBag
new' a = primJS $ FilePropertyBag.prim__new (toFFI a)

export
new : JSIO FilePropertyBag
new = primJS $ FilePropertyBag.prim__new undef


export
lastModified :
     {auto _ : Cast t FilePropertyBag}
  -> t
  -> Attribute False Optional JSInt64
lastModified v = fromUndefOrPrimNoDefault
                   "FilePropertyBag.getlastModified"
                   prim__lastModified
                   prim__setLastModified
                   (cast {to = FilePropertyBag} v)
