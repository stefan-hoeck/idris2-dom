module Web.Raw.MediaQueryListEventInit

import JS
import Web.Types.EventInit
import Web.Types.MediaQueryListEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> ({media: a,matches: b})"
prim__new : UndefOr String -> UndefOr Boolean -> PrimIO MediaQueryListEventInit


export
%foreign "browser:lambda:x=>x.matches"
prim__matches : MediaQueryListEventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.matches = v}"
prim__setMatches : MediaQueryListEventInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.media"
prim__media : MediaQueryListEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.media = v}"
prim__setMedia : MediaQueryListEventInit -> UndefOr String -> PrimIO ()



export
new' :
     (media : Optional String)
  -> (matches : Optional Bool)
  -> JSIO MediaQueryListEventInit
new' a b = primJS $ MediaQueryListEventInit.prim__new (toFFI a) (toFFI b)

export
new : JSIO MediaQueryListEventInit
new = primJS $ MediaQueryListEventInit.prim__new undef undef


export
matches :
     {auto _ : Cast t MediaQueryListEventInit}
  -> t
  -> Attribute True Optional Bool
matches v = fromUndefOrPrim
              "MediaQueryListEventInit.getmatches"
              prim__matches
              prim__setMatches
              False
              (cast {to = MediaQueryListEventInit} v)


export
media :
     {auto _ : Cast t MediaQueryListEventInit}
  -> t
  -> Attribute True Optional String
media v = fromUndefOrPrim
            "MediaQueryListEventInit.getmedia"
            prim__media
            prim__setMedia
            ""
            (cast {to = MediaQueryListEventInit} v)
