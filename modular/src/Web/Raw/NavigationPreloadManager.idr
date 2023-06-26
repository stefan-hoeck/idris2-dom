module Web.Raw.NavigationPreloadManager

import JS
import Web.Types.NavigationPreloadManager
import Web.Types.NavigationPreloadState


%default total


export
%foreign "browser:lambda:x=>x.disable()"
prim__disable : NavigationPreloadManager -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.enable()"
prim__enable : NavigationPreloadManager -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.getState()"
prim__getState :
     NavigationPreloadManager
  -> PrimIO (Promise NavigationPreloadState)


export
%foreign "browser:lambda:(x,a)=>x.setHeaderValue(a)"
prim__setHeaderValue :
     NavigationPreloadManager
  -> ByteString
  -> PrimIO (Promise Undefined)


export
disable : (obj : NavigationPreloadManager) -> JSIO (Promise Undefined)
disable a = primJS $ NavigationPreloadManager.prim__disable a


export
enable : (obj : NavigationPreloadManager) -> JSIO (Promise Undefined)
enable a = primJS $ NavigationPreloadManager.prim__enable a


export
getState :
     (obj : NavigationPreloadManager)
  -> JSIO (Promise NavigationPreloadState)
getState a = primJS $ NavigationPreloadManager.prim__getState a


export
setHeaderValue :
     (obj : NavigationPreloadManager)
  -> (value : ByteString)
  -> JSIO (Promise Undefined)
setHeaderValue a b = primJS $ NavigationPreloadManager.prim__setHeaderValue a b
