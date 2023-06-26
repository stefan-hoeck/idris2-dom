module Web.Raw.ReadableWritablePair

import JS
import Web.Types.ReadableStream
import Web.Types.ReadableWritablePair
import Web.Types.WritableStream


%default total


export
%foreign "browser:lambda:(a,b)=> ({readable: a,writable: b})"
prim__new : ReadableStream -> WritableStream -> PrimIO ReadableWritablePair


export
%foreign "browser:lambda:x=>x.readable"
prim__readable : ReadableWritablePair -> PrimIO ReadableStream



export
%foreign "browser:lambda:(x,v)=>{x.readable = v}"
prim__setReadable : ReadableWritablePair -> ReadableStream -> PrimIO ()



export
%foreign "browser:lambda:x=>x.writable"
prim__writable : ReadableWritablePair -> PrimIO WritableStream



export
%foreign "browser:lambda:(x,v)=>{x.writable = v}"
prim__setWritable : ReadableWritablePair -> WritableStream -> PrimIO ()



export
new :
     (readable : ReadableStream)
  -> (writable : WritableStream)
  -> JSIO ReadableWritablePair
new a b = primJS $ ReadableWritablePair.prim__new a b


export
readable :
     {auto _ : Cast t ReadableWritablePair}
  -> t
  -> Attribute True Prelude.id ReadableStream
readable v = fromPrim
               "ReadableWritablePair.getreadable"
               prim__readable
               prim__setReadable
               (cast {to = ReadableWritablePair} v)


export
writable :
     {auto _ : Cast t ReadableWritablePair}
  -> t
  -> Attribute True Prelude.id WritableStream
writable v = fromPrim
               "ReadableWritablePair.getwritable"
               prim__writable
               prim__setWritable
               (cast {to = ReadableWritablePair} v)

