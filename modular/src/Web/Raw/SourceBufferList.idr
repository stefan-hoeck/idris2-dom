module Web.Raw.SourceBufferList

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.SourceBuffer
import Web.Types.SourceBufferList


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : SourceBufferList -> Bits32 -> PrimIO SourceBuffer


export
%foreign "browser:lambda:x=>x.length"
prim__length : SourceBufferList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.onaddsourcebuffer"
prim__onaddsourcebuffer :
     SourceBufferList
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onaddsourcebuffer = v}"
prim__setOnaddsourcebuffer :
     SourceBufferList
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onremovesourcebuffer"
prim__onremovesourcebuffer :
     SourceBufferList
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onremovesourcebuffer = v}"
prim__setOnremovesourcebuffer :
     SourceBufferList
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
get : (obj : SourceBufferList) -> (index : Bits32) -> JSIO SourceBuffer
get a b = primJS $ SourceBufferList.prim__get a b


export
length : (obj : SourceBufferList) -> JSIO Bits32
length a = primJS $ SourceBufferList.prim__length a


export
onaddsourcebuffer :
     SourceBufferList
  -> Attribute False Maybe EventHandlerNonNull
onaddsourcebuffer v = fromNullablePrim
                        "SourceBufferList.getonaddsourcebuffer"
                        prim__onaddsourcebuffer
                        prim__setOnaddsourcebuffer
                        v


export
onremovesourcebuffer :
     SourceBufferList
  -> Attribute False Maybe EventHandlerNonNull
onremovesourcebuffer v = fromNullablePrim
                           "SourceBufferList.getonremovesourcebuffer"
                           prim__onremovesourcebuffer
                           prim__setOnremovesourcebuffer
                           v

