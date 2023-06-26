module Web.Raw.StreamPipeOptions

import JS
import Web.Types.AbortSignal
import Web.Types.StreamPipeOptions


%default total


export
%foreign "browser:lambda:(a,b,c,d)=> ({preventClose: a,preventAbort: b,preventCancel: c,signal: d})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr AbortSignal
  -> PrimIO StreamPipeOptions


export
%foreign "browser:lambda:x=>x.preventAbort"
prim__preventAbort : StreamPipeOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.preventAbort = v}"
prim__setPreventAbort : StreamPipeOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.preventCancel"
prim__preventCancel : StreamPipeOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.preventCancel = v}"
prim__setPreventCancel : StreamPipeOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.preventClose"
prim__preventClose : StreamPipeOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.preventClose = v}"
prim__setPreventClose : StreamPipeOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.signal"
prim__signal : StreamPipeOptions -> PrimIO (UndefOr AbortSignal)



export
%foreign "browser:lambda:(x,v)=>{x.signal = v}"
prim__setSignal : StreamPipeOptions -> UndefOr AbortSignal -> PrimIO ()



export
new' :
     (preventClose : Optional Bool)
  -> (preventAbort : Optional Bool)
  -> (preventCancel : Optional Bool)
  -> (signal : Optional AbortSignal)
  -> JSIO StreamPipeOptions
new' a b c d = primJS $
  StreamPipeOptions.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

export
new : JSIO StreamPipeOptions
new = primJS $ StreamPipeOptions.prim__new undef undef undef undef


export
preventAbort :
     {auto _ : Cast t StreamPipeOptions}
  -> t
  -> Attribute True Optional Bool
preventAbort v = fromUndefOrPrim
                   "StreamPipeOptions.getpreventAbort"
                   prim__preventAbort
                   prim__setPreventAbort
                   False
                   (cast {to = StreamPipeOptions} v)


export
preventCancel :
     {auto _ : Cast t StreamPipeOptions}
  -> t
  -> Attribute True Optional Bool
preventCancel v = fromUndefOrPrim
                    "StreamPipeOptions.getpreventCancel"
                    prim__preventCancel
                    prim__setPreventCancel
                    False
                    (cast {to = StreamPipeOptions} v)


export
preventClose :
     {auto _ : Cast t StreamPipeOptions}
  -> t
  -> Attribute True Optional Bool
preventClose v = fromUndefOrPrim
                   "StreamPipeOptions.getpreventClose"
                   prim__preventClose
                   prim__setPreventClose
                   False
                   (cast {to = StreamPipeOptions} v)


export
signal :
     {auto _ : Cast t StreamPipeOptions}
  -> t
  -> Attribute False Optional AbortSignal
signal v = fromUndefOrPrimNoDefault
             "StreamPipeOptions.getsignal"
             prim__signal
             prim__setSignal
             (cast {to = StreamPipeOptions} v)
