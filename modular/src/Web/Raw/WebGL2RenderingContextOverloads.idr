module Web.Raw.WebGL2RenderingContextOverloads

import JS
import Web.Types.HTMLCanvasElement
import Web.Types.HTMLImageElement
import Web.Types.HTMLVideoElement
import Web.Types.ImageBitmap
import Web.Types.ImageData
import Web.Types.OffscreenCanvas
import Web.Types.WebGL2RenderingContextOverloads
import Web.Types.WebGLUniformLocation


%default total


export
%foreign "browser:lambda:(x,a,b,c)=>x.bufferData(a,b,c)"
prim__bufferData :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> JSInt64
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.bufferData(a,b,c)"
prim__bufferData1 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Nullable
       (Union11
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
          ArrayBuffer)
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.bufferData(a,b,c,d,e)"
prim__bufferData2 :
     WebGL2RenderingContextOverloads
  -> Bits32
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
  -> Bits32
  -> Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.bufferSubData(a,b,c)"
prim__bufferSubData :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> JSInt64
  -> Union11
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
       ArrayBuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.bufferSubData(a,b,c,d,e)"
prim__bufferSubData1 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> JSInt64
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
  -> Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.compressedTexImage2D(a,b,c,d,e,f,g,h)"
prim__compressedTexImage2D :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.compressedTexImage2D(a,b,c,d,e,f,g,h,i)"
prim__compressedTexImage2D1 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
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
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.compressedTexSubImage2D(a,b,c,d,e,f,g,h,i)"
prim__compressedTexSubImage2D :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Int32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.compressedTexSubImage2D(a,b,c,d,e,f,g,h,i,j)"
prim__compressedTexSubImage2D1 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
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
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.readPixels(a,b,c,d,e,f,g)"
prim__readPixels :
     WebGL2RenderingContextOverloads
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Nullable
       (Union10
          Int8Array
          Int16Array
          Int32Array
          UInt8Array
          UInt8Array
          UInt8Array
          UInt8ClampedArray
          Float32Array
          Float64Array
          DataView)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.readPixels(a,b,c,d,e,f,g)"
prim__readPixels1 :
     WebGL2RenderingContextOverloads
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.readPixels(a,b,c,d,e,f,g,h)"
prim__readPixels2 :
     WebGL2RenderingContextOverloads
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
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
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texImage2D(a,b,c,d,e,f,g,h,i)"
prim__texImage2D :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Nullable
       (Union10
          Int8Array
          Int16Array
          Int32Array
          UInt8Array
          UInt8Array
          UInt8Array
          UInt8ClampedArray
          Float32Array
          Float64Array
          DataView)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.texImage2D(a,b,c,d,e,f)"
prim__texImage2D1 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Union6
       ImageBitmap
       ImageData
       HTMLImageElement
       HTMLCanvasElement
       HTMLVideoElement
       OffscreenCanvas
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texImage2D(a,b,c,d,e,f,g,h,i)"
prim__texImage2D2 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texImage2D(a,b,c,d,e,f,g,h,i)"
prim__texImage2D3 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Union6
       ImageBitmap
       ImageData
       HTMLImageElement
       HTMLCanvasElement
       HTMLVideoElement
       OffscreenCanvas
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage2D(a,b,c,d,e,f,g,h,i,j)"
prim__texImage2D4 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
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
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texSubImage2D(a,b,c,d,e,f,g,h,i)"
prim__texSubImage2D :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Nullable
       (Union10
          Int8Array
          Int16Array
          Int32Array
          UInt8Array
          UInt8Array
          UInt8Array
          UInt8ClampedArray
          Float32Array
          Float64Array
          DataView)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.texSubImage2D(a,b,c,d,e,f,g)"
prim__texSubImage2D1 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Union6
       ImageBitmap
       ImageData
       HTMLImageElement
       HTMLCanvasElement
       HTMLVideoElement
       OffscreenCanvas
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texSubImage2D(a,b,c,d,e,f,g,h,i)"
prim__texSubImage2D2 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> JSInt64
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texSubImage2D(a,b,c,d,e,f,g,h,i)"
prim__texSubImage2D3 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
  -> Union6
       ImageBitmap
       ImageData
       HTMLImageElement
       HTMLCanvasElement
       HTMLVideoElement
       OffscreenCanvas
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texSubImage2D(a,b,c,d,e,f,g,h,i,j)"
prim__texSubImage2D4 :
     WebGL2RenderingContextOverloads
  -> Bits32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> Bits32
  -> Bits32
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
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform1fv(a,b,c,d)"
prim__uniform1fv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform1iv(a,b,c,d)"
prim__uniform1iv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Int32Array (Array Int32)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2fv(a,b,c,d)"
prim__uniform2fv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2iv(a,b,c,d)"
prim__uniform2iv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Int32Array (Array Int32)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3fv(a,b,c,d)"
prim__uniform3fv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3iv(a,b,c,d)"
prim__uniform3iv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Int32Array (Array Int32)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform4fv(a,b,c,d)"
prim__uniform4fv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.uniform4iv(a,b,c,d)"
prim__uniform4iv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Int32Array (Array Int32)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix2fv(a,b,c,d,e)"
prim__uniformMatrix2fv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix3fv(a,b,c,d,e)"
prim__uniformMatrix3fv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix4fv(a,b,c,d,e)"
prim__uniformMatrix4fv :
     WebGL2RenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> UndefOr Bits32
  -> UndefOr Bits32
  -> PrimIO ()


