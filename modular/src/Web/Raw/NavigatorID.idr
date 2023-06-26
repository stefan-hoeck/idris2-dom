module Web.Raw.NavigatorID

import JS
import Web.Types.NavigatorID


%default total


export
%foreign "browser:lambda:x=>x.appCodeName"
prim__appCodeName : NavigatorID -> PrimIO String


export
%foreign "browser:lambda:x=>x.appName"
prim__appName : NavigatorID -> PrimIO String


export
%foreign "browser:lambda:x=>x.appVersion"
prim__appVersion : NavigatorID -> PrimIO String


export
%foreign "browser:lambda:x=>x.platform"
prim__platform : NavigatorID -> PrimIO String


export
%foreign "browser:lambda:x=>x.product"
prim__product : NavigatorID -> PrimIO String


export
%foreign "browser:lambda:x=>x.productSub"
prim__productSub : NavigatorID -> PrimIO String


export
%foreign "browser:lambda:x=>x.userAgent"
prim__userAgent : NavigatorID -> PrimIO String


export
%foreign "browser:lambda:x=>x.vendor"
prim__vendor : NavigatorID -> PrimIO String


export
%foreign "browser:lambda:x=>x.vendorSub"
prim__vendorSub : NavigatorID -> PrimIO String


export
appCodeName : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
appCodeName a = primJS $ NavigatorID.prim__appCodeName (cast a)


export
appName : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
appName a = primJS $ NavigatorID.prim__appName (cast a)


export
appVersion : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
appVersion a = primJS $ NavigatorID.prim__appVersion (cast a)


export
platform : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
platform a = primJS $ NavigatorID.prim__platform (cast a)


export
product : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
product a = primJS $ NavigatorID.prim__product (cast a)


export
productSub : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
productSub a = primJS $ NavigatorID.prim__productSub (cast a)


export
userAgent : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
userAgent a = primJS $ NavigatorID.prim__userAgent (cast a)


export
vendor : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
vendor a = primJS $ NavigatorID.prim__vendor (cast a)


export
vendorSub : {auto _ : Cast t1 NavigatorID} -> (obj : t1) -> JSIO String
vendorSub a = primJS $ NavigatorID.prim__vendorSub (cast a)

