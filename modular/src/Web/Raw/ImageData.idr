module Web.Raw.ImageData

import JS
import Web.Types.ImageData


%default total


export
%foreign "browser:lambda:(a,b)=> new ImageData(a,b)"
prim__new : Bits32 -> Bits32 -> PrimIO ImageData


export
%foreign "browser:lambda:(a,b,c)=> new ImageData(a,b,c)"
prim__new1 : UInt8ClampedArray -> Bits32 -> UndefOr Bits32 -> PrimIO ImageData


export
%foreign "browser:lambda:x=>x.data"
prim__data : ImageData -> PrimIO UInt8ClampedArray


export
%foreign "browser:lambda:x=>x.height"
prim__height : ImageData -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.width"
prim__width : ImageData -> PrimIO Bits32


export
new : (sw : Bits32) -> (sh : Bits32) -> JSIO ImageData
new a b = primJS $ ImageData.prim__new a b


export
new1' :
     (data_ : UInt8ClampedArray)
  -> (sw : Bits32)
  -> (sh : Optional Bits32)
  -> JSIO ImageData
new1' a b c = primJS $ ImageData.prim__new1 a b (toFFI c)

export
new1 : (data_ : UInt8ClampedArray) -> (sw : Bits32) -> JSIO ImageData
new1 a b = primJS $ ImageData.prim__new1 a b undef


export
data_ : (obj : ImageData) -> JSIO UInt8ClampedArray
data_ a = primJS $ ImageData.prim__data a


export
height : (obj : ImageData) -> JSIO Bits32
height a = primJS $ ImageData.prim__height a


export
width : (obj : ImageData) -> JSIO Bits32
width a = primJS $ ImageData.prim__width a

