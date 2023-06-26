module Web.Raw.Worklet

import JS
import Web.Types.Worklet
import Web.Types.WorkletOptions


%default total


export
%foreign "browser:lambda:(x,a,b)=>x.addModule(a,b)"
prim__addModule :
     Worklet
  -> String
  -> UndefOr WorkletOptions
  -> PrimIO (Promise Undefined)


export
addModule' :
     {auto _ : Cast t3 WorkletOptions}
  -> (obj : Worklet)
  -> (moduleURL : String)
  -> (options : Optional t3)
  -> JSIO (Promise Undefined)
addModule' a b c = primJS $ Worklet.prim__addModule a b (optUp c)

export
addModule : (obj : Worklet) -> (moduleURL : String) -> JSIO (Promise Undefined)
addModule a b = primJS $ Worklet.prim__addModule a b undef

