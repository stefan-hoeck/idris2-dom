module Web.Raw.DocumentAndElementEventHandlers

import JS
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.EventHandlerNonNull


%default total


export
%foreign "browser:lambda:x=>x.oncopy"
prim__oncopy :
     DocumentAndElementEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncopy = v}"
prim__setOncopy :
     DocumentAndElementEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oncut"
prim__oncut :
     DocumentAndElementEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncut = v}"
prim__setOncut :
     DocumentAndElementEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onpaste"
prim__onpaste :
     DocumentAndElementEventHandlers
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onpaste = v}"
prim__setOnpaste :
     DocumentAndElementEventHandlers
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
oncopy :
     {auto _ : Cast t DocumentAndElementEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oncopy v = fromNullablePrim
             "DocumentAndElementEventHandlers.getoncopy"
             prim__oncopy
             prim__setOncopy
             (cast {to = DocumentAndElementEventHandlers} v)


export
oncut :
     {auto _ : Cast t DocumentAndElementEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oncut v = fromNullablePrim
            "DocumentAndElementEventHandlers.getoncut"
            prim__oncut
            prim__setOncut
            (cast {to = DocumentAndElementEventHandlers} v)


export
onpaste :
     {auto _ : Cast t DocumentAndElementEventHandlers}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onpaste v = fromNullablePrim
              "DocumentAndElementEventHandlers.getonpaste"
              prim__onpaste
              prim__setOnpaste
              (cast {to = DocumentAndElementEventHandlers} v)
