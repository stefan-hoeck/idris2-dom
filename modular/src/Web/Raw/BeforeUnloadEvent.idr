module Web.Raw.BeforeUnloadEvent

import JS
import Web.Types.BeforeUnloadEvent
import Web.Types.Event


%default total


export
%foreign "browser:lambda:x=>x.returnValue"
prim__returnValue : BeforeUnloadEvent -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.returnValue = v}"
prim__setReturnValue : BeforeUnloadEvent -> String -> PrimIO ()



export
returnValue : BeforeUnloadEvent -> Attribute True Prelude.id String
returnValue v = fromPrim
                  "BeforeUnloadEvent.getreturnValue"
                  prim__returnValue
                  prim__setReturnValue
                  v

