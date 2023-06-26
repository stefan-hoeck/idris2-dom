module Web.Raw.ElementContentEditable

import JS
import Web.Types.ElementContentEditable


%default total


export
%foreign "browser:lambda:x=>x.contentEditable"
prim__contentEditable : ElementContentEditable -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.contentEditable = v}"
prim__setContentEditable : ElementContentEditable -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.enterKeyHint"
prim__enterKeyHint : ElementContentEditable -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.enterKeyHint = v}"
prim__setEnterKeyHint : ElementContentEditable -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.inputMode"
prim__inputMode : ElementContentEditable -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.inputMode = v}"
prim__setInputMode : ElementContentEditable -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.isContentEditable"
prim__isContentEditable : ElementContentEditable -> PrimIO Boolean


export
contentEditable :
     {auto _ : Cast t ElementContentEditable}
  -> t
  -> Attribute True Prelude.id String
contentEditable v = fromPrim
                      "ElementContentEditable.getcontentEditable"
                      prim__contentEditable
                      prim__setContentEditable
                      (cast {to = ElementContentEditable} v)


export
enterKeyHint :
     {auto _ : Cast t ElementContentEditable}
  -> t
  -> Attribute True Prelude.id String
enterKeyHint v = fromPrim
                   "ElementContentEditable.getenterKeyHint"
                   prim__enterKeyHint
                   prim__setEnterKeyHint
                   (cast {to = ElementContentEditable} v)


export
inputMode :
     {auto _ : Cast t ElementContentEditable}
  -> t
  -> Attribute True Prelude.id String
inputMode v = fromPrim
                "ElementContentEditable.getinputMode"
                prim__inputMode
                prim__setInputMode
                (cast {to = ElementContentEditable} v)


export
isContentEditable :
     {auto _ : Cast t1 ElementContentEditable}
  -> (obj : t1)
  -> JSIO Bool
isContentEditable a = tryJS "ElementContentEditable.isContentEditable" $
  ElementContentEditable.prim__isContentEditable (cast a)
