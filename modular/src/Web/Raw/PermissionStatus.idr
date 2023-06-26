module Web.Raw.PermissionStatus

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.PermissionState
import Web.Types.PermissionStatus


%default total


export
%foreign "browser:lambda:x=>x.onchange"
prim__onchange : PermissionStatus -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onchange = v}"
prim__setOnchange :
     PermissionStatus
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.state"
prim__state : PermissionStatus -> PrimIO String


export
onchange : PermissionStatus -> Attribute False Maybe EventHandlerNonNull
onchange v = fromNullablePrim
               "PermissionStatus.getonchange"
               prim__onchange
               prim__setOnchange
               v


export
state : (obj : PermissionStatus) -> JSIO PermissionState
state a = tryJS "PermissionStatus.state" $ PermissionStatus.prim__state a
