module Web.Raw.Transformer

import JS
import Web.Types.Transformer
import Web.Types.TransformerFlushCallback
import Web.Types.TransformerStartCallback
import Web.Types.TransformerTransformCallback


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({start: a,transform: b,flush: c,readableType: d,writableType: e})"
prim__new :
     UndefOr TransformerStartCallback
  -> UndefOr TransformerTransformCallback
  -> UndefOr TransformerFlushCallback
  -> UndefOr AnyPtr
  -> UndefOr AnyPtr
  -> PrimIO Transformer


export
%foreign "browser:lambda:x=>x.flush"
prim__flush : Transformer -> PrimIO (UndefOr TransformerFlushCallback)



export
%foreign "browser:lambda:(x,v)=>{x.flush = v}"
prim__setFlush : Transformer -> UndefOr TransformerFlushCallback -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readableType"
prim__readableType : Transformer -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.readableType = v}"
prim__setReadableType : Transformer -> UndefOr AnyPtr -> PrimIO ()



export
%foreign "browser:lambda:x=>x.start"
prim__start : Transformer -> PrimIO (UndefOr TransformerStartCallback)



export
%foreign "browser:lambda:(x,v)=>{x.start = v}"
prim__setStart : Transformer -> UndefOr TransformerStartCallback -> PrimIO ()



export
%foreign "browser:lambda:x=>x.transform"
prim__transform : Transformer -> PrimIO (UndefOr TransformerTransformCallback)



export
%foreign "browser:lambda:(x,v)=>{x.transform = v}"
prim__setTransform :
     Transformer
  -> UndefOr TransformerTransformCallback
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.writableType"
prim__writableType : Transformer -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.writableType = v}"
prim__setWritableType : Transformer -> UndefOr AnyPtr -> PrimIO ()



export
new' :
     (start : Optional TransformerStartCallback)
  -> (transform : Optional TransformerTransformCallback)
  -> (flush : Optional TransformerFlushCallback)
  -> (readableType : Optional Any)
  -> (writableType : Optional Any)
  -> JSIO Transformer
new' a b c d e = primJS $
  Transformer.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
new : JSIO Transformer
new = primJS $ Transformer.prim__new undef undef undef undef undef


export
flush :
     {auto _ : Cast t Transformer}
  -> t
  -> Attribute False Optional TransformerFlushCallback
flush v = fromUndefOrPrimNoDefault
            "Transformer.getflush"
            prim__flush
            prim__setFlush
            (cast {to = Transformer} v)


export
readableType :
     {auto _ : Cast t Transformer}
  -> t
  -> Attribute False Optional Any
readableType v = fromUndefOrPrimNoDefault
                   "Transformer.getreadableType"
                   prim__readableType
                   prim__setReadableType
                   (cast {to = Transformer} v)


export
start :
     {auto _ : Cast t Transformer}
  -> t
  -> Attribute False Optional TransformerStartCallback
start v = fromUndefOrPrimNoDefault
            "Transformer.getstart"
            prim__start
            prim__setStart
            (cast {to = Transformer} v)


export
transform :
     {auto _ : Cast t Transformer}
  -> t
  -> Attribute False Optional TransformerTransformCallback
transform v = fromUndefOrPrimNoDefault
                "Transformer.gettransform"
                prim__transform
                prim__setTransform
                (cast {to = Transformer} v)


export
writableType :
     {auto _ : Cast t Transformer}
  -> t
  -> Attribute False Optional Any
writableType v = fromUndefOrPrimNoDefault
                   "Transformer.getwritableType"
                   prim__writableType
                   prim__setWritableType
                   (cast {to = Transformer} v)
