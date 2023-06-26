module Web.Raw.DataTransfer

import JS
import Web.Types.DataTransfer
import Web.Types.DataTransferItemList
import Web.Types.Element
import Web.Types.FileList


%default total


export
%foreign "browser:lambda:()=> new DataTransfer()"
prim__new : PrimIO DataTransfer


export
%foreign "browser:lambda:x=>x.dropEffect"
prim__dropEffect : DataTransfer -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.dropEffect = v}"
prim__setDropEffect : DataTransfer -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.effectAllowed"
prim__effectAllowed : DataTransfer -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.effectAllowed = v}"
prim__setEffectAllowed : DataTransfer -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.files"
prim__files : DataTransfer -> PrimIO FileList


export
%foreign "browser:lambda:x=>x.items"
prim__items : DataTransfer -> PrimIO DataTransferItemList


export
%foreign "browser:lambda:x=>x.types"
prim__types : DataTransfer -> PrimIO (Array String)


export
%foreign "browser:lambda:(x,a)=>x.clearData(a)"
prim__clearData : DataTransfer -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getData(a)"
prim__getData : DataTransfer -> String -> PrimIO String


export
%foreign "browser:lambda:(x,a,b)=>x.setData(a,b)"
prim__setData : DataTransfer -> String -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.setDragImage(a,b,c)"
prim__setDragImage : DataTransfer -> Element -> Int32 -> Int32 -> PrimIO ()


export
new : JSIO DataTransfer
new = primJS $ DataTransfer.prim__new


export
dropEffect : DataTransfer -> Attribute True Prelude.id String
dropEffect v = fromPrim
                 "DataTransfer.getdropEffect"
                 prim__dropEffect
                 prim__setDropEffect
                 v


export
effectAllowed : DataTransfer -> Attribute True Prelude.id String
effectAllowed v = fromPrim
                    "DataTransfer.geteffectAllowed"
                    prim__effectAllowed
                    prim__setEffectAllowed
                    v


export
files : (obj : DataTransfer) -> JSIO FileList
files a = primJS $ DataTransfer.prim__files a


export
items : (obj : DataTransfer) -> JSIO DataTransferItemList
items a = primJS $ DataTransfer.prim__items a


export
types : (obj : DataTransfer) -> JSIO (Array String)
types a = primJS $ DataTransfer.prim__types a


export
clearData' : (obj : DataTransfer) -> (format : Optional String) -> JSIO ()
clearData' a b = primJS $ DataTransfer.prim__clearData a (toFFI b)

export
clearData : (obj : DataTransfer) -> JSIO ()
clearData a = primJS $ DataTransfer.prim__clearData a undef


export
getData : (obj : DataTransfer) -> (format : String) -> JSIO String
getData a b = primJS $ DataTransfer.prim__getData a b


export
setData :
     (obj : DataTransfer)
  -> (format : String)
  -> (data_ : String)
  -> JSIO ()
setData a b c = primJS $ DataTransfer.prim__setData a b c


export
setDragImage :
     {auto _ : Cast t2 Element}
  -> (obj : DataTransfer)
  -> (image : t2)
  -> (x : Int32)
  -> (y : Int32)
  -> JSIO ()
setDragImage a b c d = primJS $ DataTransfer.prim__setDragImage a (cast b) c d
