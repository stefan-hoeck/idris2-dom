module Web.Raw.ScrollIntoViewOptions

import JS
import Web.Types.ScrollIntoViewOptions
import Web.Types.ScrollLogicalPosition
import Web.Types.ScrollOptions


%default total


export
%foreign "browser:lambda:(a,b)=> ({block: a,inline: b})"
prim__new : UndefOr String -> UndefOr String -> PrimIO ScrollIntoViewOptions


export
%foreign "browser:lambda:x=>x.block"
prim__block : ScrollIntoViewOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.block = v}"
prim__setBlock : ScrollIntoViewOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.inline"
prim__inline : ScrollIntoViewOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.inline = v}"
prim__setInline : ScrollIntoViewOptions -> UndefOr String -> PrimIO ()



export
new' :
     (block : Optional ScrollLogicalPosition)
  -> (inline : Optional ScrollLogicalPosition)
  -> JSIO ScrollIntoViewOptions
new' a b = primJS $ ScrollIntoViewOptions.prim__new (toFFI a) (toFFI b)

export
new : JSIO ScrollIntoViewOptions
new = primJS $ ScrollIntoViewOptions.prim__new undef undef


export
block :
     {auto _ : Cast t ScrollIntoViewOptions}
  -> t
  -> Attribute False Optional ScrollLogicalPosition
block v = fromUndefOrPrimNoDefault
            "ScrollIntoViewOptions.getblock"
            prim__block
            prim__setBlock
            (cast {to = ScrollIntoViewOptions} v)


export
inline :
     {auto _ : Cast t ScrollIntoViewOptions}
  -> t
  -> Attribute False Optional ScrollLogicalPosition
inline v = fromUndefOrPrimNoDefault
             "ScrollIntoViewOptions.getinline"
             prim__inline
             prim__setInline
             (cast {to = ScrollIntoViewOptions} v)

