module Web.Raw.VisualViewport

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.VisualViewport


%default total


export
%foreign "browser:lambda:x=>x.height"
prim__height : VisualViewport -> PrimIO Double


export
%foreign "browser:lambda:x=>x.offsetLeft"
prim__offsetLeft : VisualViewport -> PrimIO Double


export
%foreign "browser:lambda:x=>x.offsetTop"
prim__offsetTop : VisualViewport -> PrimIO Double


export
%foreign "browser:lambda:x=>x.onresize"
prim__onresize : VisualViewport -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onresize = v}"
prim__setOnresize : VisualViewport -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onscroll"
prim__onscroll : VisualViewport -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onscroll = v}"
prim__setOnscroll : VisualViewport -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onscrollend"
prim__onscrollend : VisualViewport -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onscrollend = v}"
prim__setOnscrollend :
     VisualViewport
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.pageLeft"
prim__pageLeft : VisualViewport -> PrimIO Double


export
%foreign "browser:lambda:x=>x.pageTop"
prim__pageTop : VisualViewport -> PrimIO Double


export
%foreign "browser:lambda:x=>x.scale"
prim__scale : VisualViewport -> PrimIO Double


export
%foreign "browser:lambda:x=>x.width"
prim__width : VisualViewport -> PrimIO Double


export
height : (obj : VisualViewport) -> JSIO Double
height a = primJS $ VisualViewport.prim__height a


export
offsetLeft : (obj : VisualViewport) -> JSIO Double
offsetLeft a = primJS $ VisualViewport.prim__offsetLeft a


export
offsetTop : (obj : VisualViewport) -> JSIO Double
offsetTop a = primJS $ VisualViewport.prim__offsetTop a


export
onresize : VisualViewport -> Attribute False Maybe EventHandlerNonNull
onresize v = fromNullablePrim
               "VisualViewport.getonresize"
               prim__onresize
               prim__setOnresize
               v


export
onscroll : VisualViewport -> Attribute False Maybe EventHandlerNonNull
onscroll v = fromNullablePrim
               "VisualViewport.getonscroll"
               prim__onscroll
               prim__setOnscroll
               v


export
onscrollend : VisualViewport -> Attribute False Maybe EventHandlerNonNull
onscrollend v = fromNullablePrim
                  "VisualViewport.getonscrollend"
                  prim__onscrollend
                  prim__setOnscrollend
                  v


export
pageLeft : (obj : VisualViewport) -> JSIO Double
pageLeft a = primJS $ VisualViewport.prim__pageLeft a


export
pageTop : (obj : VisualViewport) -> JSIO Double
pageTop a = primJS $ VisualViewport.prim__pageTop a


export
scale : (obj : VisualViewport) -> JSIO Double
scale a = primJS $ VisualViewport.prim__scale a


export
width : (obj : VisualViewport) -> JSIO Double
width a = primJS $ VisualViewport.prim__width a