export
bufferData :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (size : JSInt64)
  -> (usage : Bits32)
  -> JSIO ()
bufferData a b c d = primJS $
  WebGL2RenderingContextOverloads.prim__bufferData (cast a) b c d


export
bufferData1 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (srcData : Maybe
                  (HSum
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
                     , ArrayBuffer
                     ]))
  -> (usage : Bits32)
  -> JSIO ()
bufferData1 a b c d = primJS $
  WebGL2RenderingContextOverloads.prim__bufferData1 (cast a) b (toFFI c) d


export
bufferData2' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (srcData : HSum
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
  -> (usage : Bits32)
  -> (srcOffset : Bits32)
  -> (length : Optional Bits32)
  -> JSIO ()
bufferData2' a b c d e f = primJS $
  WebGL2RenderingContextOverloads.prim__bufferData2
    (cast a)
    b
    (toFFI c)
    d
    e
    (toFFI f)

export
bufferData2 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (srcData : HSum
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
  -> (usage : Bits32)
  -> (srcOffset : Bits32)
  -> JSIO ()
bufferData2 a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__bufferData2
    (cast a)
    b
    (toFFI c)
    d
    e
    undef


export
bufferSubData :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (dstByteOffset : JSInt64)
  -> (srcData : HSum
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
                  , ArrayBuffer
                  ])
  -> JSIO ()
bufferSubData a b c d = primJS $
  WebGL2RenderingContextOverloads.prim__bufferSubData (cast a) b c (toFFI d)


