module Web.Raw.Url
 
import JS
import Web.Internal.UrlPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace URL
  
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
  createObjectURL1 :  JSType t1
                   => {auto 0 _ : Elem MediaSource (Types t1)}
                   -> (mediaSource : t1)
                   -> JSIO String
  createObjectURL1 a = primJS $ URL.prim__createObjectURL1 (up a)
  
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
  origin :  JSType t1
         => {auto 0 _ : Elem URL (Types t1)}
         -> (obj : t1)
         -> JSIO String
  origin a = primJS $ URL.prim__origin (up a)
  
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
  searchParams :  JSType t1
               => {auto 0 _ : Elem URL (Types t1)}
               -> (obj : t1)
               -> JSIO URLSearchParams
  searchParams a = primJS $ URL.prim__searchParams (up a)
  
  export
  username : URL -> Attribute True I String
  username = fromPrim "URL.getusername" prim__username prim__setUsername
  
  export
  toJSON :  JSType t1
         => {auto 0 _ : Elem URL (Types t1)}
         -> (obj : t1)
         -> JSIO String
  toJSON a = primJS $ URL.prim__toJSON (up a)

namespace URLSearchParams
  
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
  append :  JSType t1
         => {auto 0 _ : Elem URLSearchParams (Types t1)}
         -> (obj : t1)
         -> (name : String)
         -> (value : String)
         -> JSIO ()
  append a b c = primJS $ URLSearchParams.prim__append (up a) b c
  
  export
  delete :  JSType t1
         => {auto 0 _ : Elem URLSearchParams (Types t1)}
         -> (obj : t1)
         -> (name : String)
         -> JSIO ()
  delete a b = primJS $ URLSearchParams.prim__delete (up a) b
  
  export
  getAll :  JSType t1
         => {auto 0 _ : Elem URLSearchParams (Types t1)}
         -> (obj : t1)
         -> (name : String)
         -> JSIO (Array String)
  getAll a b = primJS $ URLSearchParams.prim__getAll (up a) b
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem URLSearchParams (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> JSIO (Maybe String)
  get a b = tryJS "URLSearchParams.get" $ URLSearchParams.prim__get (up a) b
  
  export
  has :  JSType t1
      => {auto 0 _ : Elem URLSearchParams (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> JSIO Bool
  has a b = tryJS "URLSearchParams.has" $ URLSearchParams.prim__has (up a) b
  
  export
  set :  JSType t1
      => {auto 0 _ : Elem URLSearchParams (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> (value : String)
      -> JSIO ()
  set a b c = primJS $ URLSearchParams.prim__set (up a) b c
  
  export
  sort :  JSType t1
       => {auto 0 _ : Elem URLSearchParams (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  sort a = primJS $ URLSearchParams.prim__sort (up a)
  
  export
  toString :  JSType t1
           => {auto 0 _ : Elem URLSearchParams (Types t1)}
           -> (obj : t1)
           -> JSIO String
  toString a = primJS $ URLSearchParams.prim__toString (up a)


