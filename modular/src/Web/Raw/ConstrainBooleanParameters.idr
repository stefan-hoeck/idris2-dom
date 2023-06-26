module Web.Raw.ConstrainBooleanParameters

import JS
import Web.Types.ConstrainBooleanParameters


%default total


export
%foreign "browser:lambda:(a,b)=> ({exact: a,ideal: b})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO ConstrainBooleanParameters


export
%foreign "browser:lambda:x=>x.exact"
prim__exact : ConstrainBooleanParameters -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.exact = v}"
prim__setExact : ConstrainBooleanParameters -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ideal"
prim__ideal : ConstrainBooleanParameters -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.ideal = v}"
prim__setIdeal : ConstrainBooleanParameters -> UndefOr Boolean -> PrimIO ()



export
new' :
     (exact : Optional Bool)
  -> (ideal : Optional Bool)
  -> JSIO ConstrainBooleanParameters
new' a b = primJS $ ConstrainBooleanParameters.prim__new (toFFI a) (toFFI b)

export
new : JSIO ConstrainBooleanParameters
new = primJS $ ConstrainBooleanParameters.prim__new undef undef


export
exact :
     {auto _ : Cast t ConstrainBooleanParameters}
  -> t
  -> Attribute False Optional Bool
exact v = fromUndefOrPrimNoDefault
            "ConstrainBooleanParameters.getexact"
            prim__exact
            prim__setExact
            (cast {to = ConstrainBooleanParameters} v)


export
ideal :
     {auto _ : Cast t ConstrainBooleanParameters}
  -> t
  -> Attribute False Optional Bool
ideal v = fromUndefOrPrimNoDefault
            "ConstrainBooleanParameters.getideal"
            prim__ideal
            prim__setIdeal
            (cast {to = ConstrainBooleanParameters} v)
