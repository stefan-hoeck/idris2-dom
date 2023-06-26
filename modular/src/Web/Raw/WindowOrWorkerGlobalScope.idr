module Web.Raw.WindowOrWorkerGlobalScope

import JS
import Web.Types.Blob
import Web.Types.CacheStorage
import Web.Types.HTMLCanvasElement
import Web.Types.HTMLImageElement
import Web.Types.HTMLVideoElement
import Web.Types.IDBFactory
import Web.Types.ImageBitmap
import Web.Types.ImageBitmapOptions
import Web.Types.ImageData
import Web.Types.OffscreenCanvas
import Web.Types.Performance
import Web.Types.Request
import Web.Types.RequestInit
import Web.Types.Response
import Web.Types.SVGImageElement
import Web.Types.StructuredSerializeOptions
import Web.Types.VoidFunction
import Web.Types.WindowOrWorkerGlobalScope


%default total


export
%foreign "browser:lambda:x=>x.caches"
prim__caches : WindowOrWorkerGlobalScope -> PrimIO CacheStorage


export
%foreign "browser:lambda:x=>x.crossOriginIsolated"
prim__crossOriginIsolated : WindowOrWorkerGlobalScope -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.indexedDB"
prim__indexedDB : WindowOrWorkerGlobalScope -> PrimIO IDBFactory


export
%foreign "browser:lambda:x=>x.isSecureContext"
prim__isSecureContext : WindowOrWorkerGlobalScope -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.origin"
prim__origin : WindowOrWorkerGlobalScope -> PrimIO String


export
%foreign "browser:lambda:x=>x.performance"
prim__performance : WindowOrWorkerGlobalScope -> PrimIO Performance


export
%foreign "browser:lambda:(x,a)=>x.atob(a)"
prim__atob : WindowOrWorkerGlobalScope -> String -> PrimIO ByteString


export
%foreign "browser:lambda:(x,a)=>x.btoa(a)"
prim__btoa : WindowOrWorkerGlobalScope -> String -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.clearInterval(a)"
prim__clearInterval : WindowOrWorkerGlobalScope -> UndefOr Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.clearTimeout(a)"
prim__clearTimeout : WindowOrWorkerGlobalScope -> UndefOr Int32 -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.createImageBitmap(a,b)"
prim__createImageBitmap :
     WindowOrWorkerGlobalScope
  -> Union8
       HTMLImageElement
       SVGImageElement
       HTMLVideoElement
       HTMLCanvasElement
       ImageBitmap
       OffscreenCanvas
       Blob
       ImageData
  -> UndefOr ImageBitmapOptions
  -> PrimIO (Promise ImageBitmap)


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.createImageBitmap(a,b,c,d,e,f)"
prim__createImageBitmap1 :
     WindowOrWorkerGlobalScope
  -> Union8
       HTMLImageElement
       SVGImageElement
       HTMLVideoElement
       HTMLCanvasElement
       ImageBitmap
       OffscreenCanvas
       Blob
       ImageData
  -> Int32
  -> Int32
  -> Int32
  -> Int32
  -> UndefOr ImageBitmapOptions
  -> PrimIO (Promise ImageBitmap)


export
%foreign "browser:lambda:(x,a,b)=>x.fetch(a,b)"
prim__fetch :
     WindowOrWorkerGlobalScope
  -> Union2 Request String
  -> UndefOr RequestInit
  -> PrimIO (Promise Response)


export
%foreign "browser:lambda:(x,a)=>x.queueMicrotask(a)"
prim__queueMicrotask : WindowOrWorkerGlobalScope -> VoidFunction -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.reportError(a)"
prim__reportError : WindowOrWorkerGlobalScope -> AnyPtr -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.structuredClone(a,b)"
prim__structuredClone :
     WindowOrWorkerGlobalScope
  -> AnyPtr
  -> UndefOr StructuredSerializeOptions
  -> PrimIO AnyPtr


export
caches :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> JSIO CacheStorage
caches a = primJS $ WindowOrWorkerGlobalScope.prim__caches (cast a)


export
crossOriginIsolated :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> JSIO Bool
crossOriginIsolated a = tryJS "WindowOrWorkerGlobalScope.crossOriginIsolated" $
  WindowOrWorkerGlobalScope.prim__crossOriginIsolated (cast a)


export
indexedDB :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> JSIO IDBFactory
indexedDB a = primJS $ WindowOrWorkerGlobalScope.prim__indexedDB (cast a)


export
isSecureContext :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> JSIO Bool
isSecureContext a = tryJS "WindowOrWorkerGlobalScope.isSecureContext" $
  WindowOrWorkerGlobalScope.prim__isSecureContext (cast a)


export
origin :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> JSIO String
origin a = primJS $ WindowOrWorkerGlobalScope.prim__origin (cast a)


export
performance :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> JSIO Performance
performance a = primJS $ WindowOrWorkerGlobalScope.prim__performance (cast a)


export
atob :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (data_ : String)
  -> JSIO ByteString
atob a b = primJS $ WindowOrWorkerGlobalScope.prim__atob (cast a) b


