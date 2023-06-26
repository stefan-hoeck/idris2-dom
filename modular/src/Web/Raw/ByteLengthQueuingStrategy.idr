module Web.Raw.ByteLengthQueuingStrategy

import JS
import Web.Types.ByteLengthQueuingStrategy
import Web.Types.Function
import Web.Types.QueuingStrategyInit


%default total


export
%foreign "browser:lambda:(a)=> new ByteLengthQueuingStrategy(a)"
prim__new : QueuingStrategyInit -> PrimIO ByteLengthQueuingStrategy


export
%foreign "browser:lambda:x=>x.highWaterMark"
prim__highWaterMark : ByteLengthQueuingStrategy -> PrimIO Double


export
%foreign "browser:lambda:x=>x.size"
prim__size : ByteLengthQueuingStrategy -> PrimIO Function


export
new :
     {auto _ : Cast t1 QueuingStrategyInit}
  -> (init : t1)
  -> JSIO ByteLengthQueuingStrategy
new a = primJS $ ByteLengthQueuingStrategy.prim__new (cast a)


export
highWaterMark : (obj : ByteLengthQueuingStrategy) -> JSIO Double
highWaterMark a = primJS $ ByteLengthQueuingStrategy.prim__highWaterMark a


export
size : (obj : ByteLengthQueuingStrategy) -> JSIO Function
size a = primJS $ ByteLengthQueuingStrategy.prim__size a

