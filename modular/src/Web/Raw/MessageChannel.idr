module Web.Raw.MessageChannel

import JS
import Web.Types.MessageChannel
import Web.Types.MessagePort


%default total


export
%foreign "browser:lambda:()=> new MessageChannel()"
prim__new : PrimIO MessageChannel


export
%foreign "browser:lambda:x=>x.port1"
prim__port1 : MessageChannel -> PrimIO MessagePort


export
%foreign "browser:lambda:x=>x.port2"
prim__port2 : MessageChannel -> PrimIO MessagePort


export
new : JSIO MessageChannel
new = primJS $ MessageChannel.prim__new


export
port1 : (obj : MessageChannel) -> JSIO MessagePort
port1 a = primJS $ MessageChannel.prim__port1 a


export
port2 : (obj : MessageChannel) -> JSIO MessagePort
port2 a = primJS $ MessageChannel.prim__port2 a

