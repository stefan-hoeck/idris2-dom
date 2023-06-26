module Web.Raw.MediaError

import JS
import Web.Types.MediaError


%default total


export
MEDIA_ERR_ABORTED : Bits16
MEDIA_ERR_ABORTED = 1


export
MEDIA_ERR_DECODE : Bits16
MEDIA_ERR_DECODE = 3


export
MEDIA_ERR_NETWORK : Bits16
MEDIA_ERR_NETWORK = 2


export
MEDIA_ERR_SRC_NOT_SUPPORTED : Bits16
MEDIA_ERR_SRC_NOT_SUPPORTED = 4


export
%foreign "browser:lambda:x=>x.code"
prim__code : MediaError -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.message"
prim__message : MediaError -> PrimIO String


export
code : (obj : MediaError) -> JSIO Bits16
code a = primJS $ MediaError.prim__code a


export
message : (obj : MediaError) -> JSIO String
message a = primJS $ MediaError.prim__message a
