module Web.Raw.InputEventInit

import JS
import Web.Types.EventInit
import Web.Types.InputEventInit
import Web.Types.UIEventInit


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({data: a,isComposing: b,inputType: c})"
prim__new :
     UndefOr (Nullable String)
  -> UndefOr Boolean
  -> UndefOr String
  -> PrimIO InputEventInit


export
%foreign "browser:lambda:x=>x.data"
prim__data : InputEventInit -> PrimIO (UndefOr (Nullable String))



export
%foreign "browser:lambda:(x,v)=>{x.data = v}"
prim__setData : InputEventInit -> UndefOr (Nullable String) -> PrimIO ()



export
%foreign "browser:lambda:x=>x.inputType"
prim__inputType : InputEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.inputType = v}"
prim__setInputType : InputEventInit -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.isComposing"
prim__isComposing : InputEventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.isComposing = v}"
prim__setIsComposing : InputEventInit -> UndefOr Boolean -> PrimIO ()



export
new' :
     (data_ : Optional (Maybe String))
  -> (isComposing : Optional Bool)
  -> (inputType : Optional String)
  -> JSIO InputEventInit
new' a b c = primJS $ InputEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO InputEventInit
new = primJS $ InputEventInit.prim__new undef undef undef


export
data_ :
     {auto _ : Cast t InputEventInit}
  -> t
  -> Attribute True Optional (Maybe String)
data_ v = fromUndefOrPrim
            "InputEventInit.getdata"
            prim__data
            prim__setData
            (Just "")
            (cast {to = InputEventInit} v)


export
inputType :
     {auto _ : Cast t InputEventInit}
  -> t
  -> Attribute True Optional String
inputType v = fromUndefOrPrim
                "InputEventInit.getinputType"
                prim__inputType
                prim__setInputType
                ""
                (cast {to = InputEventInit} v)


export
isComposing :
     {auto _ : Cast t InputEventInit}
  -> t
  -> Attribute True Optional Bool
isComposing v = fromUndefOrPrim
                  "InputEventInit.getisComposing"
                  prim__isComposing
                  prim__setIsComposing
                  False
                  (cast {to = InputEventInit} v)
