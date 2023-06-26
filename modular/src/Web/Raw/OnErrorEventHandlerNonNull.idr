module Web.Raw.OnErrorEventHandlerNonNull

import JS
import Web.Types.Event
import Web.Types.OnErrorEventHandlerNonNull


%default total


export
%foreign "browser:lambda:x=>(a,b,c,d,e)=>x(a,b,c,d,e)()"
prim__toOnErrorEventHandlerNonNull :
     (  Union2 Event String
     -> UndefOr String
     -> UndefOr Bits32
     -> UndefOr Bits32
     -> UndefOr AnyPtr
     -> IO AnyPtr
     )
  -> PrimIO OnErrorEventHandlerNonNull


export
toOnErrorEventHandlerNonNull :
     (  Union2 Event String
     -> UndefOr String
     -> UndefOr Bits32
     -> UndefOr Bits32
     -> UndefOr AnyPtr
     -> IO AnyPtr
     )
  -> JSIO OnErrorEventHandlerNonNull
toOnErrorEventHandlerNonNull cb = primJS $ prim__toOnErrorEventHandlerNonNull cb