export
bufferSubData1' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (dstByteOffset : JSInt64)
  -> (srcData : HSum
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
  -> (srcOffset : Bits32)
  -> (length : Optional Bits32)
  -> JSIO ()
bufferSubData1' a b c d e f = primJS $
  WebGL2RenderingContextOverloads.prim__bufferSubData1
    (cast a)
    b
    c
    (toFFI d)
    e
    (toFFI f)

export
bufferSubData1 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (dstByteOffset : JSInt64)
  -> (srcData : HSum
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
  -> (srcOffset : Bits32)
  -> JSIO ()
bufferSubData1 a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__bufferSubData1
    (cast a)
    b
    c
    (toFFI d)
    e
    undef


export
compressedTexImage2D :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Bits32)
  -> (width : Int32)
  -> (height : Int32)
  -> (border : Int32)
  -> (imageSize : Int32)
  -> (offset : JSInt64)
  -> JSIO ()
compressedTexImage2D a b c d e f g h i = primJS $
  WebGL2RenderingContextOverloads.prim__compressedTexImage2D
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i


export
compressedTexImage2D1' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Bits32)
  -> (width : Int32)
  -> (height : Int32)
  -> (border : Int32)
  -> (srcData : HSum
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
  -> (srcOffset : Optional Bits32)
  -> (srcLengthOverride : Optional Bits32)
  -> JSIO ()
compressedTexImage2D1' a b c d e f g h i j = primJS $
  WebGL2RenderingContextOverloads.prim__compressedTexImage2D1
    (cast a)
    b
    c
    d
    e
    f
    g
    (toFFI h)
    (toFFI i)
    (toFFI j)

export
compressedTexImage2D1 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Bits32)
  -> (width : Int32)
  -> (height : Int32)
  -> (border : Int32)
  -> (srcData : HSum
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
compressedTexImage2D1 a b c d e f g h = primJS $
  WebGL2RenderingContextOverloads.prim__compressedTexImage2D1
    (cast a)
    b
    c
    d
    e
    f
    g
    (toFFI h)
    undef
    undef


export
compressedTexSubImage2D :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (imageSize : Int32)
  -> (offset : JSInt64)
  -> JSIO ()
compressedTexSubImage2D a b c d e f g h i j = primJS $
  WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i
    j


export
compressedTexSubImage2D1' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (srcData : HSum
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
  -> (srcOffset : Optional Bits32)
  -> (srcLengthOverride : Optional Bits32)
  -> JSIO ()
compressedTexSubImage2D1' a b c d e f g h i j k = primJS $
  WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D1
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    (toFFI i)
    (toFFI j)
    (toFFI k)

export
compressedTexSubImage2D1 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (srcData : HSum
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
compressedTexSubImage2D1 a b c d e f g h i = primJS $
  WebGL2RenderingContextOverloads.prim__compressedTexSubImage2D1
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    (toFFI i)
    undef
    undef


export
readPixels :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (x : Int32)
  -> (y : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (dstData : Maybe
                  (HSum
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
                     ]))
  -> JSIO ()
readPixels a b c d e f g h = primJS $
  WebGL2RenderingContextOverloads.prim__readPixels
    (cast a)
    b
    c
    d
    e
    f
    g
    (toFFI h)


export
readPixels1 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (x : Int32)
  -> (y : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (offset : JSInt64)
  -> JSIO ()
readPixels1 a b c d e f g h = primJS $
  WebGL2RenderingContextOverloads.prim__readPixels1 (cast a) b c d e f g h


export
readPixels2 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (x : Int32)
  -> (y : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (dstData : HSum
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
  -> (dstOffset : Bits32)
  -> JSIO ()
readPixels2 a b c d e f g h i = primJS $
  WebGL2RenderingContextOverloads.prim__readPixels2
    (cast a)
    b
    c
    d
    e
    f
    g
    (toFFI h)
    i


export
texImage2D :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (border : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (pixels : Maybe
                 (HSum
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
                    ]))
  -> JSIO ()
texImage2D a b c d e f g h i j = primJS $
  WebGL2RenderingContextOverloads.prim__texImage2D
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i
    (toFFI j)


export
texImage2D1 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (source : HSum
                 [ ImageBitmap
                 , ImageData
                 , HTMLImageElement
                 , HTMLCanvasElement
                 , HTMLVideoElement
                 , OffscreenCanvas
                 ])
  -> JSIO ()
texImage2D1 a b c d e f g = primJS $
  WebGL2RenderingContextOverloads.prim__texImage2D1 (cast a) b c d e f (toFFI g)


export
texImage2D2 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (border : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (pboOffset : JSInt64)
  -> JSIO ()
texImage2D2 a b c d e f g h i j = primJS $
  WebGL2RenderingContextOverloads.prim__texImage2D2 (cast a) b c d e f g h i j


export
texImage2D3 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (border : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (source : HSum
                 [ ImageBitmap
                 , ImageData
                 , HTMLImageElement
                 , HTMLCanvasElement
                 , HTMLVideoElement
                 , OffscreenCanvas
                 ])
  -> JSIO ()
texImage2D3 a b c d e f g h i j = primJS $
  WebGL2RenderingContextOverloads.prim__texImage2D3
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i
    (toFFI j)


export
texImage2D4 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (border : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (srcData : HSum
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
  -> (srcOffset : Bits32)
  -> JSIO ()
texImage2D4 a b c d e f g h i j k = primJS $
  WebGL2RenderingContextOverloads.prim__texImage2D4
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i
    (toFFI j)
    k


export
texSubImage2D :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (pixels : Maybe
                 (HSum
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
                    ]))
  -> JSIO ()
texSubImage2D a b c d e f g h i j = primJS $
  WebGL2RenderingContextOverloads.prim__texSubImage2D
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i
    (toFFI j)


export
texSubImage2D1 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (source : HSum
                 [ ImageBitmap
                 , ImageData
                 , HTMLImageElement
                 , HTMLCanvasElement
                 , HTMLVideoElement
                 , OffscreenCanvas
                 ])
  -> JSIO ()
texSubImage2D1 a b c d e f g h = primJS $
  WebGL2RenderingContextOverloads.prim__texSubImage2D1
    (cast a)
    b
    c
    d
    e
    f
    g
    (toFFI h)


export
texSubImage2D2 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (pboOffset : JSInt64)
  -> JSIO ()
texSubImage2D2 a b c d e f g h i j = primJS $
  WebGL2RenderingContextOverloads.prim__texSubImage2D2
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i
    j


export
texSubImage2D3 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (source : HSum
                 [ ImageBitmap
                 , ImageData
                 , HTMLImageElement
                 , HTMLCanvasElement
                 , HTMLVideoElement
                 , OffscreenCanvas
                 ])
  -> JSIO ()
texSubImage2D3 a b c d e f g h i j = primJS $
  WebGL2RenderingContextOverloads.prim__texSubImage2D3
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i
    (toFFI j)


export
texSubImage2D4 :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
  -> (type : Bits32)
  -> (srcData : HSum
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
  -> (srcOffset : Bits32)
  -> JSIO ()
texSubImage2D4 a b c d e f g h i j k = primJS $
  WebGL2RenderingContextOverloads.prim__texSubImage2D4
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    i
    (toFFI j)
    k


export
uniform1fv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Float32Array, Array Double])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniform1fv' a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__uniform1fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
uniform1fv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Float32Array, Array Double])
  -> JSIO ()
uniform1fv a b c = primJS $
  WebGL2RenderingContextOverloads.prim__uniform1fv
    (cast a)
    (toFFI b)
    (toFFI c)
    undef
    undef


export
uniform1iv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Int32Array, Array Int32])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniform1iv' a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__uniform1iv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
uniform1iv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Int32Array, Array Int32])
  -> JSIO ()
uniform1iv a b c = primJS $
  WebGL2RenderingContextOverloads.prim__uniform1iv
    (cast a)
    (toFFI b)
    (toFFI c)
    undef
    undef


export
uniform2fv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Float32Array, Array Double])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniform2fv' a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__uniform2fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
uniform2fv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Float32Array, Array Double])
  -> JSIO ()
