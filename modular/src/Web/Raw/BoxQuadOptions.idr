module Web.Raw.BoxQuadOptions

import JS
import Web.Types.BoxQuadOptions
import Web.Types.CSSBoxType
import Web.Types.CSSPseudoElement
import Web.Types.Document
import Web.Types.Element
import Web.Types.Text


%default total


export
%foreign "browser:lambda:(a,b)=> ({box: a,relativeTo: b})"
prim__new :
     UndefOr String
  -> UndefOr (Union4 Text Element CSSPseudoElement Document)
  -> PrimIO BoxQuadOptions


export
%foreign "browser:lambda:x=>x.box"
prim__box : BoxQuadOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.box = v}"
prim__setBox : BoxQuadOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.relativeTo"
prim__relativeTo :
     BoxQuadOptions
  -> PrimIO (UndefOr (Union4 Text Element CSSPseudoElement Document))



export
%foreign "browser:lambda:(x,v)=>{x.relativeTo = v}"
prim__setRelativeTo :
     BoxQuadOptions
  -> UndefOr (Union4 Text Element CSSPseudoElement Document)
  -> PrimIO ()



export
new' :
     (box : Optional CSSBoxType)
  -> (relativeTo : Optional (HSum [Text, Element, CSSPseudoElement, Document]))
  -> JSIO BoxQuadOptions
new' a b = primJS $ BoxQuadOptions.prim__new (toFFI a) (toFFI b)

export
new : JSIO BoxQuadOptions
new = primJS $ BoxQuadOptions.prim__new undef undef


export
box :
     {auto _ : Cast t BoxQuadOptions}
  -> t
  -> Attribute False Optional CSSBoxType
box v = fromUndefOrPrimNoDefault
          "BoxQuadOptions.getbox"
          prim__box
          prim__setBox
          (cast {to = BoxQuadOptions} v)


export
relativeTo :
     {auto _ : Cast t BoxQuadOptions}
  -> t
  -> Attribute False Optional (HSum [Text, Element, CSSPseudoElement, Document])
relativeTo v = fromUndefOrPrimNoDefault
                 "BoxQuadOptions.getrelativeTo"
                 prim__relativeTo
                 prim__setRelativeTo
                 (cast {to = BoxQuadOptions} v)
