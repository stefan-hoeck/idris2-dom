module Web.Raw.NavigatorContentUtils

import JS
import Web.Types.NavigatorContentUtils


%default total


export
%foreign "browser:lambda:(x,a,b)=>x.registerProtocolHandler(a,b)"
prim__registerProtocolHandler :
     NavigatorContentUtils
  -> String
  -> String
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.unregisterProtocolHandler(a,b)"
prim__unregisterProtocolHandler :
     NavigatorContentUtils
  -> String
  -> String
  -> PrimIO ()


export
registerProtocolHandler :
     {auto _ : Cast t1 NavigatorContentUtils}
  -> (obj : t1)
  -> (scheme : String)
  -> (url : String)
  -> JSIO ()
registerProtocolHandler a b c = primJS $
  NavigatorContentUtils.prim__registerProtocolHandler (cast a) b c


export
unregisterProtocolHandler :
     {auto _ : Cast t1 NavigatorContentUtils}
  -> (obj : t1)
  -> (scheme : String)
  -> (url : String)
  -> JSIO ()
unregisterProtocolHandler a b c = primJS $
  NavigatorContentUtils.prim__unregisterProtocolHandler (cast a) b c

