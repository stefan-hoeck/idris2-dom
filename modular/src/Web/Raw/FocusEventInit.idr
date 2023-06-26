module Web.Raw.FocusEventInit

import JS
import Web.Types.EventInit
import Web.Types.EventTarget
import Web.Types.FocusEventInit
import Web.Types.UIEventInit


%default total


export
%foreign "browser:lambda:(a)=> ({relatedTarget: a})"
prim__new : UndefOr (Nullable EventTarget) -> PrimIO FocusEventInit


export
%foreign "browser:lambda:x=>x.relatedTarget"
prim__relatedTarget : FocusEventInit -> PrimIO (UndefOr (Nullable EventTarget))



export
%foreign "browser:lambda:(x,v)=>{x.relatedTarget = v}"
prim__setRelatedTarget :
     FocusEventInit
  -> UndefOr (Nullable EventTarget)
  -> PrimIO ()



export
new' :
     {auto _ : Cast t1 EventTarget}
  -> (relatedTarget : Optional (Maybe t1))
  -> JSIO FocusEventInit
new' a = primJS $ FocusEventInit.prim__new (omyUp a)

export
new : JSIO FocusEventInit
new = primJS $ FocusEventInit.prim__new undef


export
relatedTarget :
     {auto _ : Cast t FocusEventInit}
  -> t
  -> Attribute True Optional (Maybe EventTarget)
relatedTarget v = fromUndefOrPrim
                    "FocusEventInit.getrelatedTarget"
                    prim__relatedTarget
                    prim__setRelatedTarget
                    Nothing
                    (cast {to = FocusEventInit} v)

