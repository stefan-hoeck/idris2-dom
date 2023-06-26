module Web.Raw.TimeRanges

import JS
import Web.Types.TimeRanges


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : TimeRanges -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.end(a)"
prim__end : TimeRanges -> Bits32 -> PrimIO Double


export
%foreign "browser:lambda:(x,a)=>x.start(a)"
prim__start : TimeRanges -> Bits32 -> PrimIO Double


export
length : (obj : TimeRanges) -> JSIO Bits32
length a = primJS $ TimeRanges.prim__length a


export
end : (obj : TimeRanges) -> (index : Bits32) -> JSIO Double
end a b = primJS $ TimeRanges.prim__end a b


export
start : (obj : TimeRanges) -> (index : Bits32) -> JSIO Double
start a b = primJS $ TimeRanges.prim__start a b
