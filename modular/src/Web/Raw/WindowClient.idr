module Web.Raw.WindowClient

import JS
import Web.Types.Client
import Web.Types.VisibilityState
import Web.Types.WindowClient


%default total


export
%foreign "browser:lambda:x=>x.ancestorOrigins"
prim__ancestorOrigins : WindowClient -> PrimIO (Array String)


export
%foreign "browser:lambda:x=>x.focused"
prim__focused : WindowClient -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.visibilityState"
prim__visibilityState : WindowClient -> PrimIO String


export
%foreign "browser:lambda:x=>x.focus()"
prim__focus : WindowClient -> PrimIO (Promise WindowClient)


export
%foreign "browser:lambda:(x,a)=>x.navigate(a)"
prim__navigate :
     WindowClient
  -> String
  -> PrimIO (Promise (Nullable WindowClient))


export
ancestorOrigins : (obj : WindowClient) -> JSIO (Array String)
ancestorOrigins a = primJS $ WindowClient.prim__ancestorOrigins a


export
focused : (obj : WindowClient) -> JSIO Bool
focused a = tryJS "WindowClient.focused" $ WindowClient.prim__focused a


export
visibilityState : (obj : WindowClient) -> JSIO VisibilityState
visibilityState a = tryJS "WindowClient.visibilityState" $
  WindowClient.prim__visibilityState a


export
focus : (obj : WindowClient) -> JSIO (Promise WindowClient)
focus a = primJS $ WindowClient.prim__focus a


export
navigate :
     (obj : WindowClient)
  -> (url : String)
  -> JSIO (Promise (Nullable WindowClient))
navigate a b = primJS $ WindowClient.prim__navigate a b
