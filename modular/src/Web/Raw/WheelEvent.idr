module Web.Raw.WheelEvent

import JS
import Web.Types.Event
import Web.Types.MouseEvent
import Web.Types.UIEvent
import Web.Types.WheelEvent


%default total


export
DOM_DELTA_LINE : Bits32
DOM_DELTA_LINE = 0x1


export
DOM_DELTA_PAGE : Bits32
DOM_DELTA_PAGE = 0x2


export
DOM_DELTA_PIXEL : Bits32
DOM_DELTA_PIXEL = 0x0


export
%foreign "browser:lambda:x=>x.deltaMode"
prim__deltaMode : WheelEvent -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.deltaX"
prim__deltaX : WheelEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.deltaY"
prim__deltaY : WheelEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.deltaZ"
prim__deltaZ : WheelEvent -> PrimIO Double


export
deltaMode : (obj : WheelEvent) -> JSIO Bits32
deltaMode a = primJS $ WheelEvent.prim__deltaMode a


export
deltaX : (obj : WheelEvent) -> JSIO Double
deltaX a = primJS $ WheelEvent.prim__deltaX a


export
deltaY : (obj : WheelEvent) -> JSIO Double
deltaY a = primJS $ WheelEvent.prim__deltaY a


export
deltaZ : (obj : WheelEvent) -> JSIO Double
deltaZ a = primJS $ WheelEvent.prim__deltaZ a
