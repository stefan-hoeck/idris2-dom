module Web.Raw.ProgressEventInit

import JS
import Web.Types.EventInit
import Web.Types.ProgressEventInit


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({lengthComputable: a,loaded: b,total: c})"
prim__new :
     UndefOr Boolean
  -> UndefOr JSBits64
  -> UndefOr JSBits64
  -> PrimIO ProgressEventInit


export
%foreign "browser:lambda:x=>x.lengthComputable"
prim__lengthComputable : ProgressEventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.lengthComputable = v}"
prim__setLengthComputable : ProgressEventInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.loaded"
prim__loaded : ProgressEventInit -> PrimIO (UndefOr JSBits64)



export
%foreign "browser:lambda:(x,v)=>{x.loaded = v}"
prim__setLoaded : ProgressEventInit -> UndefOr JSBits64 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.total"
prim__total : ProgressEventInit -> PrimIO (UndefOr JSBits64)



export
%foreign "browser:lambda:(x,v)=>{x.total = v}"
prim__setTotal : ProgressEventInit -> UndefOr JSBits64 -> PrimIO ()



export
new' :
     (lengthComputable : Optional Bool)
  -> (loaded : Optional JSBits64)
  -> (total_ : Optional JSBits64)
  -> JSIO ProgressEventInit
new' a b c = primJS $ ProgressEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO ProgressEventInit
new = primJS $ ProgressEventInit.prim__new undef undef undef


export
lengthComputable :
     {auto _ : Cast t ProgressEventInit}
  -> t
  -> Attribute True Optional Bool
lengthComputable v = fromUndefOrPrim
                       "ProgressEventInit.getlengthComputable"
                       prim__lengthComputable
                       prim__setLengthComputable
                       False
                       (cast {to = ProgressEventInit} v)


export
loaded :
     {auto _ : Cast t ProgressEventInit}
  -> t
  -> Attribute True Optional JSBits64
loaded v = fromUndefOrPrim
             "ProgressEventInit.getloaded"
             prim__loaded
             prim__setLoaded
             0
             (cast {to = ProgressEventInit} v)


export
total_ :
     {auto _ : Cast t ProgressEventInit}
  -> t
  -> Attribute True Optional JSBits64
total_ v = fromUndefOrPrim
             "ProgressEventInit.gettotal"
             prim__total
             prim__setTotal
             0
             (cast {to = ProgressEventInit} v)

