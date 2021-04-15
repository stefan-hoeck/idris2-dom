module Web.Internal.WebidlPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMException
  
  export
  %foreign "browser:lambda:(a,b)=> new DOMException(a,b)"
  prim__new : UndefOr String -> UndefOr String -> PrimIO DOMException
  
  export
  %foreign "browser:lambda:x=>x.code"
  prim__code : DOMException -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:x=>x.message"
  prim__message : DOMException -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : DOMException -> PrimIO String



--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace Function
  
  export
  %foreign "browser:lambda:x=>(a)=>x(a)()"
  prim__toFunction : ( IO (Array AnyPtr) -> IO AnyPtr ) -> PrimIO Function

namespace VoidFunction
  
  export
  %foreign "browser:lambda:x=>()=>x()()"
  prim__toVoidFunction : (() -> IO ()) -> PrimIO VoidFunction