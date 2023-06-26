module Web.Raw.SubmitEventInit

import JS
import Web.Types.EventInit
import Web.Types.HTMLElement
import Web.Types.SubmitEventInit


%default total


export
%foreign "browser:lambda:(a)=> ({submitter: a})"
prim__new : UndefOr (Nullable HTMLElement) -> PrimIO SubmitEventInit


export
%foreign "browser:lambda:x=>x.submitter"
prim__submitter : SubmitEventInit -> PrimIO (UndefOr (Nullable HTMLElement))



export
%foreign "browser:lambda:(x,v)=>{x.submitter = v}"
prim__setSubmitter :
     SubmitEventInit
  -> UndefOr (Nullable HTMLElement)
  -> PrimIO ()



export
new' :
     {auto _ : Cast t1 HTMLElement}
  -> (submitter : Optional (Maybe t1))
  -> JSIO SubmitEventInit
new' a = primJS $ SubmitEventInit.prim__new (omyUp a)

export
new : JSIO SubmitEventInit
new = primJS $ SubmitEventInit.prim__new undef


export
submitter :
     {auto _ : Cast t SubmitEventInit}
  -> t
  -> Attribute True Optional (Maybe HTMLElement)
submitter v = fromUndefOrPrim
                "SubmitEventInit.getsubmitter"
                prim__submitter
                prim__setSubmitter
                Nothing
                (cast {to = SubmitEventInit} v)

