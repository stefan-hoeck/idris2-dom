module Web.Raw.ShadowRoot

import JS
import Web.Types.DocumentFragment
import Web.Types.DocumentOrShadowRoot
import Web.Types.Element
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonElementParentNode
import Web.Types.ParentNode
import Web.Types.ShadowRoot
import Web.Types.ShadowRootMode


%default total


export
%foreign "browser:lambda:x=>x.host"
prim__host : ShadowRoot -> PrimIO Element


export
%foreign "browser:lambda:x=>x.mode"
prim__mode : ShadowRoot -> PrimIO String


export
%foreign "browser:lambda:x=>x.onslotchange"
prim__onslotchange : ShadowRoot -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onslotchange = v}"
prim__setOnslotchange : ShadowRoot -> Nullable EventHandlerNonNull -> PrimIO ()



export
host : {auto _ : Cast t1 ShadowRoot} -> (obj : t1) -> JSIO Element
host a = primJS $ ShadowRoot.prim__host (cast a)


export
mode : {auto _ : Cast t1 ShadowRoot} -> (obj : t1) -> JSIO ShadowRootMode
mode a = tryJS "ShadowRoot.mode" $ ShadowRoot.prim__mode (cast a)


export
onslotchange :
     {auto _ : Cast t ShadowRoot}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onslotchange v = fromNullablePrim
                   "ShadowRoot.getonslotchange"
                   prim__onslotchange
                   prim__setOnslotchange
                   (cast {to = ShadowRoot} v)

