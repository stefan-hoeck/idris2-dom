module Web.Raw.CharacterData

import JS
import Web.Types.CharacterData
import Web.Types.ChildNode
import Web.Types.EventTarget
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode


%default total


export
%foreign "browser:lambda:x=>x.data"
prim__data : CharacterData -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.data = v}"
prim__setData : CharacterData -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.length"
prim__length : CharacterData -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.appendData(a)"
prim__appendData : CharacterData -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.deleteData(a,b)"
prim__deleteData : CharacterData -> Bits32 -> Bits32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.insertData(a,b)"
prim__insertData : CharacterData -> Bits32 -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.replaceData(a,b,c)"
prim__replaceData : CharacterData -> Bits32 -> Bits32 -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.substringData(a,b)"
prim__substringData : CharacterData -> Bits32 -> Bits32 -> PrimIO String


export
data_ : {auto _ : Cast t CharacterData} -> t -> Attribute True Prelude.id String
data_ v = fromPrim
            "CharacterData.getdata"
            prim__data
            prim__setData
            (cast {to = CharacterData} v)


export
length : {auto _ : Cast t1 CharacterData} -> (obj : t1) -> JSIO Bits32
length a = primJS $ CharacterData.prim__length (cast a)


export
appendData :
     {auto _ : Cast t1 CharacterData}
  -> (obj : t1)
  -> (data_ : String)
  -> JSIO ()
appendData a b = primJS $ CharacterData.prim__appendData (cast a) b


export
deleteData :
     {auto _ : Cast t1 CharacterData}
  -> (obj : t1)
  -> (offset : Bits32)
  -> (count : Bits32)
  -> JSIO ()
deleteData a b c = primJS $ CharacterData.prim__deleteData (cast a) b c


export
insertData :
     {auto _ : Cast t1 CharacterData}
  -> (obj : t1)
  -> (offset : Bits32)
  -> (data_ : String)
  -> JSIO ()
insertData a b c = primJS $ CharacterData.prim__insertData (cast a) b c


export
replaceData :
     {auto _ : Cast t1 CharacterData}
  -> (obj : t1)
  -> (offset : Bits32)
  -> (count : Bits32)
  -> (data_ : String)
  -> JSIO ()
replaceData a b c d = primJS $ CharacterData.prim__replaceData (cast a) b c d


export
substringData :
     {auto _ : Cast t1 CharacterData}
  -> (obj : t1)
  -> (offset : Bits32)
  -> (count : Bits32)
  -> JSIO String
substringData a b c = primJS $ CharacterData.prim__substringData (cast a) b c

