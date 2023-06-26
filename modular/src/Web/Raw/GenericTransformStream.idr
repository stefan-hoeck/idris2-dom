module Web.Raw.GenericTransformStream

import JS
import Web.Types.GenericTransformStream
import Web.Types.ReadableStream
import Web.Types.WritableStream


%default total


export
%foreign "browser:lambda:x=>x.readable"
prim__readable : GenericTransformStream -> PrimIO ReadableStream


export
%foreign "browser:lambda:x=>x.writable"
prim__writable : GenericTransformStream -> PrimIO WritableStream


export
readable :
     {auto _ : Cast t1 GenericTransformStream}
  -> (obj : t1)
  -> JSIO ReadableStream
readable a = primJS $ GenericTransformStream.prim__readable (cast a)


export
writable :
     {auto _ : Cast t1 GenericTransformStream}
  -> (obj : t1)
  -> JSIO WritableStream
writable a = primJS $ GenericTransformStream.prim__writable (cast a)

