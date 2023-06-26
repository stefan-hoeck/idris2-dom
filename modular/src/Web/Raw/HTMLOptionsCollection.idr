module Web.Raw.HTMLOptionsCollection

import JS
import Web.Types.HTMLCollection
import Web.Types.HTMLElement
import Web.Types.HTMLOptGroupElement
import Web.Types.HTMLOptionElement
import Web.Types.HTMLOptionsCollection


%default total


export
%foreign "browser:lambda:(o,x,v)=>o[x] = v"
prim__set :
     HTMLOptionsCollection
  -> Bits32
  -> Nullable HTMLOptionElement
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.length"
prim__length : HTMLOptionsCollection -> PrimIO Bits32



export
%foreign "browser:lambda:(x,v)=>{x.length = v}"
prim__setLength : HTMLOptionsCollection -> Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectedIndex"
prim__selectedIndex : HTMLOptionsCollection -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.selectedIndex = v}"
prim__setSelectedIndex : HTMLOptionsCollection -> Int32 -> PrimIO ()



export
%foreign "browser:lambda:(x,a,b)=>x.add(a,b)"
prim__add :
     HTMLOptionsCollection
  -> Union2 HTMLOptionElement HTMLOptGroupElement
  -> UndefOr (Nullable (Union2 HTMLElement Int32))
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.remove(a)"
prim__remove : HTMLOptionsCollection -> Int32 -> PrimIO ()


export
set :
     (obj : HTMLOptionsCollection)
  -> (index : Bits32)
  -> (option : Maybe HTMLOptionElement)
  -> JSIO ()
set a b c = primJS $ HTMLOptionsCollection.prim__set a b (toFFI c)


export
length : HTMLOptionsCollection -> Attribute True Prelude.id Bits32
length v = fromPrim
             "HTMLOptionsCollection.getlength"
             prim__length
             prim__setLength
             v


export
selectedIndex : HTMLOptionsCollection -> Attribute True Prelude.id Int32
selectedIndex v = fromPrim
                    "HTMLOptionsCollection.getselectedIndex"
                    prim__selectedIndex
                    prim__setSelectedIndex
                    v


export
add' :
     (obj : HTMLOptionsCollection)
  -> (element : HSum [HTMLOptionElement, HTMLOptGroupElement])
  -> (before : Optional (Maybe (HSum [HTMLElement, Int32])))
  -> JSIO ()
add' a b c = primJS $ HTMLOptionsCollection.prim__add a (toFFI b) (toFFI c)

export
add :
     (obj : HTMLOptionsCollection)
  -> (element : HSum [HTMLOptionElement, HTMLOptGroupElement])
  -> JSIO ()
add a b = primJS $ HTMLOptionsCollection.prim__add a (toFFI b) undef


export
remove : (obj : HTMLOptionsCollection) -> (index : Int32) -> JSIO ()
remove a b = primJS $ HTMLOptionsCollection.prim__remove a b

