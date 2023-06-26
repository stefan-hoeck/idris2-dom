module Web.Raw.ReadableStreamDefaultReadResult

import JS
import Web.Types.ReadableStreamDefaultReadResult


%default total


export
%foreign "browser:lambda:(a,b)=> ({value: a,done: b})"
prim__new :
     UndefOr AnyPtr
  -> UndefOr Boolean
  -> PrimIO ReadableStreamDefaultReadResult


export
%foreign "browser:lambda:x=>x.done"
prim__done : ReadableStreamDefaultReadResult -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.done = v}"
prim__setDone : ReadableStreamDefaultReadResult -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.value"
prim__value : ReadableStreamDefaultReadResult -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : ReadableStreamDefaultReadResult -> UndefOr AnyPtr -> PrimIO ()



export
new' :
     (value : Optional Any)
  -> (done : Optional Bool)
  -> JSIO ReadableStreamDefaultReadResult
new' a b = primJS $
  ReadableStreamDefaultReadResult.prim__new (toFFI a) (toFFI b)

export
new : JSIO ReadableStreamDefaultReadResult
new = primJS $ ReadableStreamDefaultReadResult.prim__new undef undef


export
done :
     {auto _ : Cast t ReadableStreamDefaultReadResult}
  -> t
  -> Attribute False Optional Bool
done v = fromUndefOrPrimNoDefault
           "ReadableStreamDefaultReadResult.getdone"
           prim__done
           prim__setDone
           (cast {to = ReadableStreamDefaultReadResult} v)


export
value :
     {auto _ : Cast t ReadableStreamDefaultReadResult}
  -> t
  -> Attribute False Optional Any
value v = fromUndefOrPrimNoDefault
            "ReadableStreamDefaultReadResult.getvalue"
            prim__value
            prim__setValue
            (cast {to = ReadableStreamDefaultReadResult} v)
