module Web.Raw.ConstrainDOMStringParameters

import JS
import Web.Types.ConstrainDOMStringParameters


%default total


export
%foreign "browser:lambda:(a,b)=> ({exact: a,ideal: b})"
prim__new :
     UndefOr (Union2 String (Array String))
  -> UndefOr (Union2 String (Array String))
  -> PrimIO ConstrainDOMStringParameters


export
%foreign "browser:lambda:x=>x.exact"
prim__exact :
     ConstrainDOMStringParameters
  -> PrimIO (UndefOr (Union2 String (Array String)))



export
%foreign "browser:lambda:(x,v)=>{x.exact = v}"
prim__setExact :
     ConstrainDOMStringParameters
  -> UndefOr (Union2 String (Array String))
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ideal"
prim__ideal :
     ConstrainDOMStringParameters
  -> PrimIO (UndefOr (Union2 String (Array String)))



export
%foreign "browser:lambda:(x,v)=>{x.ideal = v}"
prim__setIdeal :
     ConstrainDOMStringParameters
  -> UndefOr (Union2 String (Array String))
  -> PrimIO ()



export
new' :
     (exact : Optional (HSum [String, Array String]))
  -> (ideal : Optional (HSum [String, Array String]))
  -> JSIO ConstrainDOMStringParameters
new' a b = primJS $ ConstrainDOMStringParameters.prim__new (toFFI a) (toFFI b)

export
new : JSIO ConstrainDOMStringParameters
new = primJS $ ConstrainDOMStringParameters.prim__new undef undef


export
exact :
     {auto _ : Cast t ConstrainDOMStringParameters}
  -> t
  -> Attribute False Optional (Union2 String (Array String))
exact v = fromUndefOrPrimNoDefault
            "ConstrainDOMStringParameters.getexact"
            prim__exact
            prim__setExact
            (cast {to = ConstrainDOMStringParameters} v)


export
ideal :
     {auto _ : Cast t ConstrainDOMStringParameters}
  -> t
  -> Attribute False Optional (Union2 String (Array String))
ideal v = fromUndefOrPrimNoDefault
            "ConstrainDOMStringParameters.getideal"
            prim__ideal
            prim__setIdeal
            (cast {to = ConstrainDOMStringParameters} v)
