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
  new : (url : String) -> (base : Optional String) -> JSIO URL
  new a b = primJS $ URL.prim__new a (toFFI b)

  export
  new' : (url : String) -> JSIO URL
  new' a = primJS $ URL.prim__new a undef
  
  export
  createObjectURL : (obj : NS I [ Blob , MediaSource ]) -> JSIO String
  createObjectURL a = primJS $ URL.prim__createObjectURL (toFFI a)
  
  export
  createObjectURL1 : (mediaSource : MediaSource) -> JSIO String
  createObjectURL1 a = primJS $ URL.prim__createObjectURL1 a
  
  export
  revokeObjectURL : (url : String) -> JSIO ()
  revokeObjectURL a = primJS $ URL.prim__revokeObjectURL a
  
  export
  hash : URL -> Attribute True I String
  hash = fromPrim "URL.gethash" prim__hash prim__setHash
  
  export
  host : URL -> Attribute True I String
  host = fromPrim "URL.gethost" prim__host prim__setHost
  
  export
  hostname : URL -> Attribute True I String
  hostname = fromPrim "URL.gethostname" prim__hostname prim__setHostname
  
  export
  href : URL -> Attribute True I String
  href = fromPrim "URL.gethref" prim__href prim__setHref
  
  export
  origin : (obj : URL) -> JSIO String
  origin a = primJS $ URL.prim__origin a
  
  export
  password : URL -> Attribute True I String
  password = fromPrim "URL.getpassword" prim__password prim__setPassword
  
  export
  pathname : URL -> Attribute True I String
  pathname = fromPrim "URL.getpathname" prim__pathname prim__setPathname
  
  export
  port : URL -> Attribute True I String
  port = fromPrim "URL.getport" prim__port prim__setPort
  
  export
  protocol : URL -> Attribute True I String
  protocol = fromPrim "URL.getprotocol" prim__protocol prim__setProtocol
  
  export
  search : URL -> Attribute True I String
  search = fromPrim "URL.getsearch" prim__search prim__setSearch
  
  export
  searchParams : (obj : URL) -> JSIO URLSearchParams
  searchParams a = primJS $ URL.prim__searchParams a
  
  export
  username : URL -> Attribute True I String
  username = fromPrim "URL.getusername" prim__username prim__setUsername
  
  export
  toJSON : (obj : URL) -> JSIO String
  toJSON a = primJS $ URL.prim__toJSON a

namespace URLSearchParams
  
  public export
  JSType URLSearchParams where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (init : Optional (NS I [ Array (Array String)
                                , Record String String
                                , String
                                ]))
      -> JSIO URLSearchParams
  new a = primJS $ URLSearchParams.prim__new (toFFI a)

  export
  new' : JSIO URLSearchParams
  new' = primJS $ URLSearchParams.prim__new undef
  
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
  get : (obj : URLSearchParams) -> (name : String) -> JSIO (Maybe String)
  get a b = tryJS "URLSearchParams.get" $ URLSearchParams.prim__get a b
  
  export
  has : (obj : URLSearchParams) -> (name : String) -> JSIO Bool
  has a b = tryJS "URLSearchParams.has" $ URLSearchParams.prim__has a b
  
  export
  set :  (obj : URLSearchParams)
      -> (name : String)
      -> (value : String)
      -> JSIO ()
  set a b c = primJS $ URLSearchParams.prim__set a b c
  
  export
  sort : (obj : URLSearchParams) -> JSIO ()
  sort a = primJS $ URLSearchParams.prim__sort a
  
  export
  toString : (obj : URLSearchParams) -> JSIO String
  toString a = primJS $ URLSearchParams.prim__toString a


