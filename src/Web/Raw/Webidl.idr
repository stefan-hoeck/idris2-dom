module Web.Raw.Webidl

import JS
import Web.Internal.WebidlPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMException
  
  public export
  ABORT_ERR : Bits16
  ABORT_ERR = 20
  
  public export
  DATA_CLONE_ERR : Bits16
  DATA_CLONE_ERR = 25
  
  public export
  DOMSTRING_SIZE_ERR : Bits16
  DOMSTRING_SIZE_ERR = 2
  
  public export
  HIERARCHY_REQUEST_ERR : Bits16
  HIERARCHY_REQUEST_ERR = 3
  
  public export
  INDEX_SIZE_ERR : Bits16
  INDEX_SIZE_ERR = 1
  
  public export
  INUSE_ATTRIBUTE_ERR : Bits16
  INUSE_ATTRIBUTE_ERR = 10
  
  public export
  INVALID_ACCESS_ERR : Bits16
  INVALID_ACCESS_ERR = 15
  
  public export
  INVALID_CHARACTER_ERR : Bits16
  INVALID_CHARACTER_ERR = 5
  
  public export
  INVALID_MODIFICATION_ERR : Bits16
  INVALID_MODIFICATION_ERR = 13
  
  public export
  INVALID_NODE_TYPE_ERR : Bits16
  INVALID_NODE_TYPE_ERR = 24
  
  public export
  INVALID_STATE_ERR : Bits16
  INVALID_STATE_ERR = 11
  
  public export
  NAMESPACE_ERR : Bits16
  NAMESPACE_ERR = 14
  
  public export
  NETWORK_ERR : Bits16
  NETWORK_ERR = 19
  
  public export
  NOT_FOUND_ERR : Bits16
  NOT_FOUND_ERR = 8
  
  public export
  NOT_SUPPORTED_ERR : Bits16
  NOT_SUPPORTED_ERR = 9
  
  public export
  NO_DATA_ALLOWED_ERR : Bits16
  NO_DATA_ALLOWED_ERR = 6
  
  public export
  NO_MODIFICATION_ALLOWED_ERR : Bits16
  NO_MODIFICATION_ALLOWED_ERR = 7
  
  public export
  QUOTA_EXCEEDED_ERR : Bits16
  QUOTA_EXCEEDED_ERR = 22
  
  public export
  SECURITY_ERR : Bits16
  SECURITY_ERR = 18
  
  public export
  SYNTAX_ERR : Bits16
  SYNTAX_ERR = 12
  
  public export
  TIMEOUT_ERR : Bits16
  TIMEOUT_ERR = 23
  
  public export
  TYPE_MISMATCH_ERR : Bits16
  TYPE_MISMATCH_ERR = 17
  
  public export
  URL_MISMATCH_ERR : Bits16
  URL_MISMATCH_ERR = 21
  
  public export
  VALIDATION_ERR : Bits16
  VALIDATION_ERR = 16
  
  public export
  WRONG_DOCUMENT_ERR : Bits16
  WRONG_DOCUMENT_ERR = 4
  
  export
  new :  (message : Optional String)
      -> (name : Optional String)
      -> JSIO DOMException
  new a b = primJS $ DOMException.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO DOMException
  new' = primJS $ DOMException.prim__new undef undef
  
  export
  code :  (0 _ : JSType t1)
       => {auto 0 _ : Elem DOMException (Types t1)}
       -> (obj : t1)
       -> JSIO Bits16
  code a = primJS $ DOMException.prim__code (up a)
  
  export
  message :  (0 _ : JSType t1)
          => {auto 0 _ : Elem DOMException (Types t1)}
          -> (obj : t1)
          -> JSIO String
  message a = primJS $ DOMException.prim__message (up a)
  
  export
  name :  (0 _ : JSType t1)
       => {auto 0 _ : Elem DOMException (Types t1)}
       -> (obj : t1)
       -> JSIO String
  name a = primJS $ DOMException.prim__name (up a)





--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace Function
  
  export
  toFunction : ( IO (Array AnyPtr) -> IO AnyPtr ) -> JSIO Function
  toFunction cb = primJS $ prim__toFunction cb


namespace VoidFunction
  
  export
  toVoidFunction : (() -> IO ()) -> JSIO VoidFunction
  toVoidFunction cb = primJS $ prim__toVoidFunction cb

