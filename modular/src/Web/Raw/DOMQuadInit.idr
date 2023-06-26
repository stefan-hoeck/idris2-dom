module Web.Raw.DOMQuadInit

import JS
import Web.Types.DOMPointInit
import Web.Types.DOMQuadInit


%default total


export
%foreign "browser:lambda:(a,b,c,d)=> ({p1: a,p2: b,p3: c,p4: d})"
prim__new :
     UndefOr DOMPointInit
  -> UndefOr DOMPointInit
  -> UndefOr DOMPointInit
  -> UndefOr DOMPointInit
  -> PrimIO DOMQuadInit


export
%foreign "browser:lambda:x=>x.p1"
prim__p1 : DOMQuadInit -> PrimIO (UndefOr DOMPointInit)



export
%foreign "browser:lambda:(x,v)=>{x.p1 = v}"
prim__setP1 : DOMQuadInit -> UndefOr DOMPointInit -> PrimIO ()



export
%foreign "browser:lambda:x=>x.p2"
prim__p2 : DOMQuadInit -> PrimIO (UndefOr DOMPointInit)



export
%foreign "browser:lambda:(x,v)=>{x.p2 = v}"
prim__setP2 : DOMQuadInit -> UndefOr DOMPointInit -> PrimIO ()



export
%foreign "browser:lambda:x=>x.p3"
prim__p3 : DOMQuadInit -> PrimIO (UndefOr DOMPointInit)



export
%foreign "browser:lambda:(x,v)=>{x.p3 = v}"
prim__setP3 : DOMQuadInit -> UndefOr DOMPointInit -> PrimIO ()



export
%foreign "browser:lambda:x=>x.p4"
prim__p4 : DOMQuadInit -> PrimIO (UndefOr DOMPointInit)



export
%foreign "browser:lambda:(x,v)=>{x.p4 = v}"
prim__setP4 : DOMQuadInit -> UndefOr DOMPointInit -> PrimIO ()



export
new' :
     {auto _ : Cast t1 DOMPointInit}
  -> {auto _ : Cast t2 DOMPointInit}
  -> {auto _ : Cast t3 DOMPointInit}
  -> {auto _ : Cast t4 DOMPointInit}
  -> (p1 : Optional t1)
  -> (p2 : Optional t2)
  -> (p3 : Optional t3)
  -> (p4 : Optional t4)
  -> JSIO DOMQuadInit
new' a b c d = primJS $
  DOMQuadInit.prim__new (optUp a) (optUp b) (optUp c) (optUp d)

export
new : JSIO DOMQuadInit
new = primJS $ DOMQuadInit.prim__new undef undef undef undef


export
p1 : {auto _ : Cast t DOMQuadInit} -> t -> Attribute False Optional DOMPointInit
p1 v = fromUndefOrPrimNoDefault
         "DOMQuadInit.getp1"
         prim__p1
         prim__setP1
         (cast {to = DOMQuadInit} v)


export
p2 : {auto _ : Cast t DOMQuadInit} -> t -> Attribute False Optional DOMPointInit
p2 v = fromUndefOrPrimNoDefault
         "DOMQuadInit.getp2"
         prim__p2
         prim__setP2
         (cast {to = DOMQuadInit} v)


export
p3 : {auto _ : Cast t DOMQuadInit} -> t -> Attribute False Optional DOMPointInit
p3 v = fromUndefOrPrimNoDefault
         "DOMQuadInit.getp3"
         prim__p3
         prim__setP3
         (cast {to = DOMQuadInit} v)


export
p4 : {auto _ : Cast t DOMQuadInit} -> t -> Attribute False Optional DOMPointInit
p4 v = fromUndefOrPrimNoDefault
         "DOMQuadInit.getp4"
         prim__p4
         prim__setP4
         (cast {to = DOMQuadInit} v)
