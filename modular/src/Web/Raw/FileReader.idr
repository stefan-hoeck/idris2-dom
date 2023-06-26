module Web.Raw.FileReader

import JS
import Web.Types.Blob
import Web.Types.DOMException
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.FileReader


%default total


export
DONE : Bits16
DONE = 2


export
EMPTY : Bits16
EMPTY = 0


export
LOADING : Bits16
LOADING = 1


export
%foreign "browser:lambda:()=> new FileReader()"
prim__new : PrimIO FileReader


export
%foreign "browser:lambda:x=>x.error"
prim__error : FileReader -> PrimIO (Nullable DOMException)


export
%foreign "browser:lambda:x=>x.onabort"
prim__onabort : FileReader -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onabort = v}"
prim__setOnabort : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror : FileReader -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onload"
prim__onload : FileReader -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onload = v}"
prim__setOnload : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onloadend"
prim__onloadend : FileReader -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
prim__setOnloadend : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onloadstart"
prim__onloadstart : FileReader -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
prim__setOnloadstart : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onprogress"
prim__onprogress : FileReader -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
prim__setOnprogress : FileReader -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : FileReader -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.result"
prim__result : FileReader -> PrimIO (Nullable (Union2 String ArrayBuffer))


export
%foreign "browser:lambda:x=>x.abort()"
prim__abort : FileReader -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.readAsArrayBuffer(a)"
prim__readAsArrayBuffer : FileReader -> Blob -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.readAsBinaryString(a)"
prim__readAsBinaryString : FileReader -> Blob -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.readAsDataURL(a)"
prim__readAsDataURL : FileReader -> Blob -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.readAsText(a,b)"
prim__readAsText : FileReader -> Blob -> UndefOr String -> PrimIO ()


export
new : JSIO FileReader
new = primJS $ FileReader.prim__new


export
error : (obj : FileReader) -> JSIO (Maybe DOMException)
error a = tryJS "FileReader.error" $ FileReader.prim__error a


export
onabort : FileReader -> Attribute False Maybe EventHandlerNonNull
onabort v = fromNullablePrim
              "FileReader.getonabort"
              prim__onabort
              prim__setOnabort
              v


export
onerror : FileReader -> Attribute False Maybe EventHandlerNonNull
onerror v = fromNullablePrim
              "FileReader.getonerror"
              prim__onerror
              prim__setOnerror
              v


export
onload : FileReader -> Attribute False Maybe EventHandlerNonNull
onload v = fromNullablePrim
             "FileReader.getonload"
             prim__onload
             prim__setOnload
             v


export
onloadend : FileReader -> Attribute False Maybe EventHandlerNonNull
onloadend v = fromNullablePrim
                "FileReader.getonloadend"
                prim__onloadend
                prim__setOnloadend
                v


export
onloadstart : FileReader -> Attribute False Maybe EventHandlerNonNull
onloadstart v = fromNullablePrim
                  "FileReader.getonloadstart"
                  prim__onloadstart
                  prim__setOnloadstart
                  v


export
onprogress : FileReader -> Attribute False Maybe EventHandlerNonNull
onprogress v = fromNullablePrim
                 "FileReader.getonprogress"
                 prim__onprogress
                 prim__setOnprogress
                 v


export
readyState : (obj : FileReader) -> JSIO Bits16
readyState a = primJS $ FileReader.prim__readyState a


export
result : (obj : FileReader) -> JSIO (Maybe (Union2 String ArrayBuffer))
result a = tryJS "FileReader.result" $ FileReader.prim__result a


export
abort : (obj : FileReader) -> JSIO ()
abort a = primJS $ FileReader.prim__abort a


export
readAsArrayBuffer :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReader)
  -> (blob : t2)
  -> JSIO ()
readAsArrayBuffer a b = primJS $ FileReader.prim__readAsArrayBuffer a (cast b)


export
readAsBinaryString :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReader)
  -> (blob : t2)
  -> JSIO ()
readAsBinaryString a b = primJS $ FileReader.prim__readAsBinaryString a (cast b)


export
readAsDataURL :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReader)
  -> (blob : t2)
  -> JSIO ()
readAsDataURL a b = primJS $ FileReader.prim__readAsDataURL a (cast b)


export
readAsText' :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReader)
  -> (blob : t2)
  -> (encoding : Optional String)
  -> JSIO ()
readAsText' a b c = primJS $ FileReader.prim__readAsText a (cast b) (toFFI c)

export
readAsText :
     {auto _ : Cast t2 Blob}
  -> (obj : FileReader)
  -> (blob : t2)
  -> JSIO ()
readAsText a b = primJS $ FileReader.prim__readAsText a (cast b) undef
