module Web.Raw.CanvasFilters

import JS
import Web.Types.CanvasFilters


%default total


export
%foreign "browser:lambda:x=>x.filter"
prim__filter : CanvasFilters -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.filter = v}"
prim__setFilter : CanvasFilters -> String -> PrimIO ()



export
filter :
     {auto _ : Cast t CanvasFilters}
  -> t
  -> Attribute True Prelude.id String
filter v = fromPrim
             "CanvasFilters.getfilter"
             prim__filter
             prim__setFilter
             (cast {to = CanvasFilters} v)
