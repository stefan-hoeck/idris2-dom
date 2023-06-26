module Web.Raw.NavigatorCookies

import JS
import Web.Types.NavigatorCookies


%default total


export
%foreign "browser:lambda:x=>x.cookieEnabled"
prim__cookieEnabled : NavigatorCookies -> PrimIO Boolean


export
cookieEnabled : {auto _ : Cast t1 NavigatorCookies} -> (obj : t1) -> JSIO Bool
cookieEnabled a = tryJS "NavigatorCookies.cookieEnabled" $
  NavigatorCookies.prim__cookieEnabled (cast a)
