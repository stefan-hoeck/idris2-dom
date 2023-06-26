module Web.Raw.ImageBitmap

import JS
import Web.Types.ImageBitmap


%default total


export
%foreign "browser:lambda:x=>x.height"
prim__height : ImageBitmap -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.width"
prim__width : ImageBitmap -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.close()"
prim__close : ImageBitmap -> PrimIO ()


export
height : (obj : ImageBitmap) -> JSIO Bits32
height a = primJS $ ImageBitmap.prim__height a


export
width : (obj : ImageBitmap) -> JSIO Bits32
width a = primJS $ ImageBitmap.prim__width a


export
close : (obj : ImageBitmap) -> JSIO ()
close a = primJS $ ImageBitmap.prim__close a
