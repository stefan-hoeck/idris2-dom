module Web.Raw.XPathNSResolver

import JS
import Web.Types.XPathNSResolver


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toXPathNSResolver :
     (Nullable String -> IO (Nullable String))
  -> PrimIO XPathNSResolver


export
toXPathNSResolver :
     (Nullable String -> IO (Nullable String))
  -> JSIO XPathNSResolver
toXPathNSResolver cb = primJS $ prim__toXPathNSResolver cb
