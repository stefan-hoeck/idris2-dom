module Web.Raw.UnderlyingSink

import JS
import Web.Types.UnderlyingSink
import Web.Types.UnderlyingSinkAbortCallback
import Web.Types.UnderlyingSinkCloseCallback
import Web.Types.UnderlyingSinkStartCallback
import Web.Types.UnderlyingSinkWriteCallback


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({start: a,write: b,close: c,abort: d,type: e})"
prim__new :
     UndefOr UnderlyingSinkStartCallback
  -> UndefOr UnderlyingSinkWriteCallback
  -> UndefOr UnderlyingSinkCloseCallback
  -> UndefOr UnderlyingSinkAbortCallback
  -> UndefOr AnyPtr
  -> PrimIO UnderlyingSink


export
%foreign "browser:lambda:x=>x.abort"
prim__abort : UnderlyingSink -> PrimIO (UndefOr UnderlyingSinkAbortCallback)



export
%foreign "browser:lambda:(x,v)=>{x.abort = v}"
prim__setAbort :
     UnderlyingSink
  -> UndefOr UnderlyingSinkAbortCallback
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.close"
prim__close : UnderlyingSink -> PrimIO (UndefOr UnderlyingSinkCloseCallback)



export
%foreign "browser:lambda:(x,v)=>{x.close = v}"
prim__setClose :
     UnderlyingSink
  -> UndefOr UnderlyingSinkCloseCallback
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.start"
prim__start : UnderlyingSink -> PrimIO (UndefOr UnderlyingSinkStartCallback)



export
%foreign "browser:lambda:(x,v)=>{x.start = v}"
prim__setStart :
     UnderlyingSink
  -> UndefOr UnderlyingSinkStartCallback
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : UnderlyingSink -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : UnderlyingSink -> UndefOr AnyPtr -> PrimIO ()



export
%foreign "browser:lambda:x=>x.write"
prim__write : UnderlyingSink -> PrimIO (UndefOr UnderlyingSinkWriteCallback)



export
%foreign "browser:lambda:(x,v)=>{x.write = v}"
prim__setWrite :
     UnderlyingSink
  -> UndefOr UnderlyingSinkWriteCallback
  -> PrimIO ()



export
new' :
     (start : Optional UnderlyingSinkStartCallback)
  -> (write : Optional UnderlyingSinkWriteCallback)
  -> (close : Optional UnderlyingSinkCloseCallback)
  -> (abort : Optional UnderlyingSinkAbortCallback)
  -> (type : Optional Any)
  -> JSIO UnderlyingSink
new' a b c d e = primJS $
  UnderlyingSink.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
new : JSIO UnderlyingSink
new = primJS $ UnderlyingSink.prim__new undef undef undef undef undef


export
abort :
     {auto _ : Cast t UnderlyingSink}
  -> t
  -> Attribute False Optional UnderlyingSinkAbortCallback
abort v = fromUndefOrPrimNoDefault
            "UnderlyingSink.getabort"
            prim__abort
            prim__setAbort
            (cast {to = UnderlyingSink} v)


export
close :
     {auto _ : Cast t UnderlyingSink}
  -> t
  -> Attribute False Optional UnderlyingSinkCloseCallback
close v = fromUndefOrPrimNoDefault
            "UnderlyingSink.getclose"
            prim__close
            prim__setClose
            (cast {to = UnderlyingSink} v)


export
start :
     {auto _ : Cast t UnderlyingSink}
  -> t
  -> Attribute False Optional UnderlyingSinkStartCallback
start v = fromUndefOrPrimNoDefault
            "UnderlyingSink.getstart"
            prim__start
            prim__setStart
            (cast {to = UnderlyingSink} v)


export
type : {auto _ : Cast t UnderlyingSink} -> t -> Attribute False Optional Any
type v = fromUndefOrPrimNoDefault
           "UnderlyingSink.gettype"
           prim__type
           prim__setType
           (cast {to = UnderlyingSink} v)


export
write :
     {auto _ : Cast t UnderlyingSink}
  -> t
  -> Attribute False Optional UnderlyingSinkWriteCallback
write v = fromUndefOrPrimNoDefault
            "UnderlyingSink.getwrite"
            prim__write
            prim__setWrite
            (cast {to = UnderlyingSink} v)

