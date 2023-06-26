module Web.Raw.MimeType

import JS
import Web.Types.MimeType


%default total


export
%foreign "browser:lambda:x=>x.description"
prim__description : MimeType -> PrimIO ()


export
%foreign "browser:lambda:x=>x.enabledPlugin"
prim__enabledPlugin : MimeType -> PrimIO ()


export
%foreign "browser:lambda:x=>x.suffixes"
prim__suffixes : MimeType -> PrimIO ()


export
%foreign "browser:lambda:x=>x.type"
prim__type : MimeType -> PrimIO ()


export
description : (obj : MimeType) -> JSIO ()
description a = primJS $ MimeType.prim__description a


export
enabledPlugin : (obj : MimeType) -> JSIO ()
enabledPlugin a = primJS $ MimeType.prim__enabledPlugin a


export
suffixes : (obj : MimeType) -> JSIO ()
suffixes a = primJS $ MimeType.prim__suffixes a


export
type : (obj : MimeType) -> JSIO ()
type a = primJS $ MimeType.prim__type a
