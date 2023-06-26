module Web.Raw.DOMException

import JS
import Web.Types.DOMException


%default total


export
ABORT_ERR : Bits16
ABORT_ERR = 20


export
DATA_CLONE_ERR : Bits16
DATA_CLONE_ERR = 25


export
DOMSTRING_SIZE_ERR : Bits16
DOMSTRING_SIZE_ERR = 2


export
HIERARCHY_REQUEST_ERR : Bits16
HIERARCHY_REQUEST_ERR = 3


export
INDEX_SIZE_ERR : Bits16
INDEX_SIZE_ERR = 1


export
INUSE_ATTRIBUTE_ERR : Bits16
INUSE_ATTRIBUTE_ERR = 10


export
INVALID_ACCESS_ERR : Bits16
INVALID_ACCESS_ERR = 15


export
INVALID_CHARACTER_ERR : Bits16
INVALID_CHARACTER_ERR = 5


export
INVALID_MODIFICATION_ERR : Bits16
INVALID_MODIFICATION_ERR = 13


export
INVALID_NODE_TYPE_ERR : Bits16
INVALID_NODE_TYPE_ERR = 24


export
INVALID_STATE_ERR : Bits16
INVALID_STATE_ERR = 11


export
NAMESPACE_ERR : Bits16
NAMESPACE_ERR = 14


export
NETWORK_ERR : Bits16
NETWORK_ERR = 19


export
NOT_FOUND_ERR : Bits16
NOT_FOUND_ERR = 8


export
NOT_SUPPORTED_ERR : Bits16
NOT_SUPPORTED_ERR = 9


export
NO_DATA_ALLOWED_ERR : Bits16
NO_DATA_ALLOWED_ERR = 6


export
NO_MODIFICATION_ALLOWED_ERR : Bits16
NO_MODIFICATION_ALLOWED_ERR = 7


export
QUOTA_EXCEEDED_ERR : Bits16
QUOTA_EXCEEDED_ERR = 22


export
SECURITY_ERR : Bits16
SECURITY_ERR = 18


export
SYNTAX_ERR : Bits16
SYNTAX_ERR = 12


export
TIMEOUT_ERR : Bits16
TIMEOUT_ERR = 23


export
TYPE_MISMATCH_ERR : Bits16
TYPE_MISMATCH_ERR = 17


export
URL_MISMATCH_ERR : Bits16
URL_MISMATCH_ERR = 21


export
VALIDATION_ERR : Bits16
VALIDATION_ERR = 16


export
WRONG_DOCUMENT_ERR : Bits16
WRONG_DOCUMENT_ERR = 4


export
%foreign "browser:lambda:(a,b)=> new DOMException(a,b)"
prim__new : UndefOr String -> UndefOr String -> PrimIO DOMException


export
%foreign "browser:lambda:x=>x.code"
prim__code : DOMException -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.message"
prim__message : DOMException -> PrimIO String


export
%foreign "browser:lambda:x=>x.name"
prim__name : DOMException -> PrimIO String


export
new' :
     (message : Optional String)
  -> (name : Optional String)
  -> JSIO DOMException
new' a b = primJS $ DOMException.prim__new (toFFI a) (toFFI b)

export
new : JSIO DOMException
new = primJS $ DOMException.prim__new undef undef


export
code : {auto _ : Cast t1 DOMException} -> (obj : t1) -> JSIO Bits16
code a = primJS $ DOMException.prim__code (cast a)


export
message : {auto _ : Cast t1 DOMException} -> (obj : t1) -> JSIO String
message a = primJS $ DOMException.prim__message (cast a)


export
name : {auto _ : Cast t1 DOMException} -> (obj : t1) -> JSIO String
name a = primJS $ DOMException.prim__name (cast a)

