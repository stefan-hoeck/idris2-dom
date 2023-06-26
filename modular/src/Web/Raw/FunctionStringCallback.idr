module Web.Raw.FunctionStringCallback

import JS
import Web.Types.FunctionStringCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toFunctionStringCallback :
     (String -> IO ())
  -> PrimIO FunctionStringCallback


export
toFunctionStringCallback : (String -> IO ()) -> JSIO FunctionStringCallback
toFunctionStringCallback cb = primJS $ prim__toFunctionStringCallback cb

