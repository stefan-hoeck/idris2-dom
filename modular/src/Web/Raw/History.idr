module Web.Raw.History

import JS
import Web.Types.History
import Web.Types.ScrollRestoration


%default total


export
%foreign "browser:lambda:x=>x.length"
prim__length : History -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.scrollRestoration"
prim__scrollRestoration : History -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.scrollRestoration = v}"
prim__setScrollRestoration : History -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.state"
prim__state : History -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.back()"
prim__back : History -> PrimIO ()


export
%foreign "browser:lambda:x=>x.forward()"
prim__forward : History -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.go(a)"
prim__go : History -> UndefOr Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.pushState(a,b,c)"
prim__pushState :
     History
  -> AnyPtr
  -> String
  -> UndefOr (Nullable String)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.replaceState(a,b,c)"
prim__replaceState :
     History
  -> AnyPtr
  -> String
  -> UndefOr (Nullable String)
  -> PrimIO ()


export
length : (obj : History) -> JSIO Bits32
length a = primJS $ History.prim__length a


export
scrollRestoration : History -> Attribute True Prelude.id ScrollRestoration
scrollRestoration v = fromPrim
                        "History.getscrollRestoration"
                        prim__scrollRestoration
                        prim__setScrollRestoration
                        v


export
state : (obj : History) -> JSIO Any
state a = tryJS "History.state" $ History.prim__state a


export
back : (obj : History) -> JSIO ()
back a = primJS $ History.prim__back a


export
forward : (obj : History) -> JSIO ()
forward a = primJS $ History.prim__forward a


export
go' : (obj : History) -> (delta : Optional Int32) -> JSIO ()
go' a b = primJS $ History.prim__go a (toFFI b)

export
go : (obj : History) -> JSIO ()
go a = primJS $ History.prim__go a undef


export
pushState' :
     (obj : History)
  -> (data_ : Any)
  -> (unused : String)
  -> (url : Optional (Maybe String))
  -> JSIO ()
pushState' a b c d = primJS $ History.prim__pushState a (toFFI b) c (toFFI d)

export
pushState : (obj : History) -> (data_ : Any) -> (unused : String) -> JSIO ()
pushState a b c = primJS $ History.prim__pushState a (toFFI b) c undef


export
replaceState' :
     (obj : History)
  -> (data_ : Any)
  -> (unused : String)
  -> (url : Optional (Maybe String))
  -> JSIO ()
replaceState' a b c d = primJS $
  History.prim__replaceState a (toFFI b) c (toFFI d)

export
replaceState : (obj : History) -> (data_ : Any) -> (unused : String) -> JSIO ()
replaceState a b c = primJS $ History.prim__replaceState a (toFFI b) c undef
