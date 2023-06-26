module Web.Raw.DocumentFragment

import JS
import Web.Types.DocumentFragment
import Web.Types.EventTarget
import Web.Types.Node
import Web.Types.NonElementParentNode
import Web.Types.ParentNode


%default total


export
%foreign "browser:lambda:()=> new DocumentFragment()"
prim__new : PrimIO DocumentFragment


export
new : JSIO DocumentFragment
new = primJS $ DocumentFragment.prim__new

