module Web.Raw.ConstraintSet

import JS
import Web.Types.ConstraintSet


%default total


export
%foreign "browser:lambda:()=> ({})"
prim__new : PrimIO ConstraintSet


export
new : JSIO ConstraintSet
new = primJS $ ConstraintSet.prim__new

