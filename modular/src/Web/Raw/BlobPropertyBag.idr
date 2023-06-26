module Web.Raw.BlobPropertyBag

import JS
import Web.Types.BlobPropertyBag
import Web.Types.EndingType


%default total


export
%foreign "browser:lambda:(a,b)=> ({type: a,endings: b})"
prim__new : UndefOr String -> UndefOr String -> PrimIO BlobPropertyBag


export
%foreign "browser:lambda:x=>x.endings"
prim__endings : BlobPropertyBag -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.endings = v}"
prim__setEndings : BlobPropertyBag -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : BlobPropertyBag -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : BlobPropertyBag -> UndefOr String -> PrimIO ()



export
new' :
     (type : Optional String)
  -> (endings : Optional EndingType)
  -> JSIO BlobPropertyBag
new' a b = primJS $ BlobPropertyBag.prim__new (toFFI a) (toFFI b)

export
new : JSIO BlobPropertyBag
new = primJS $ BlobPropertyBag.prim__new undef undef


export
endings :
     {auto _ : Cast t BlobPropertyBag}
  -> t
  -> Attribute False Optional EndingType
endings v = fromUndefOrPrimNoDefault
              "BlobPropertyBag.getendings"
              prim__endings
              prim__setEndings
              (cast {to = BlobPropertyBag} v)


export
type : {auto _ : Cast t BlobPropertyBag} -> t -> Attribute True Optional String
type v = fromUndefOrPrim
           "BlobPropertyBag.gettype"
           prim__type
           prim__setType
           ""
           (cast {to = BlobPropertyBag} v)

