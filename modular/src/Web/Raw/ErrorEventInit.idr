module Web.Raw.ErrorEventInit

import JS
import Web.Types.ErrorEventInit
import Web.Types.EventInit


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({message: a,filename: b,lineno: c,colno: d,error: e})"
prim__new :
     UndefOr String
  -> UndefOr String
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> UndefOr AnyPtr
  -> PrimIO ErrorEventInit


export
%foreign "browser:lambda:x=>x.colno"
prim__colno : ErrorEventInit -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.colno = v}"
prim__setColno : ErrorEventInit -> UndefOr Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.error"
prim__error : ErrorEventInit -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.error = v}"
prim__setError : ErrorEventInit -> UndefOr AnyPtr -> PrimIO ()



export
%foreign "browser:lambda:x=>x.filename"
prim__filename : ErrorEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.filename = v}"
prim__setFilename : ErrorEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.lineno"
prim__lineno : ErrorEventInit -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.lineno = v}"
prim__setLineno : ErrorEventInit -> UndefOr Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.message"
prim__message : ErrorEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.message = v}"
prim__setMessage : ErrorEventInit -> UndefOr String -> PrimIO ()



export
new' :
     (message : Optional String)
  -> (filename : Optional String)
  -> (lineno : Optional Bits32)
  -> (colno : Optional Bits32)
  -> (error : Optional Any)
  -> JSIO ErrorEventInit
new' a b c d e = primJS $
  ErrorEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
new : JSIO ErrorEventInit
new = primJS $ ErrorEventInit.prim__new undef undef undef undef undef


export
colno : {auto _ : Cast t ErrorEventInit} -> t -> Attribute True Optional Bits32
colno v = fromUndefOrPrim
            "ErrorEventInit.getcolno"
            prim__colno
            prim__setColno
            0
            (cast {to = ErrorEventInit} v)


export
error : {auto _ : Cast t ErrorEventInit} -> t -> Attribute True Optional Any
error v = fromUndefOrPrim
            "ErrorEventInit.geterror"
            prim__error
            prim__setError
            (MkAny $ null {a = ()})
            (cast {to = ErrorEventInit} v)


export
filename :
     {auto _ : Cast t ErrorEventInit}
  -> t
  -> Attribute True Optional String
filename v = fromUndefOrPrim
               "ErrorEventInit.getfilename"
               prim__filename
               prim__setFilename
               ""
               (cast {to = ErrorEventInit} v)


export
lineno : {auto _ : Cast t ErrorEventInit} -> t -> Attribute True Optional Bits32
lineno v = fromUndefOrPrim
             "ErrorEventInit.getlineno"
             prim__lineno
             prim__setLineno
             0
             (cast {to = ErrorEventInit} v)


export
message :
     {auto _ : Cast t ErrorEventInit}
  -> t
  -> Attribute True Optional String
message v = fromUndefOrPrim
              "ErrorEventInit.getmessage"
              prim__message
              prim__setMessage
              ""
              (cast {to = ErrorEventInit} v)
