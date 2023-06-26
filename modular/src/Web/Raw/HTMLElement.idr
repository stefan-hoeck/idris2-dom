module Web.Raw.HTMLElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.ElementInternals
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:()=> new HTMLElement()"
prim__new : PrimIO HTMLElement


export
%foreign "browser:lambda:x=>x.accessKey"
prim__accessKey : HTMLElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.accessKey = v}"
prim__setAccessKey : HTMLElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.accessKeyLabel"
prim__accessKeyLabel : HTMLElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.autocapitalize"
prim__autocapitalize : HTMLElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.autocapitalize = v}"
prim__setAutocapitalize : HTMLElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.dir"
prim__dir : HTMLElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.dir = v}"
prim__setDir : HTMLElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.draggable"
prim__draggable : HTMLElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.draggable = v}"
prim__setDraggable : HTMLElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.hidden"
prim__hidden : HTMLElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.hidden = v}"
prim__setHidden : HTMLElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.innerText"
prim__innerText : HTMLElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.innerText = v}"
prim__setInnerText : HTMLElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.lang"
prim__lang : HTMLElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.lang = v}"
prim__setLang : HTMLElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.offsetHeight"
prim__offsetHeight : HTMLElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.offsetLeft"
prim__offsetLeft : HTMLElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.offsetParent"
prim__offsetParent : HTMLElement -> PrimIO (Nullable Element)


export
%foreign "browser:lambda:x=>x.offsetTop"
prim__offsetTop : HTMLElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.offsetWidth"
prim__offsetWidth : HTMLElement -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.spellcheck"
prim__spellcheck : HTMLElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.spellcheck = v}"
prim__setSpellcheck : HTMLElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.title"
prim__title : HTMLElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.title = v}"
prim__setTitle : HTMLElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.translate"
prim__translate : HTMLElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.translate = v}"
prim__setTranslate : HTMLElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.attachInternals()"
prim__attachInternals : HTMLElement -> PrimIO ElementInternals


export
%foreign "browser:lambda:x=>x.click()"
prim__click : HTMLElement -> PrimIO ()


export
new : JSIO HTMLElement
new = primJS $ HTMLElement.prim__new


export
accessKey :
     {auto _ : Cast t HTMLElement}
  -> t
  -> Attribute True Prelude.id String
accessKey v = fromPrim
                "HTMLElement.getaccessKey"
                prim__accessKey
                prim__setAccessKey
                (cast {to = HTMLElement} v)


export
accessKeyLabel : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO String
accessKeyLabel a = primJS $ HTMLElement.prim__accessKeyLabel (cast a)


export
autocapitalize :
     {auto _ : Cast t HTMLElement}
  -> t
  -> Attribute True Prelude.id String
autocapitalize v = fromPrim
                     "HTMLElement.getautocapitalize"
                     prim__autocapitalize
                     prim__setAutocapitalize
                     (cast {to = HTMLElement} v)


export
dir : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id String
dir v = fromPrim
          "HTMLElement.getdir"
          prim__dir
          prim__setDir
          (cast {to = HTMLElement} v)


export
draggable : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id Bool
draggable v = fromPrim
                "HTMLElement.getdraggable"
                prim__draggable
                prim__setDraggable
                (cast {to = HTMLElement} v)


export
hidden : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id Bool
hidden v = fromPrim
             "HTMLElement.gethidden"
             prim__hidden
             prim__setHidden
             (cast {to = HTMLElement} v)


export
innerText :
     {auto _ : Cast t HTMLElement}
  -> t
  -> Attribute True Prelude.id String
innerText v = fromPrim
                "HTMLElement.getinnerText"
                prim__innerText
                prim__setInnerText
                (cast {to = HTMLElement} v)


export
lang : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id String
lang v = fromPrim
           "HTMLElement.getlang"
           prim__lang
           prim__setLang
           (cast {to = HTMLElement} v)


export
offsetHeight : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO Int32
offsetHeight a = primJS $ HTMLElement.prim__offsetHeight (cast a)


export
offsetLeft : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO Int32
offsetLeft a = primJS $ HTMLElement.prim__offsetLeft (cast a)


export
offsetParent :
     {auto _ : Cast t1 HTMLElement}
  -> (obj : t1)
  -> JSIO (Maybe Element)
offsetParent a = tryJS "HTMLElement.offsetParent" $
  HTMLElement.prim__offsetParent (cast a)


export
offsetTop : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO Int32
offsetTop a = primJS $ HTMLElement.prim__offsetTop (cast a)


export
offsetWidth : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO Int32
offsetWidth a = primJS $ HTMLElement.prim__offsetWidth (cast a)


export
spellcheck :
     {auto _ : Cast t HTMLElement}
  -> t
  -> Attribute True Prelude.id Bool
spellcheck v = fromPrim
                 "HTMLElement.getspellcheck"
                 prim__spellcheck
                 prim__setSpellcheck
                 (cast {to = HTMLElement} v)


export
title : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id String
title v = fromPrim
            "HTMLElement.gettitle"
            prim__title
            prim__setTitle
            (cast {to = HTMLElement} v)


export
translate : {auto _ : Cast t HTMLElement} -> t -> Attribute True Prelude.id Bool
translate v = fromPrim
                "HTMLElement.gettranslate"
                prim__translate
                prim__setTranslate
                (cast {to = HTMLElement} v)


export
attachInternals :
     {auto _ : Cast t1 HTMLElement}
  -> (obj : t1)
  -> JSIO ElementInternals
attachInternals a = primJS $ HTMLElement.prim__attachInternals (cast a)


export
click : {auto _ : Cast t1 HTMLElement} -> (obj : t1) -> JSIO ()
click a = primJS $ HTMLElement.prim__click (cast a)

