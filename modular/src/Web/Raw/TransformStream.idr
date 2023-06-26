module Web.Raw.TransformStream

import JS
import Web.Types.QueuingStrategy
import Web.Types.ReadableStream
import Web.Types.TransformStream
import Web.Types.WritableStream


%default total


export
%foreign "browser:lambda:(a,b,c)=> new TransformStream(a,b,c)"
prim__new :
     UndefOr Object
  -> UndefOr QueuingStrategy
  -> UndefOr QueuingStrategy
  -> PrimIO TransformStream


export
%foreign "browser:lambda:x=>x.readable"
prim__readable : TransformStream -> PrimIO ReadableStream


export
%foreign "browser:lambda:x=>x.writable"
prim__writable : TransformStream -> PrimIO WritableStream


export
new' :
     {auto _ : Cast t1 Object}
  -> {auto _ : Cast t2 QueuingStrategy}
  -> {auto _ : Cast t3 QueuingStrategy}
  -> (transformer : Optional t1)
  -> (writableStrategy : Optional t2)
  -> (readableStrategy : Optional t3)
  -> JSIO TransformStream
new' a b c = primJS $ TransformStream.prim__new (optUp a) (optUp b) (optUp c)

export
new : JSIO TransformStream
new = primJS $ TransformStream.prim__new undef undef undef


export
readable : (obj : TransformStream) -> JSIO ReadableStream
readable a = primJS $ TransformStream.prim__readable a


export
writable : (obj : TransformStream) -> JSIO WritableStream
writable a = primJS $ TransformStream.prim__writable a

