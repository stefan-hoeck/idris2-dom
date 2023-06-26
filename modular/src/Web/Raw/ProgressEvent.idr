module Web.Raw.ProgressEvent

import JS
import Web.Types.Event
import Web.Types.ProgressEvent
import Web.Types.ProgressEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new ProgressEvent(a,b)"
prim__new : String -> UndefOr ProgressEventInit -> PrimIO ProgressEvent


export
%foreign "browser:lambda:x=>x.lengthComputable"
prim__lengthComputable : ProgressEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.loaded"
prim__loaded : ProgressEvent -> PrimIO JSBits64


export
%foreign "browser:lambda:x=>x.total"
prim__total : ProgressEvent -> PrimIO JSBits64


export
new' :
     {auto _ : Cast t2 ProgressEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO ProgressEvent
new' a b = primJS $ ProgressEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO ProgressEvent
new a = primJS $ ProgressEvent.prim__new a undef


export
lengthComputable : (obj : ProgressEvent) -> JSIO Bool
lengthComputable a = tryJS "ProgressEvent.lengthComputable" $
  ProgressEvent.prim__lengthComputable a


export
loaded : (obj : ProgressEvent) -> JSIO JSBits64
loaded a = primJS $ ProgressEvent.prim__loaded a


export
total_ : (obj : ProgressEvent) -> JSIO JSBits64
total_ a = primJS $ ProgressEvent.prim__total a
