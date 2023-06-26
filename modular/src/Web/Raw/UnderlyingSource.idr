module Web.Raw.UnderlyingSource

import JS
import Web.Types.ReadableStreamType
import Web.Types.UnderlyingSource
import Web.Types.UnderlyingSourceCancelCallback
import Web.Types.UnderlyingSourcePullCallback
import Web.Types.UnderlyingSourceStartCallback


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({start: a,pull: b,cancel: c,type: d,autoAllocateChunkSize: e})"
prim__new :
     UndefOr UnderlyingSourceStartCallback
  -> UndefOr UnderlyingSourcePullCallback
  -> UndefOr UnderlyingSourceCancelCallback
  -> UndefOr String
  -> UndefOr JSBits64
  -> PrimIO UnderlyingSource


export
%foreign "browser:lambda:x=>x.autoAllocateChunkSize"
prim__autoAllocateChunkSize : UnderlyingSource -> PrimIO (UndefOr JSBits64)



export
%foreign "browser:lambda:(x,v)=>{x.autoAllocateChunkSize = v}"
prim__setAutoAllocateChunkSize :
     UnderlyingSource
  -> UndefOr JSBits64
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cancel"
prim__cancel :
     UnderlyingSource
  -> PrimIO (UndefOr UnderlyingSourceCancelCallback)



export
%foreign "browser:lambda:(x,v)=>{x.cancel = v}"
prim__setCancel :
     UnderlyingSource
  -> UndefOr UnderlyingSourceCancelCallback
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.pull"
prim__pull : UnderlyingSource -> PrimIO (UndefOr UnderlyingSourcePullCallback)



export
%foreign "browser:lambda:(x,v)=>{x.pull = v}"
prim__setPull :
     UnderlyingSource
  -> UndefOr UnderlyingSourcePullCallback
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.start"
prim__start : UnderlyingSource -> PrimIO (UndefOr UnderlyingSourceStartCallback)



export
%foreign "browser:lambda:(x,v)=>{x.start = v}"
prim__setStart :
     UnderlyingSource
  -> UndefOr UnderlyingSourceStartCallback
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : UnderlyingSource -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : UnderlyingSource -> UndefOr String -> PrimIO ()



export
new' :
     (start : Optional UnderlyingSourceStartCallback)
  -> (pull : Optional UnderlyingSourcePullCallback)
  -> (cancel : Optional UnderlyingSourceCancelCallback)
  -> (type : Optional ReadableStreamType)
  -> (autoAllocateChunkSize : Optional JSBits64)
  -> JSIO UnderlyingSource
new' a b c d e = primJS $
  UnderlyingSource.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
new : JSIO UnderlyingSource
new = primJS $ UnderlyingSource.prim__new undef undef undef undef undef


export
autoAllocateChunkSize :
     {auto _ : Cast t UnderlyingSource}
  -> t
  -> Attribute False Optional JSBits64
autoAllocateChunkSize v = fromUndefOrPrimNoDefault
                            "UnderlyingSource.getautoAllocateChunkSize"
                            prim__autoAllocateChunkSize
                            prim__setAutoAllocateChunkSize
                            (cast {to = UnderlyingSource} v)


export
cancel :
     {auto _ : Cast t UnderlyingSource}
  -> t
  -> Attribute False Optional UnderlyingSourceCancelCallback
cancel v = fromUndefOrPrimNoDefault
             "UnderlyingSource.getcancel"
             prim__cancel
             prim__setCancel
             (cast {to = UnderlyingSource} v)


export
pull :
     {auto _ : Cast t UnderlyingSource}
  -> t
  -> Attribute False Optional UnderlyingSourcePullCallback
pull v = fromUndefOrPrimNoDefault
           "UnderlyingSource.getpull"
           prim__pull
           prim__setPull
           (cast {to = UnderlyingSource} v)


export
start :
     {auto _ : Cast t UnderlyingSource}
  -> t
  -> Attribute False Optional UnderlyingSourceStartCallback
start v = fromUndefOrPrimNoDefault
            "UnderlyingSource.getstart"
            prim__start
            prim__setStart
            (cast {to = UnderlyingSource} v)


export
type :
     {auto _ : Cast t UnderlyingSource}
  -> t
  -> Attribute False Optional ReadableStreamType
type v = fromUndefOrPrimNoDefault
           "UnderlyingSource.gettype"
           prim__type
           prim__setType
           (cast {to = UnderlyingSource} v)
