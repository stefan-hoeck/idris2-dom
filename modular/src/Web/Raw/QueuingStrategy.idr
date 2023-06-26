module Web.Raw.QueuingStrategy

import JS
import Web.Types.QueuingStrategy
import Web.Types.QueuingStrategySize


%default total


export
%foreign "browser:lambda:(a,b)=> ({highWaterMark: a,size: b})"
prim__new :
     UndefOr Double
  -> UndefOr QueuingStrategySize
  -> PrimIO QueuingStrategy


export
%foreign "browser:lambda:x=>x.highWaterMark"
prim__highWaterMark : QueuingStrategy -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.highWaterMark = v}"
prim__setHighWaterMark : QueuingStrategy -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.size"
prim__size : QueuingStrategy -> PrimIO (UndefOr QueuingStrategySize)



export
%foreign "browser:lambda:(x,v)=>{x.size = v}"
prim__setSize : QueuingStrategy -> UndefOr QueuingStrategySize -> PrimIO ()



export
new' :
     (highWaterMark : Optional Double)
  -> (size : Optional QueuingStrategySize)
  -> JSIO QueuingStrategy
new' a b = primJS $ QueuingStrategy.prim__new (toFFI a) (toFFI b)

export
new : JSIO QueuingStrategy
new = primJS $ QueuingStrategy.prim__new undef undef


export
highWaterMark :
     {auto _ : Cast t QueuingStrategy}
  -> t
  -> Attribute False Optional Double
highWaterMark v = fromUndefOrPrimNoDefault
                    "QueuingStrategy.gethighWaterMark"
                    prim__highWaterMark
                    prim__setHighWaterMark
                    (cast {to = QueuingStrategy} v)


export
size :
     {auto _ : Cast t QueuingStrategy}
  -> t
  -> Attribute False Optional QueuingStrategySize
size v = fromUndefOrPrimNoDefault
           "QueuingStrategy.getsize"
           prim__size
           prim__setSize
           (cast {to = QueuingStrategy} v)

