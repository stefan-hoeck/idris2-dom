module Web.Raw.CanvasImageData

import JS
import Web.Types.CanvasImageData
import Web.Types.ImageData


%default total


export
%foreign "browser:lambda:(x,a,b)=>x.createImageData(a,b)"
prim__createImageData : CanvasImageData -> Int32 -> Int32 -> PrimIO ImageData


export
%foreign "browser:lambda:(x,a)=>x.createImageData(a)"
prim__createImageData1 : CanvasImageData -> ImageData -> PrimIO ImageData


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.getImageData(a,b,c,d)"
prim__getImageData :
     CanvasImageData
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ImageData


export
%foreign "browser:lambda:(x,a,b,c)=>x.putImageData(a,b,c)"
prim__putImageData : CanvasImageData -> ImageData -> Int32 -> Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.putImageData(a,b,c,d,e,f,g)"
prim__putImageData1 :
     CanvasImageData
  -> ImageData
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> PrimIO ()


export
createImageData :
     {auto _ : Cast t1 CanvasImageData}
  -> (obj : t1)
  -> (sw : Int32)
  -> (sh : Int32)
  -> JSIO ImageData
createImageData a b c = primJS $
  CanvasImageData.prim__createImageData (cast a) b c


export
createImageData1 :
     {auto _ : Cast t1 CanvasImageData}
  -> (obj : t1)
  -> (imagedata : ImageData)
  -> JSIO ImageData
createImageData1 a b = primJS $
  CanvasImageData.prim__createImageData1 (cast a) b


export
getImageData :
     {auto _ : Cast t1 CanvasImageData}
  -> (obj : t1)
  -> (sx : Int32)
  -> (sy : Int32)
  -> (sw : Int32)
  -> (sh : Int32)
  -> JSIO ImageData
getImageData a b c d e = primJS $
  CanvasImageData.prim__getImageData (cast a) b c d e


export
putImageData :
     {auto _ : Cast t1 CanvasImageData}
  -> (obj : t1)
  -> (imagedata : ImageData)
  -> (dx : Int32)
  -> (dy : Int32)
  -> JSIO ()
putImageData a b c d = primJS $
  CanvasImageData.prim__putImageData (cast a) b c d


export
putImageData1 :
     {auto _ : Cast t1 CanvasImageData}
  -> (obj : t1)
  -> (imagedata : ImageData)
  -> (dx : Int32)
  -> (dy : Int32)
  -> (dirtyX : Int32)
  -> (dirtyY : Int32)
  -> (dirtyWidth : Int32)
  -> (dirtyHeight : Int32)
  -> JSIO ()
putImageData1 a b c d e f g h = primJS $
  CanvasImageData.prim__putImageData1 (cast a) b c d e f g h