export
btoa :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (data_ : String)
  -> JSIO String
btoa a b = primJS $ WindowOrWorkerGlobalScope.prim__btoa (cast a) b


export
clearInterval' :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (id : Optional Int32)
  -> JSIO ()
clearInterval' a b = primJS $
  WindowOrWorkerGlobalScope.prim__clearInterval (cast a) (toFFI b)

export
clearInterval :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> JSIO ()
clearInterval a = primJS $
  WindowOrWorkerGlobalScope.prim__clearInterval (cast a) undef


export
clearTimeout' :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (id : Optional Int32)
  -> JSIO ()
clearTimeout' a b = primJS $
  WindowOrWorkerGlobalScope.prim__clearTimeout (cast a) (toFFI b)

export
clearTimeout :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> JSIO ()
clearTimeout a = primJS $
  WindowOrWorkerGlobalScope.prim__clearTimeout (cast a) undef


export
createImageBitmap' :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> {auto _ : Cast t3 ImageBitmapOptions}
  -> (obj : t1)
  -> (image : HSum
                [ HTMLImageElement
                , SVGImageElement
                , HTMLVideoElement
                , HTMLCanvasElement
                , ImageBitmap
                , OffscreenCanvas
                , Blob
                , ImageData
                ])
  -> (options : Optional t3)
  -> JSIO (Promise ImageBitmap)
createImageBitmap' a b c = primJS $
  WindowOrWorkerGlobalScope.prim__createImageBitmap (cast a) (toFFI b) (optUp c)

export
createImageBitmap :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (image : HSum
                [ HTMLImageElement
                , SVGImageElement
                , HTMLVideoElement
                , HTMLCanvasElement
                , ImageBitmap
                , OffscreenCanvas
                , Blob
                , ImageData
                ])
  -> JSIO (Promise ImageBitmap)
createImageBitmap a b = primJS $
  WindowOrWorkerGlobalScope.prim__createImageBitmap (cast a) (toFFI b) undef


export
createImageBitmap1' :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> {auto _ : Cast t7 ImageBitmapOptions}
  -> (obj : t1)
  -> (image : HSum
                [ HTMLImageElement
                , SVGImageElement
                , HTMLVideoElement
                , HTMLCanvasElement
                , ImageBitmap
                , OffscreenCanvas
                , Blob
                , ImageData
                ])
  -> (sx : Int32)
  -> (sy : Int32)
  -> (sw : Int32)
  -> (sh : Int32)
  -> (options : Optional t7)
  -> JSIO (Promise ImageBitmap)
createImageBitmap1' a b c d e f g = primJS $
  WindowOrWorkerGlobalScope.prim__createImageBitmap1
    (cast a)
    (toFFI b)
    c
    d
    e
    f
    (optUp g)

export
createImageBitmap1 :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (image : HSum
                [ HTMLImageElement
                , SVGImageElement
                , HTMLVideoElement
                , HTMLCanvasElement
                , ImageBitmap
                , OffscreenCanvas
                , Blob
                , ImageData
                ])
  -> (sx : Int32)
  -> (sy : Int32)
  -> (sw : Int32)
  -> (sh : Int32)
  -> JSIO (Promise ImageBitmap)
createImageBitmap1 a b c d e f = primJS $
  WindowOrWorkerGlobalScope.prim__createImageBitmap1
    (cast a)
    (toFFI b)
    c
    d
    e
    f
    undef


export
fetch' :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> {auto _ : Cast t3 RequestInit}
  -> (obj : t1)
  -> (input : HSum [Request, String])
  -> (init : Optional t3)
  -> JSIO (Promise Response)
fetch' a b c = primJS $
  WindowOrWorkerGlobalScope.prim__fetch (cast a) (toFFI b) (optUp c)

export
fetch :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (input : HSum [Request, String])
  -> JSIO (Promise Response)
fetch a b = primJS $
  WindowOrWorkerGlobalScope.prim__fetch (cast a) (toFFI b) undef


export
queueMicrotask :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (callback : VoidFunction)
  -> JSIO ()
queueMicrotask a b = primJS $
  WindowOrWorkerGlobalScope.prim__queueMicrotask (cast a) b


export
reportError :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (e : Any)
  -> JSIO ()
reportError a b = primJS $
  WindowOrWorkerGlobalScope.prim__reportError (cast a) (toFFI b)


export
structuredClone' :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> {auto _ : Cast t3 StructuredSerializeOptions}
  -> (obj : t1)
  -> (value : Any)
  -> (options : Optional t3)
  -> JSIO Any
structuredClone' a b c = tryJS "WindowOrWorkerGlobalScope.structuredClone'" $
  WindowOrWorkerGlobalScope.prim__structuredClone (cast a) (toFFI b) (optUp c)

export
structuredClone :
     {auto _ : Cast t1 WindowOrWorkerGlobalScope}
  -> (obj : t1)
  -> (value : Any)
  -> JSIO Any
structuredClone a b = tryJS "WindowOrWorkerGlobalScope.structuredClone" $
  WindowOrWorkerGlobalScope.prim__structuredClone (cast a) (toFFI b) undef
