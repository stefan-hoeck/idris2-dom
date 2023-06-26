module Web.Raw.ResponseInit

import JS
import Web.Types.ResponseInit


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({status: a,statusText: b,headers: c})"
prim__new :
     UndefOr Bits16
  -> UndefOr ByteString
  -> UndefOr (Union2 (Array (Array ByteString)) (Record ByteString ByteString))
  -> PrimIO ResponseInit


export
%foreign "browser:lambda:x=>x.headers"
prim__headers :
     ResponseInit
  -> PrimIO
       (UndefOr
          (Union2 (Array (Array ByteString)) (Record ByteString ByteString)))



export
%foreign "browser:lambda:(x,v)=>{x.headers = v}"
prim__setHeaders :
     ResponseInit
  -> UndefOr (Union2 (Array (Array ByteString)) (Record ByteString ByteString))
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.status"
prim__status : ResponseInit -> PrimIO (UndefOr Bits16)



export
%foreign "browser:lambda:(x,v)=>{x.status = v}"
prim__setStatus : ResponseInit -> UndefOr Bits16 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.statusText"
prim__statusText : ResponseInit -> PrimIO (UndefOr ByteString)



export
%foreign "browser:lambda:(x,v)=>{x.statusText = v}"
prim__setStatusText : ResponseInit -> UndefOr ByteString -> PrimIO ()



export
new' :
     (status : Optional Bits16)
  -> (statusText : Optional ByteString)
  -> (headers : Optional
                  (HSum
                     [Array (Array ByteString), Record ByteString ByteString]))
  -> JSIO ResponseInit
new' a b c = primJS $ ResponseInit.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO ResponseInit
new = primJS $ ResponseInit.prim__new undef undef undef


export
headers :
     {auto _ : Cast t ResponseInit}
  -> t
  -> Attribute False Optional (Union2
                                 (Array (Array ByteString))
                                 (Record ByteString ByteString))
headers v = fromUndefOrPrimNoDefault
              "ResponseInit.getheaders"
              prim__headers
              prim__setHeaders
              (cast {to = ResponseInit} v)


export
status : {auto _ : Cast t ResponseInit} -> t -> Attribute True Optional Bits16
status v = fromUndefOrPrim
             "ResponseInit.getstatus"
             prim__status
             prim__setStatus
             200
             (cast {to = ResponseInit} v)


export
statusText :
     {auto _ : Cast t ResponseInit}
  -> t
  -> Attribute False Optional ByteString
statusText v = fromUndefOrPrimNoDefault
                 "ResponseInit.getstatusText"
                 prim__statusText
                 prim__setStatusText
                 (cast {to = ResponseInit} v)
