module Web.Raw.MediaDeviceInfo

import JS
import Web.Types.MediaDeviceInfo
import Web.Types.MediaDeviceKind


%default total


export
%foreign "browser:lambda:x=>x.deviceId"
prim__deviceId : MediaDeviceInfo -> PrimIO String


export
%foreign "browser:lambda:x=>x.groupId"
prim__groupId : MediaDeviceInfo -> PrimIO String


export
%foreign "browser:lambda:x=>x.kind"
prim__kind : MediaDeviceInfo -> PrimIO String


export
%foreign "browser:lambda:x=>x.label"
prim__label : MediaDeviceInfo -> PrimIO String


export
%foreign "browser:lambda:x=>x.toJSON()"
prim__toJSON : MediaDeviceInfo -> PrimIO Object


export
deviceId : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO String
deviceId a = primJS $ MediaDeviceInfo.prim__deviceId (cast a)


export
groupId : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO String
groupId a = primJS $ MediaDeviceInfo.prim__groupId (cast a)


export
kind : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO MediaDeviceKind
kind a = tryJS "MediaDeviceInfo.kind" $ MediaDeviceInfo.prim__kind (cast a)


export
label : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO String
label a = primJS $ MediaDeviceInfo.prim__label (cast a)


export
toJSON : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO Object
toJSON a = primJS $ MediaDeviceInfo.prim__toJSON (cast a)

