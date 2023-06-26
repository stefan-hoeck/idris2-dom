module Web.Raw.CountQueuingStrategy

import JS
import Web.Types.CountQueuingStrategy
import Web.Types.Function
import Web.Types.QueuingStrategyInit


%default total


export
%foreign "browser:lambda:(a)=> new CountQueuingStrategy(a)"
prim__new : QueuingStrategyInit -> PrimIO CountQueuingStrategy


export
%foreign "browser:lambda:x=>x.highWaterMark"
prim__highWaterMark : CountQueuingStrategy -> PrimIO Double


export
%foreign "browser:lambda:x=>x.size"
prim__size : CountQueuingStrategy -> PrimIO Function


export
new :
     {auto _ : Cast t1 QueuingStrategyInit}
  -> (init : t1)
  -> JSIO CountQueuingStrategy
new a = primJS $ CountQueuingStrategy.prim__new (cast a)


export
highWaterMark : (obj : CountQueuingStrategy) -> JSIO Double
highWaterMark a = primJS $ CountQueuingStrategy.prim__highWaterMark a


export
size : (obj : CountQueuingStrategy) -> JSIO Function
size a = primJS $ CountQueuingStrategy.prim__size a
