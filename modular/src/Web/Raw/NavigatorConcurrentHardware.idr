module Web.Raw.NavigatorConcurrentHardware

import JS
import Web.Types.NavigatorConcurrentHardware


%default total


export
%foreign "browser:lambda:x=>x.hardwareConcurrency"
prim__hardwareConcurrency : NavigatorConcurrentHardware -> PrimIO JSBits64


export
hardwareConcurrency :
     {auto _ : Cast t1 NavigatorConcurrentHardware}
  -> (obj : t1)
  -> JSIO JSBits64
hardwareConcurrency a = primJS $
  NavigatorConcurrentHardware.prim__hardwareConcurrency (cast a)
