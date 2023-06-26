module Web.Raw.QueuingStrategyInit

import JS
import Web.Types.QueuingStrategyInit


%default total


export
%foreign "browser:lambda:(a)=> ({highWaterMark: a})"
prim__new : Double -> PrimIO QueuingStrategyInit


export
%foreign "browser:lambda:x=>x.highWaterMark"
prim__highWaterMark : QueuingStrategyInit -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.highWaterMark = v}"
prim__setHighWaterMark : QueuingStrategyInit -> Double -> PrimIO ()



export
new : (highWaterMark : Double) -> JSIO QueuingStrategyInit
new a = primJS $ QueuingStrategyInit.prim__new a


export
highWaterMark :
     {auto _ : Cast t QueuingStrategyInit}
  -> t
  -> Attribute True Prelude.id Double
highWaterMark v = fromPrim
                    "QueuingStrategyInit.gethighWaterMark"
                    prim__highWaterMark
                    prim__setHighWaterMark
                    (cast {to = QueuingStrategyInit} v)
