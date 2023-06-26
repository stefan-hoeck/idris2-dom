module Web.Raw.StaticRange

import JS
import Web.Types.AbstractRange
import Web.Types.StaticRange
import Web.Types.StaticRangeInit


%default total


export
%foreign "browser:lambda:(a)=> new StaticRange(a)"
prim__new : StaticRangeInit -> PrimIO StaticRange


export
new : {auto _ : Cast t1 StaticRangeInit} -> (init : t1) -> JSIO StaticRange
new a = primJS $ StaticRange.prim__new (cast a)
