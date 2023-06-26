module Web.Raw.ReadableStreamBYOBReadResult

import JS
import Web.Types.ReadableStreamBYOBReadResult


%default total


export
%foreign "browser:lambda:(a,b)=> ({value: a,done: b})"
prim__new :
     UndefOr
       (Union10
          Int8Array
          Int16Array
          Int32Array
          UInt8Array
          UInt8Array
          UInt8Array
          UInt8ClampedArray
          Float32Array
          Float64Array
          DataView)
  -> UndefOr Boolean
  -> PrimIO ReadableStreamBYOBReadResult


export
%foreign "browser:lambda:x=>x.done"
prim__done : ReadableStreamBYOBReadResult -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.done = v}"
prim__setDone : ReadableStreamBYOBReadResult -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.value"
prim__value :
     ReadableStreamBYOBReadResult
  -> PrimIO
       (UndefOr
          (Union10
             Int8Array
             Int16Array
             Int32Array
             UInt8Array
             UInt8Array
             UInt8Array
             UInt8ClampedArray
             Float32Array
             Float64Array
             DataView))



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue :
     ReadableStreamBYOBReadResult
  -> UndefOr
       (Union10
          Int8Array
          Int16Array
          Int32Array
          UInt8Array
          UInt8Array
          UInt8Array
          UInt8ClampedArray
          Float32Array
          Float64Array
          DataView)
  -> PrimIO ()



export
new' :
     (value : Optional
                (HSum
                   [ Int8Array
                   , Int16Array
                   , Int32Array
                   , UInt8Array
                   , UInt8Array
                   , UInt8Array
                   , UInt8ClampedArray
                   , Float32Array
                   , Float64Array
                   , DataView
                   ]))
  -> (done : Optional Bool)
  -> JSIO ReadableStreamBYOBReadResult
new' a b = primJS $ ReadableStreamBYOBReadResult.prim__new (toFFI a) (toFFI b)

export
new : JSIO ReadableStreamBYOBReadResult
new = primJS $ ReadableStreamBYOBReadResult.prim__new undef undef


export
done :
     {auto _ : Cast t ReadableStreamBYOBReadResult}
  -> t
  -> Attribute False Optional Bool
done v = fromUndefOrPrimNoDefault
           "ReadableStreamBYOBReadResult.getdone"
           prim__done
           prim__setDone
           (cast {to = ReadableStreamBYOBReadResult} v)


export
value :
     {auto _ : Cast t ReadableStreamBYOBReadResult}
  -> t
  -> Attribute False Optional (Union10
                                 Int8Array
                                 Int16Array
                                 Int32Array
                                 UInt8Array
                                 UInt8Array
                                 UInt8Array
                                 UInt8ClampedArray
                                 Float32Array
                                 Float64Array
                                 DataView)
value v = fromUndefOrPrimNoDefault
            "ReadableStreamBYOBReadResult.getvalue"
            prim__value
            prim__setValue
            (cast {to = ReadableStreamBYOBReadResult} v)
