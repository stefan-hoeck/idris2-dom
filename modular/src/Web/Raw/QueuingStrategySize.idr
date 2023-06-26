module Web.Raw.QueuingStrategySize

import JS
import Web.Types.QueuingStrategySize


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toQueuingStrategySize :
     (UndefOr AnyPtr -> IO Double)
  -> PrimIO QueuingStrategySize


export
toQueuingStrategySize :
     (UndefOr AnyPtr -> IO Double)
  -> JSIO QueuingStrategySize
toQueuingStrategySize cb = primJS $ prim__toQueuingStrategySize cb

