module Web.Raw.WebSocket

import JS
import Web.Types.BinaryType
import Web.Types.Blob
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.WebSocket


%default total


export
CLOSED : Bits16
CLOSED = 3


export
CLOSING : Bits16
CLOSING = 2


export
CONNECTING : Bits16
CONNECTING = 0


export
OPEN : Bits16
OPEN = 1


export
%foreign "browser:lambda:(a,b)=> new WebSocket(a,b)"
prim__new : String -> UndefOr (Union2 String (Array String)) -> PrimIO WebSocket


export
%foreign "browser:lambda:x=>x.binaryType"
prim__binaryType : WebSocket -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.binaryType = v}"
prim__setBinaryType : WebSocket -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.bufferedAmount"
prim__bufferedAmount : WebSocket -> PrimIO JSBits64


export
%foreign "browser:lambda:x=>x.extensions"
prim__extensions : WebSocket -> PrimIO String


export
%foreign "browser:lambda:x=>x.onclose"
prim__onclose : WebSocket -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onclose = v}"
prim__setOnclose : WebSocket -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror : WebSocket -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror : WebSocket -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage : WebSocket -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage : WebSocket -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onopen"
prim__onopen : WebSocket -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onopen = v}"
prim__setOnopen : WebSocket -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.protocol"
prim__protocol : WebSocket -> PrimIO String


export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : WebSocket -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.url"
prim__url : WebSocket -> PrimIO String


export
%foreign "browser:lambda:(x,a,b)=>x.close(a,b)"
prim__close : WebSocket -> UndefOr Bits16 -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.send(a)"
prim__send : WebSocket -> String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.send(a)"
prim__send1 : WebSocket -> Blob -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.send(a)"
prim__send2 : WebSocket -> ArrayBuffer -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.send(a)"
prim__send3 :
     WebSocket
  -> Union10
       Int8Array
       Int16Array
       Int32Array
       UInt8Array
       UInt8Array
       UInt8Array
       UInt8ClampedArray
       Float32Array
       Float64Array
       DataView
  -> PrimIO ()


export
new' :
     (url : String)
  -> (protocols : Optional (HSum [String, Array String]))
  -> JSIO WebSocket
new' a b = primJS $ WebSocket.prim__new a (toFFI b)

export
new : (url : String) -> JSIO WebSocket
new a = primJS $ WebSocket.prim__new a undef


export
binaryType : WebSocket -> Attribute True Prelude.id BinaryType
binaryType v = fromPrim
                 "WebSocket.getbinaryType"
                 prim__binaryType
                 prim__setBinaryType
                 v


export
bufferedAmount : (obj : WebSocket) -> JSIO JSBits64
bufferedAmount a = primJS $ WebSocket.prim__bufferedAmount a


export
extensions : (obj : WebSocket) -> JSIO String
extensions a = primJS $ WebSocket.prim__extensions a


export
onclose : WebSocket -> Attribute False Maybe EventHandlerNonNull
onclose v = fromNullablePrim
              "WebSocket.getonclose"
              prim__onclose
              prim__setOnclose
              v


export
onerror : WebSocket -> Attribute False Maybe EventHandlerNonNull
onerror v = fromNullablePrim
              "WebSocket.getonerror"
              prim__onerror
              prim__setOnerror
              v


export
onmessage : WebSocket -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "WebSocket.getonmessage"
                prim__onmessage
                prim__setOnmessage
                v


export
onopen : WebSocket -> Attribute False Maybe EventHandlerNonNull
onopen v = fromNullablePrim "WebSocket.getonopen" prim__onopen prim__setOnopen v


export
protocol : (obj : WebSocket) -> JSIO String
protocol a = primJS $ WebSocket.prim__protocol a


export
readyState : (obj : WebSocket) -> JSIO Bits16
readyState a = primJS $ WebSocket.prim__readyState a


export
url : (obj : WebSocket) -> JSIO String
url a = primJS $ WebSocket.prim__url a


export
close' :
     (obj : WebSocket)
  -> (code : Optional Bits16)
  -> (reason : Optional String)
  -> JSIO ()
close' a b c = primJS $ WebSocket.prim__close a (toFFI b) (toFFI c)

export
close : (obj : WebSocket) -> JSIO ()
close a = primJS $ WebSocket.prim__close a undef undef


export
send : (obj : WebSocket) -> (data_ : String) -> JSIO ()
send a b = primJS $ WebSocket.prim__send a b


export
send1 : {auto _ : Cast t2 Blob} -> (obj : WebSocket) -> (data_ : t2) -> JSIO ()
send1 a b = primJS $ WebSocket.prim__send1 a (cast b)


export
send2 : (obj : WebSocket) -> (data_ : ArrayBuffer) -> JSIO ()
send2 a b = primJS $ WebSocket.prim__send2 a b


export
send3 :
     (obj : WebSocket)
  -> (data_ : HSum
                [ Int8Array
                , Int16Array
                , Int32Array
                , UInt8Array
                , UInt8Array
                , UInt8Array
                , UInt8ClampedArray
                , Float32Array
                , Float64Array
                , DataView
                ])
  -> JSIO ()
send3 a b = primJS $ WebSocket.prim__send3 a (toFFI b)

