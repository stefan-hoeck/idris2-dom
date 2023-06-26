module Web.Raw.WebGLRenderingContextOverloads

import JS
import Web.Types.HTMLCanvasElement
import Web.Types.HTMLImageElement
import Web.Types.HTMLVideoElement
import Web.Types.ImageBitmap
import Web.Types.ImageData
import Web.Types.OffscreenCanvas
import Web.Types.WebGLRenderingContextOverloads
import Web.Types.WebGLUniformLocation


%default total


export
%foreign "browser:lambda:(x,a,b,c)=>x.bufferData(a,b,c)"
prim__bufferData :
     WebGLRenderingContextOverloads
  -> Bits32
  -> JSInt64
  -> Bits32
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.bufferData(a,b,c)"
prim__bufferData1 :
     WebGLRenderingContextOverloads
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
%foreign "browser:lambda:(x,a,b,c)=>x.bufferSubData(a,b,c)"
prim__bufferSubData :
     WebGLRenderingContextOverloads
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
%foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.compressedTexImage2D(a,b,c,d,e,f,g)"
prim__compressedTexImage2D :
     WebGLRenderingContextOverloads
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
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.compressedTexSubImage2D(a,b,c,d,e,f,g,h)"
prim__compressedTexSubImage2D :
     WebGLRenderingContextOverloads
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
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.readPixels(a,b,c,d,e,f,g)"
prim__readPixels :
     WebGLRenderingContextOverloads
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
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texImage2D(a,b,c,d,e,f,g,h,i)"
prim__texImage2D :
     WebGLRenderingContextOverloads
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
     WebGLRenderingContextOverloads
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
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texSubImage2D(a,b,c,d,e,f,g,h,i)"
prim__texSubImage2D :
     WebGLRenderingContextOverloads
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
     WebGLRenderingContextOverloads
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
%foreign "browser:lambda:(x,a,b)=>x.uniform1fv(a,b)"
prim__uniform1fv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform1iv(a,b)"
prim__uniform1iv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Int32Array (Array Int32)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform2fv(a,b)"
prim__uniform2fv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform2iv(a,b)"
prim__uniform2iv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Int32Array (Array Int32)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform3fv(a,b)"
prim__uniform3fv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform3iv(a,b)"
prim__uniform3iv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Int32Array (Array Int32)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform4fv(a,b)"
prim__uniform4fv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.uniform4iv(a,b)"
prim__uniform4iv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Union2 Int32Array (Array Int32)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.uniformMatrix2fv(a,b,c)"
prim__uniformMatrix2fv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.uniformMatrix3fv(a,b,c)"
prim__uniformMatrix3fv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.uniformMatrix4fv(a,b,c)"
prim__uniformMatrix4fv :
     WebGLRenderingContextOverloads
  -> Nullable WebGLUniformLocation
  -> Boolean
  -> Union2 Float32Array (Array Double)
  -> PrimIO ()


export
bufferData :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (size : JSInt64)
  -> (usage : Bits32)
  -> JSIO ()
bufferData a b c d = primJS $
  WebGLRenderingContextOverloads.prim__bufferData (cast a) b c d


export
bufferData1 :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (data_ : Maybe
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
  WebGLRenderingContextOverloads.prim__bufferData1 (cast a) b (toFFI c) d


export
bufferSubData :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (offset : JSInt64)
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
                , ArrayBuffer
                ])
  -> JSIO ()
bufferSubData a b c d = primJS $
  WebGLRenderingContextOverloads.prim__bufferSubData (cast a) b c (toFFI d)


export
compressedTexImage2D :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (internalformat : Bits32)
  -> (width : Int32)
  -> (height : Int32)
  -> (border : Int32)
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
compressedTexImage2D a b c d e f g h = primJS $
  WebGLRenderingContextOverloads.prim__compressedTexImage2D
    (cast a)
    b
    c
    d
    e
    f
    g
    (toFFI h)


