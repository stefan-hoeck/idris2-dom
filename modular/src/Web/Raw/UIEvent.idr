module Web.Raw.UIEvent

import JS
import Web.Types.Event
import Web.Types.UIEvent
import Web.Types.Window


%default total


export
%foreign "browser:lambda:x=>x.detail"
prim__detail : UIEvent -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.view"
prim__view : UIEvent -> PrimIO (Nullable Window)


export
%foreign "browser:lambda:x=>x.which"
prim__which : UIEvent -> PrimIO Bits32


export
detail : {auto _ : Cast t1 UIEvent} -> (obj : t1) -> JSIO Int32
detail a = primJS $ UIEvent.prim__detail (cast a)


export
view : {auto _ : Cast t1 UIEvent} -> (obj : t1) -> JSIO (Maybe Window)
view a = tryJS "UIEvent.view" $ UIEvent.prim__view (cast a)


export
which : {auto _ : Cast t1 UIEvent} -> (obj : t1) -> JSIO Bits32
which a = primJS $ UIEvent.prim__which (cast a)
