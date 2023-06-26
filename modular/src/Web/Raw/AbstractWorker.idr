module Web.Raw.AbstractWorker

import JS
import Web.Types.AbstractWorker
import Web.Types.EventHandlerNonNull


%default total


export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror : AbstractWorker -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror : AbstractWorker -> Nullable EventHandlerNonNull -> PrimIO ()



export
onerror :
     {auto _ : Cast t AbstractWorker}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onerror v = fromNullablePrim
              "AbstractWorker.getonerror"
              prim__onerror
              prim__setOnerror
              (cast {to = AbstractWorker} v)

