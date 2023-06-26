module Web.Raw.Settings

import JS
import Web.Types.Settings


%default total


export
%foreign "browser:lambda:()=> ({})"
prim__new : PrimIO Settings


export
new : JSIO Settings
new = primJS $ Settings.prim__new

