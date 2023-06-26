module Web.Raw.Permissions

import JS
import Web.Types.PermissionStatus
import Web.Types.Permissions


%default total


export
%foreign "browser:lambda:(x,a)=>x.query(a)"
prim__query : Permissions -> Object -> PrimIO (Promise PermissionStatus)


export
query :
     {auto _ : Cast t2 Object}
  -> (obj : Permissions)
  -> (permissionDesc : t2)
  -> JSIO (Promise PermissionStatus)
query a b = primJS $ Permissions.prim__query a (cast b)