uniform2fv a b c = primJS $
  WebGL2RenderingContextOverloads.prim__uniform2fv
    (cast a)
    (toFFI b)
    (toFFI c)
    undef
    undef


export
uniform2iv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Int32Array, Array Int32])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniform2iv' a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__uniform2iv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
uniform2iv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Int32Array, Array Int32])
  -> JSIO ()
uniform2iv a b c = primJS $
  WebGL2RenderingContextOverloads.prim__uniform2iv
    (cast a)
    (toFFI b)
    (toFFI c)
    undef
    undef


export
uniform3fv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Float32Array, Array Double])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniform3fv' a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__uniform3fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
uniform3fv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Float32Array, Array Double])
  -> JSIO ()
uniform3fv a b c = primJS $
  WebGL2RenderingContextOverloads.prim__uniform3fv
    (cast a)
    (toFFI b)
    (toFFI c)
    undef
    undef


export
uniform3iv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Int32Array, Array Int32])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniform3iv' a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__uniform3iv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
uniform3iv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Int32Array, Array Int32])
  -> JSIO ()
uniform3iv a b c = primJS $
  WebGL2RenderingContextOverloads.prim__uniform3iv
    (cast a)
    (toFFI b)
    (toFFI c)
    undef
    undef


export
uniform4fv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Float32Array, Array Double])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniform4fv' a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__uniform4fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
uniform4fv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Float32Array, Array Double])
  -> JSIO ()
uniform4fv a b c = primJS $
  WebGL2RenderingContextOverloads.prim__uniform4fv
    (cast a)
    (toFFI b)
    (toFFI c)
    undef
    undef


export
uniform4iv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Int32Array, Array Int32])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniform4iv' a b c d e = primJS $
  WebGL2RenderingContextOverloads.prim__uniform4iv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
uniform4iv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (data_ : HSum [Int32Array, Array Int32])
  -> JSIO ()
uniform4iv a b c = primJS $
  WebGL2RenderingContextOverloads.prim__uniform4iv
    (cast a)
    (toFFI b)
    (toFFI c)
    undef
    undef


export
uniformMatrix2fv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (data_ : HSum [Float32Array, Array Double])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniformMatrix2fv' a b c d e f = primJS $
  WebGL2RenderingContextOverloads.prim__uniformMatrix2fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)

export
uniformMatrix2fv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (data_ : HSum [Float32Array, Array Double])
  -> JSIO ()
uniformMatrix2fv a b c d = primJS $
  WebGL2RenderingContextOverloads.prim__uniformMatrix2fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    undef
    undef


export
uniformMatrix3fv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (data_ : HSum [Float32Array, Array Double])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniformMatrix3fv' a b c d e f = primJS $
  WebGL2RenderingContextOverloads.prim__uniformMatrix3fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)

export
uniformMatrix3fv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (data_ : HSum [Float32Array, Array Double])
  -> JSIO ()
uniformMatrix3fv a b c d = primJS $
  WebGL2RenderingContextOverloads.prim__uniformMatrix3fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    undef
    undef


export
uniformMatrix4fv' :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (data_ : HSum [Float32Array, Array Double])
  -> (srcOffset : Optional Bits32)
  -> (srcLength : Optional Bits32)
  -> JSIO ()
uniformMatrix4fv' a b c d e f = primJS $
  WebGL2RenderingContextOverloads.prim__uniformMatrix4fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)

export
uniformMatrix4fv :
     {auto _ : Cast t1 WebGL2RenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (data_ : HSum [Float32Array, Array Double])
  -> JSIO ()
uniformMatrix4fv a b c d = primJS $
  WebGL2RenderingContextOverloads.prim__uniformMatrix4fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    undef
    undef
