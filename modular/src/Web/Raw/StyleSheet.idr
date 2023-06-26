module Web.Raw.StyleSheet

import JS
import Web.Types.CSSStyleSheet
import Web.Types.Element
import Web.Types.MediaList
import Web.Types.ProcessingInstruction
import Web.Types.StyleSheet


%default total


export
%foreign "browser:lambda:x=>x.disabled"
prim__disabled : StyleSheet -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.disabled = v}"
prim__setDisabled : StyleSheet -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.href"
prim__href : StyleSheet -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.media"
prim__media : StyleSheet -> PrimIO MediaList


export
%foreign "browser:lambda:x=>x.ownerNode"
prim__ownerNode :
     StyleSheet
  -> PrimIO (Nullable (Union2 Element ProcessingInstruction))


export
%foreign "browser:lambda:x=>x.parentStyleSheet"
prim__parentStyleSheet : StyleSheet -> PrimIO (Nullable CSSStyleSheet)


export
%foreign "browser:lambda:x=>x.title"
prim__title : StyleSheet -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.type"
prim__type : StyleSheet -> PrimIO String


export
disabled : {auto _ : Cast t StyleSheet} -> t -> Attribute True Prelude.id Bool
disabled v = fromPrim
               "StyleSheet.getdisabled"
               prim__disabled
               prim__setDisabled
               (cast {to = StyleSheet} v)


export
href : {auto _ : Cast t1 StyleSheet} -> (obj : t1) -> JSIO (Maybe String)
href a = tryJS "StyleSheet.href" $ StyleSheet.prim__href (cast a)


export
media : {auto _ : Cast t1 StyleSheet} -> (obj : t1) -> JSIO MediaList
media a = primJS $ StyleSheet.prim__media (cast a)


export
ownerNode :
     {auto _ : Cast t1 StyleSheet}
  -> (obj : t1)
  -> JSIO (Maybe (HSum [Element, ProcessingInstruction]))
ownerNode a = tryJS "StyleSheet.ownerNode" $ StyleSheet.prim__ownerNode (cast a)


export
parentStyleSheet :
     {auto _ : Cast t1 StyleSheet}
  -> (obj : t1)
  -> JSIO (Maybe CSSStyleSheet)
parentStyleSheet a = tryJS "StyleSheet.parentStyleSheet" $
  StyleSheet.prim__parentStyleSheet (cast a)


export
title : {auto _ : Cast t1 StyleSheet} -> (obj : t1) -> JSIO (Maybe String)
title a = tryJS "StyleSheet.title" $ StyleSheet.prim__title (cast a)


export
type : {auto _ : Cast t1 StyleSheet} -> (obj : t1) -> JSIO String
type a = primJS $ StyleSheet.prim__type (cast a)
