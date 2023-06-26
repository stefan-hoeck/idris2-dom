module Web.Raw.WheelEventHandler

import JS
import Web.Types.WheelEvent
import Web.Types.WheelEventHandler


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toWheelEventHandler : (WheelEvent -> IO ()) -> PrimIO WheelEventHandler


export
toWheelEventHandler : (WheelEvent -> IO ()) -> JSIO WheelEventHandler
toWheelEventHandler cb = primJS $ prim__toWheelEventHandler cb
