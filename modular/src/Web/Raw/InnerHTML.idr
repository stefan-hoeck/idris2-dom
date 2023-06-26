module Web.Raw.InnerHTML

import JS
import Web.Types.InnerHTML


%default total


export
%foreign "browser:lambda:x=>x.innerHTML"
prim__innerHTML : InnerHTML -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.innerHTML = v}"
prim__setInnerHTML : InnerHTML -> String -> PrimIO ()



export
innerHTML : {auto _ : Cast t InnerHTML} -> t -> Attribute True Prelude.id String
innerHTML v = fromPrim
                "InnerHTML.getinnerHTML"
                prim__innerHTML
                prim__setInnerHTML
                (cast {to = InnerHTML} v)
