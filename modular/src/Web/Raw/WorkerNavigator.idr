module Web.Raw.WorkerNavigator

import JS
import Web.Types.NavigatorConcurrentHardware
import Web.Types.NavigatorID
import Web.Types.NavigatorLanguage
import Web.Types.NavigatorOnLine
import Web.Types.Permissions
import Web.Types.ServiceWorkerContainer
import Web.Types.WorkerNavigator


%default total


export
%foreign "browser:lambda:x=>x.permissions"
prim__permissions : WorkerNavigator -> PrimIO Permissions


export
%foreign "browser:lambda:x=>x.serviceWorker"
prim__serviceWorker : WorkerNavigator -> PrimIO ServiceWorkerContainer


export
permissions : (obj : WorkerNavigator) -> JSIO Permissions
permissions a = primJS $ WorkerNavigator.prim__permissions a


export
serviceWorker : (obj : WorkerNavigator) -> JSIO ServiceWorkerContainer
serviceWorker a = primJS $ WorkerNavigator.prim__serviceWorker a
