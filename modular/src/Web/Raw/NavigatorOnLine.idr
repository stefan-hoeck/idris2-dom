module Web.Raw.NavigatorOnLine

import JS
import Web.Types.NavigatorOnLine


%default total


export
%foreign "browser:lambda:x=>x.onLine"
prim__onLine : NavigatorOnLine -> PrimIO Boolean


export
onLine : {auto _ : Cast t1 NavigatorOnLine} -> (obj : t1) -> JSIO Bool
onLine a = tryJS "NavigatorOnLine.onLine" $
  NavigatorOnLine.prim__onLine (cast a)
