module Web.Raw.CSSStyleDeclaration

import JS
import Web.Types.CSSRule
import Web.Types.CSSStyleDeclaration


%default total


export
%foreign "browser:lambda:x=>x.cssFloat"
prim__cssFloat : CSSStyleDeclaration -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cssFloat = v}"
prim__setCssFloat : CSSStyleDeclaration -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cssText"
prim__cssText : CSSStyleDeclaration -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.cssText = v}"
prim__setCssText : CSSStyleDeclaration -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.length"
prim__length : CSSStyleDeclaration -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.parentRule"
prim__parentRule : CSSStyleDeclaration -> PrimIO (Nullable CSSRule)


export
%foreign "browser:lambda:(x,a)=>x.getPropertyPriority(a)"
prim__getPropertyPriority : CSSStyleDeclaration -> String -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.getPropertyValue(a)"
prim__getPropertyValue : CSSStyleDeclaration -> String -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.item(a)"
prim__item : CSSStyleDeclaration -> Bits32 -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.removeProperty(a)"
prim__removeProperty : CSSStyleDeclaration -> String -> PrimIO String


export
%foreign "browser:lambda:(x,a,b,c)=>x.setProperty(a,b,c)"
prim__setProperty :
     CSSStyleDeclaration
  -> String
  -> String
  -> UndefOr String
  -> PrimIO ()


export
cssFloat : CSSStyleDeclaration -> Attribute True Prelude.id String
cssFloat v = fromPrim
               "CSSStyleDeclaration.getcssFloat"
               prim__cssFloat
               prim__setCssFloat
               v


export
cssText : CSSStyleDeclaration -> Attribute True Prelude.id String
cssText v = fromPrim
              "CSSStyleDeclaration.getcssText"
              prim__cssText
              prim__setCssText
              v


export
length : (obj : CSSStyleDeclaration) -> JSIO Bits32
length a = primJS $ CSSStyleDeclaration.prim__length a


export
parentRule : (obj : CSSStyleDeclaration) -> JSIO (Maybe CSSRule)
parentRule a = tryJS "CSSStyleDeclaration.parentRule" $
  CSSStyleDeclaration.prim__parentRule a


export
getPropertyPriority :
     (obj : CSSStyleDeclaration)
  -> (property : String)
  -> JSIO String
getPropertyPriority a b = primJS $
  CSSStyleDeclaration.prim__getPropertyPriority a b


export
getPropertyValue :
     (obj : CSSStyleDeclaration)
  -> (property : String)
  -> JSIO String
getPropertyValue a b = primJS $ CSSStyleDeclaration.prim__getPropertyValue a b


export
item : (obj : CSSStyleDeclaration) -> (index : Bits32) -> JSIO String
item a b = primJS $ CSSStyleDeclaration.prim__item a b


export
removeProperty :
     (obj : CSSStyleDeclaration)
  -> (property : String)
  -> JSIO String
removeProperty a b = primJS $ CSSStyleDeclaration.prim__removeProperty a b


export
setProperty' :
     (obj : CSSStyleDeclaration)
  -> (property : String)
  -> (value : String)
  -> (priority : Optional String)
  -> JSIO ()
setProperty' a b c d = primJS $
  CSSStyleDeclaration.prim__setProperty a b c (toFFI d)

export
setProperty :
     (obj : CSSStyleDeclaration)
  -> (property : String)
  -> (value : String)
  -> JSIO ()
setProperty a b c = primJS $ CSSStyleDeclaration.prim__setProperty a b c undef