export
compressedTexSubImage2D :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (target : Bits32)
  -> (level : Int32)
  -> (xoffset : Int32)
  -> (yoffset : Int32)
  -> (width : Int32)
  -> (height : Int32)
  -> (format : Bits32)
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
compressedTexSubImage2D a b c d e f g h i = primJS $
  WebGLRenderingContextOverloads.prim__compressedTexSubImage2D
    (cast a)
    b
    c
    d
    e
    f
    g
    h
    (toFFI i)


export
readPixels :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (x : Int32)
  -> (y : Int32)
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
readPixels a b c d e f g h = primJS $
  WebGLRenderingContextOverloads.prim__readPixels (cast a) b c d e f g (toFFI h)


export
texImage2D :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
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
  WebGLRenderingContextOverloads.prim__texImage2D
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
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
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
  WebGLRenderingContextOverloads.prim__texImage2D1 (cast a) b c d e f (toFFI g)


export
texSubImage2D :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
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
  WebGLRenderingContextOverloads.prim__texSubImage2D
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
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
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
  WebGLRenderingContextOverloads.prim__texSubImage2D1
    (cast a)
    b
    c
    d
    e
    f
    g
    (toFFI h)


export
uniform1fv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (v : HSum [Float32Array, Array Double])
  -> JSIO ()
uniform1fv a b c = primJS $
  WebGLRenderingContextOverloads.prim__uniform1fv (cast a) (toFFI b) (toFFI c)


export
uniform1iv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (v : HSum [Int32Array, Array Int32])
  -> JSIO ()
uniform1iv a b c = primJS $
  WebGLRenderingContextOverloads.prim__uniform1iv (cast a) (toFFI b) (toFFI c)


export
uniform2fv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (v : HSum [Float32Array, Array Double])
  -> JSIO ()
uniform2fv a b c = primJS $
  WebGLRenderingContextOverloads.prim__uniform2fv (cast a) (toFFI b) (toFFI c)


export
uniform2iv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (v : HSum [Int32Array, Array Int32])
  -> JSIO ()
uniform2iv a b c = primJS $
  WebGLRenderingContextOverloads.prim__uniform2iv (cast a) (toFFI b) (toFFI c)


export
uniform3fv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (v : HSum [Float32Array, Array Double])
  -> JSIO ()
uniform3fv a b c = primJS $
  WebGLRenderingContextOverloads.prim__uniform3fv (cast a) (toFFI b) (toFFI c)


export
uniform3iv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (v : HSum [Int32Array, Array Int32])
  -> JSIO ()
uniform3iv a b c = primJS $
  WebGLRenderingContextOverloads.prim__uniform3iv (cast a) (toFFI b) (toFFI c)


export
uniform4fv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (v : HSum [Float32Array, Array Double])
  -> JSIO ()
uniform4fv a b c = primJS $
  WebGLRenderingContextOverloads.prim__uniform4fv (cast a) (toFFI b) (toFFI c)


export
uniform4iv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (v : HSum [Int32Array, Array Int32])
  -> JSIO ()
uniform4iv a b c = primJS $
  WebGLRenderingContextOverloads.prim__uniform4iv (cast a) (toFFI b) (toFFI c)


export
uniformMatrix2fv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (value : HSum [Float32Array, Array Double])
  -> JSIO ()
uniformMatrix2fv a b c d = primJS $
  WebGLRenderingContextOverloads.prim__uniformMatrix2fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)


export
uniformMatrix3fv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (value : HSum [Float32Array, Array Double])
  -> JSIO ()
uniformMatrix3fv a b c d = primJS $
  WebGLRenderingContextOverloads.prim__uniformMatrix3fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)


export
uniformMatrix4fv :
     {auto _ : Cast t1 WebGLRenderingContextOverloads}
  -> (obj : t1)
  -> (location : Maybe WebGLUniformLocation)
  -> (transpose : Bool)
  -> (value : HSum [Float32Array, Array Double])
  -> JSIO ()
uniformMatrix4fv a b c d = primJS $
  WebGLRenderingContextOverloads.prim__uniformMatrix4fv
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)

