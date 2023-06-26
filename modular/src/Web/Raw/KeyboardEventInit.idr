module Web.Raw.KeyboardEventInit

import JS
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.KeyboardEventInit
import Web.Types.UIEventInit


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({key: a,code: b,location: c,repeat: d,isComposing: e})"
prim__new :
     UndefOr String
  -> UndefOr String
  -> UndefOr Bits32
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO KeyboardEventInit


export
%foreign "browser:lambda:x=>x.code"
prim__code : KeyboardEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.code = v}"
prim__setCode : KeyboardEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.isComposing"
prim__isComposing : KeyboardEventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.isComposing = v}"
prim__setIsComposing : KeyboardEventInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.key"
prim__key : KeyboardEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.key = v}"
prim__setKey : KeyboardEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.location"
prim__location : KeyboardEventInit -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.location = v}"
prim__setLocation : KeyboardEventInit -> UndefOr Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.repeat"
prim__repeat : KeyboardEventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.repeat = v}"
prim__setRepeat : KeyboardEventInit -> UndefOr Boolean -> PrimIO ()



export
new' :
     (key : Optional String)
  -> (code : Optional String)
  -> (location : Optional Bits32)
  -> (repeat : Optional Bool)
  -> (isComposing : Optional Bool)
  -> JSIO KeyboardEventInit
new' a b c d e = primJS $
  KeyboardEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
new : JSIO KeyboardEventInit
new = primJS $ KeyboardEventInit.prim__new undef undef undef undef undef


export
code :
     {auto _ : Cast t KeyboardEventInit}
  -> t
  -> Attribute True Optional String
code v = fromUndefOrPrim
           "KeyboardEventInit.getcode"
           prim__code
           prim__setCode
           ""
           (cast {to = KeyboardEventInit} v)


export
isComposing :
     {auto _ : Cast t KeyboardEventInit}
  -> t
  -> Attribute True Optional Bool
isComposing v = fromUndefOrPrim
                  "KeyboardEventInit.getisComposing"
                  prim__isComposing
                  prim__setIsComposing
                  False
                  (cast {to = KeyboardEventInit} v)


export
key : {auto _ : Cast t KeyboardEventInit} -> t -> Attribute True Optional String
key v = fromUndefOrPrim
          "KeyboardEventInit.getkey"
          prim__key
          prim__setKey
          ""
          (cast {to = KeyboardEventInit} v)


export
location :
     {auto _ : Cast t KeyboardEventInit}
  -> t
  -> Attribute True Optional Bits32
location v = fromUndefOrPrim
               "KeyboardEventInit.getlocation"
               prim__location
               prim__setLocation
               0
               (cast {to = KeyboardEventInit} v)


export
repeat :
     {auto _ : Cast t KeyboardEventInit}
  -> t
  -> Attribute True Optional Bool
repeat v = fromUndefOrPrim
             "KeyboardEventInit.getrepeat"
             prim__repeat
             prim__setRepeat
             False
             (cast {to = KeyboardEventInit} v)

