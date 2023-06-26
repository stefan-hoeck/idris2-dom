module Web.Raw.Capabilities

import JS
import Web.Types.Capabilities


%default total


export
%foreign "browser:lambda:()=> ({})"
prim__new : PrimIO Capabilities


export
new : JSIO Capabilities
new = primJS $ Capabilities.prim__new
