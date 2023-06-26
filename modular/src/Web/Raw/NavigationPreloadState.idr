module Web.Raw.NavigationPreloadState

import JS
import Web.Types.NavigationPreloadState


%default total


export
%foreign "browser:lambda:(a,b)=> ({enabled: a,headerValue: b})"
prim__new :
     UndefOr Boolean
  -> UndefOr ByteString
  -> PrimIO NavigationPreloadState


export
%foreign "browser:lambda:x=>x.enabled"
prim__enabled : NavigationPreloadState -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.enabled = v}"
prim__setEnabled : NavigationPreloadState -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.headerValue"
prim__headerValue : NavigationPreloadState -> PrimIO (UndefOr ByteString)



export
%foreign "browser:lambda:(x,v)=>{x.headerValue = v}"
prim__setHeaderValue : NavigationPreloadState -> UndefOr ByteString -> PrimIO ()



export
new' :
     (enabled : Optional Bool)
  -> (headerValue : Optional ByteString)
  -> JSIO NavigationPreloadState
new' a b = primJS $ NavigationPreloadState.prim__new (toFFI a) (toFFI b)

export
new : JSIO NavigationPreloadState
new = primJS $ NavigationPreloadState.prim__new undef undef


export
enabled :
     {auto _ : Cast t NavigationPreloadState}
  -> t
  -> Attribute True Optional Bool
enabled v = fromUndefOrPrim
              "NavigationPreloadState.getenabled"
              prim__enabled
              prim__setEnabled
              False
              (cast {to = NavigationPreloadState} v)


export
headerValue :
     {auto _ : Cast t NavigationPreloadState}
  -> t
  -> Attribute False Optional ByteString
headerValue v = fromUndefOrPrimNoDefault
                  "NavigationPreloadState.getheaderValue"
                  prim__headerValue
                  prim__setHeaderValue
                  (cast {to = NavigationPreloadState} v)

