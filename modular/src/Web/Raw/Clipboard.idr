module Web.Raw.Clipboard

import JS
import Web.Types.Clipboard
import Web.Types.ClipboardItem
import Web.Types.EventTarget


%default total


export
%foreign "browser:lambda:x=>x.read()"
prim__read : Clipboard -> PrimIO (Promise (Array ClipboardItem))


export
%foreign "browser:lambda:x=>x.readText()"
prim__readText : Clipboard -> PrimIO (Promise String)


export
%foreign "browser:lambda:(x,a)=>x.write(a)"
prim__write : Clipboard -> Array ClipboardItem -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:(x,a)=>x.writeText(a)"
prim__writeText : Clipboard -> String -> PrimIO (Promise Undefined)


export
read : (obj : Clipboard) -> JSIO (Promise (Array ClipboardItem))
read a = primJS $ Clipboard.prim__read a


export
readText : (obj : Clipboard) -> JSIO (Promise String)
readText a = primJS $ Clipboard.prim__readText a


export
write :
     (obj : Clipboard)
  -> (data_ : Array ClipboardItem)
  -> JSIO (Promise Undefined)
write a b = primJS $ Clipboard.prim__write a b


export
writeText : (obj : Clipboard) -> (data_ : String) -> JSIO (Promise Undefined)
writeText a b = primJS $ Clipboard.prim__writeText a b
