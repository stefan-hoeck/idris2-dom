module Web.Url
 
import JS
import Web.Internal.UrlPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace URL
  
  public export
  JSType URL where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (url : String) -> (base : UndefOr String) -> JSIO URL
  new a b = primJS $ URL.prim__new a b
  
  export
  createObjectURL : (obj : Union2 Blob MediaSource) -> JSIO String
  createObjectURL a = primJS $ URL.prim__createObjectURL a
  
  export
  createObjectURL1 : (mediaSource : MediaSource) -> JSIO String
  createObjectURL1 a = primJS $ URL.prim__createObjectURL1 a
  
  export
  revokeObjectURL : (url : String) -> JSIO ()
  revokeObjectURL a = primJS $ URL.prim__revokeObjectURL a
  
  export
  hash : (obj : URL) -> JSIO String
  hash a = primJS $ URL.prim__hash a
  
  export
  setHash : (obj : URL) -> (value : String) -> JSIO ()
  setHash a b = primJS $ URL.prim__setHash a b
  
  export
  host : (obj : URL) -> JSIO String
  host a = primJS $ URL.prim__host a
  
  export
  setHost : (obj : URL) -> (value : String) -> JSIO ()
  setHost a b = primJS $ URL.prim__setHost a b
  
  export
  hostname : (obj : URL) -> JSIO String
  hostname a = primJS $ URL.prim__hostname a
  
  export
  setHostname : (obj : URL) -> (value : String) -> JSIO ()
  setHostname a b = primJS $ URL.prim__setHostname a b
  
  export
  origin : (obj : URL) -> JSIO String
  origin a = primJS $ URL.prim__origin a
  
  export
  password : (obj : URL) -> JSIO String
  password a = primJS $ URL.prim__password a
  
  export
  setPassword : (obj : URL) -> (value : String) -> JSIO ()
  setPassword a b = primJS $ URL.prim__setPassword a b
  
  export
  pathname : (obj : URL) -> JSIO String
  pathname a = primJS $ URL.prim__pathname a
  
  export
  setPathname : (obj : URL) -> (value : String) -> JSIO ()
  setPathname a b = primJS $ URL.prim__setPathname a b
  
  export
  port : (obj : URL) -> JSIO String
  port a = primJS $ URL.prim__port a
  
  export
  setPort : (obj : URL) -> (value : String) -> JSIO ()
  setPort a b = primJS $ URL.prim__setPort a b
  
  export
  protocol : (obj : URL) -> JSIO String
  protocol a = primJS $ URL.prim__protocol a
  
  export
  setProtocol : (obj : URL) -> (value : String) -> JSIO ()
  setProtocol a b = primJS $ URL.prim__setProtocol a b
  
  export
  search : (obj : URL) -> JSIO String
  search a = primJS $ URL.prim__search a
  
  export
  setSearch : (obj : URL) -> (value : String) -> JSIO ()
  setSearch a b = primJS $ URL.prim__setSearch a b
  
  export
  searchParams : (obj : URL) -> JSIO URLSearchParams
  searchParams a = primJS $ URL.prim__searchParams a
  
  export
  username : (obj : URL) -> JSIO String
  username a = primJS $ URL.prim__username a
  
  export
  setUsername : (obj : URL) -> (value : String) -> JSIO ()
  setUsername a b = primJS $ URL.prim__setUsername a b
  
  export
  toJSON : (obj : URL) -> JSIO String
  toJSON a = primJS $ URL.prim__toJSON a

namespace URLSearchParams
  
  public export
  JSType URLSearchParams where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (init : UndefOr (Union3 (Array (Array String))
                                 (Record String String)
                                 String))
      -> JSIO URLSearchParams
  new a = primJS $ URLSearchParams.prim__new a
  
  export
  append :  (obj : URLSearchParams)
         -> (name : String)
         -> (value : String)
         -> JSIO ()
  append a b c = primJS $ URLSearchParams.prim__append a b c
  
  export
  delete : (obj : URLSearchParams) -> (name : String) -> JSIO ()
  delete a b = primJS $ URLSearchParams.prim__delete a b
  
  export
  getAll : (obj : URLSearchParams) -> (name : String) -> JSIO (Array String)
  getAll a b = primJS $ URLSearchParams.prim__getAll a b
  
  export
  get : (obj : URLSearchParams) -> (name : String) -> JSIO (Nullable String)
  get a b = primJS $ URLSearchParams.prim__get a b
  
  export
  has : (obj : URLSearchParams) -> (name : String) -> JSIO Boolean
  has a b = primJS $ URLSearchParams.prim__has a b
  
  export
  set :  (obj : URLSearchParams)
      -> (name : String)
      -> (value : String)
      -> JSIO ()
  set a b c = primJS $ URLSearchParams.prim__set a b c
  
  export
  sort : (obj : URLSearchParams) -> JSIO ()
  sort a = primJS $ URLSearchParams.prim__sort a


