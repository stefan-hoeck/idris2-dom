module Web.Raw.ClipboardItem

import JS
import Web.Types.Blob
import Web.Types.ClipboardItem
import Web.Types.ClipboardItemDelayedCallback
import Web.Types.ClipboardItemOptions
import Web.Types.PresentationStyle


%default total


export
%foreign "browser:lambda:(a,b)=> new ClipboardItem(a,b)"
prim__new :
     Record String (Promise (Union2 String Blob))
  -> UndefOr ClipboardItemOptions
  -> PrimIO ClipboardItem


export
%foreign "browser:lambda:(a,b)=>ClipboardItem.createDelayed(a,b)"
prim__createDelayed :
     Record String ClipboardItemDelayedCallback
  -> UndefOr ClipboardItemOptions
  -> PrimIO ClipboardItem


export
%foreign "browser:lambda:x=>x.delayed"
prim__delayed : ClipboardItem -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.lastModified"
prim__lastModified : ClipboardItem -> PrimIO JSInt64


export
%foreign "browser:lambda:x=>x.presentationStyle"
prim__presentationStyle : ClipboardItem -> PrimIO String


export
%foreign "browser:lambda:x=>x.types"
prim__types : ClipboardItem -> PrimIO (Array String)


export
%foreign "browser:lambda:(x,a)=>x.getType(a)"
prim__getType : ClipboardItem -> String -> PrimIO (Promise Blob)


export
new' :
     {auto _ : Cast t2 ClipboardItemOptions}
  -> (items : Record String (Promise (Union2 String Blob)))
  -> (options : Optional t2)
  -> JSIO ClipboardItem
new' a b = primJS $ ClipboardItem.prim__new a (optUp b)

export
new :
     (items : Record String (Promise (Union2 String Blob)))
  -> JSIO ClipboardItem
new a = primJS $ ClipboardItem.prim__new a undef


export
createDelayed' :
     {auto _ : Cast t2 ClipboardItemOptions}
  -> (items : Record String ClipboardItemDelayedCallback)
  -> (options : Optional t2)
  -> JSIO ClipboardItem
createDelayed' a b = primJS $ ClipboardItem.prim__createDelayed a (optUp b)

export
createDelayed :
     (items : Record String ClipboardItemDelayedCallback)
  -> JSIO ClipboardItem
createDelayed a = primJS $ ClipboardItem.prim__createDelayed a undef


export
delayed : (obj : ClipboardItem) -> JSIO Bool
delayed a = tryJS "ClipboardItem.delayed" $ ClipboardItem.prim__delayed a


export
lastModified : (obj : ClipboardItem) -> JSIO JSInt64
lastModified a = primJS $ ClipboardItem.prim__lastModified a


export
presentationStyle : (obj : ClipboardItem) -> JSIO PresentationStyle
presentationStyle a = tryJS "ClipboardItem.presentationStyle" $
  ClipboardItem.prim__presentationStyle a


export
types : (obj : ClipboardItem) -> JSIO (Array String)
types a = primJS $ ClipboardItem.prim__types a


export
getType : (obj : ClipboardItem) -> (type : String) -> JSIO (Promise Blob)
getType a b = primJS $ ClipboardItem.prim__getType a b
