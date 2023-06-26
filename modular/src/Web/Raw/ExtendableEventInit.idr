module Web.Raw.ExtendableEventInit

import JS
import Web.Types.EventInit
import Web.Types.ExtendableEventInit


%default total


export
%foreign "browser:lambda:()=> ({})"
prim__new : PrimIO ExtendableEventInit


export
new : JSIO ExtendableEventInit
new = primJS $ ExtendableEventInit.prim__new
