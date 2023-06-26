module Web.Raw.WindowLocalStorage

import JS
import Web.Types.Storage
import Web.Types.WindowLocalStorage


%default total


export
%foreign "browser:lambda:x=>x.localStorage"
prim__localStorage : WindowLocalStorage -> PrimIO Storage


export
localStorage :
     {auto _ : Cast t1 WindowLocalStorage}
  -> (obj : t1)
  -> JSIO Storage
localStorage a = primJS $ WindowLocalStorage.prim__localStorage (cast a)
