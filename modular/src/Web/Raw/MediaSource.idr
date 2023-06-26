module Web.Raw.MediaSource

import JS
import Web.Types.EndOfStreamError
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.MediaSource
import Web.Types.ReadyState
import Web.Types.SourceBuffer
import Web.Types.SourceBufferList


%default total


export
%foreign "browser:lambda:()=> new MediaSource()"
prim__new : PrimIO MediaSource


export
%foreign "browser:lambda:(a)=>MediaSource.isTypeSupported(a)"
prim__isTypeSupported : String -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.activeSourceBuffers"
prim__activeSourceBuffers : MediaSource -> PrimIO SourceBufferList


export
%foreign "browser:lambda:x=>x.duration"
prim__duration : MediaSource -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.duration = v}"
prim__setDuration : MediaSource -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onsourceclose"
prim__onsourceclose : MediaSource -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onsourceclose = v}"
prim__setOnsourceclose :
     MediaSource
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onsourceended"
prim__onsourceended : MediaSource -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onsourceended = v}"
prim__setOnsourceended :
     MediaSource
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onsourceopen"
prim__onsourceopen : MediaSource -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onsourceopen = v}"
prim__setOnsourceopen : MediaSource -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : MediaSource -> PrimIO String


export
%foreign "browser:lambda:x=>x.sourceBuffers"
prim__sourceBuffers : MediaSource -> PrimIO SourceBufferList


export
%foreign "browser:lambda:(x,a)=>x.addSourceBuffer(a)"
prim__addSourceBuffer : MediaSource -> String -> PrimIO SourceBuffer


export
%foreign "browser:lambda:x=>x.clearLiveSeekableRange()"
prim__clearLiveSeekableRange : MediaSource -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.endOfStream(a)"
prim__endOfStream : MediaSource -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.removeSourceBuffer(a)"
prim__removeSourceBuffer : MediaSource -> SourceBuffer -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.setLiveSeekableRange(a,b)"
prim__setLiveSeekableRange : MediaSource -> Double -> Double -> PrimIO ()


export
new : JSIO MediaSource
new = primJS $ MediaSource.prim__new


export
isTypeSupported : (type : String) -> JSIO Bool
isTypeSupported a = tryJS "MediaSource.isTypeSupported" $
  MediaSource.prim__isTypeSupported a


export
activeSourceBuffers : (obj : MediaSource) -> JSIO SourceBufferList
activeSourceBuffers a = primJS $ MediaSource.prim__activeSourceBuffers a


export
duration : MediaSource -> Attribute True Prelude.id Double
duration v = fromPrim
               "MediaSource.getduration"
               prim__duration
               prim__setDuration
               v


export
onsourceclose : MediaSource -> Attribute False Maybe EventHandlerNonNull
onsourceclose v = fromNullablePrim
                    "MediaSource.getonsourceclose"
                    prim__onsourceclose
                    prim__setOnsourceclose
                    v


export
onsourceended : MediaSource -> Attribute False Maybe EventHandlerNonNull
onsourceended v = fromNullablePrim
                    "MediaSource.getonsourceended"
                    prim__onsourceended
                    prim__setOnsourceended
                    v


export
onsourceopen : MediaSource -> Attribute False Maybe EventHandlerNonNull
onsourceopen v = fromNullablePrim
                   "MediaSource.getonsourceopen"
                   prim__onsourceopen
                   prim__setOnsourceopen
                   v


export
readyState : (obj : MediaSource) -> JSIO ReadyState
readyState a = tryJS "MediaSource.readyState" $ MediaSource.prim__readyState a


export
sourceBuffers : (obj : MediaSource) -> JSIO SourceBufferList
sourceBuffers a = primJS $ MediaSource.prim__sourceBuffers a


export
addSourceBuffer : (obj : MediaSource) -> (type : String) -> JSIO SourceBuffer
addSourceBuffer a b = primJS $ MediaSource.prim__addSourceBuffer a b


export
clearLiveSeekableRange : (obj : MediaSource) -> JSIO ()
clearLiveSeekableRange a = primJS $ MediaSource.prim__clearLiveSeekableRange a


export
endOfStream' :
     (obj : MediaSource)
  -> (error : Optional EndOfStreamError)
  -> JSIO ()
endOfStream' a b = primJS $ MediaSource.prim__endOfStream a (toFFI b)

export
endOfStream : (obj : MediaSource) -> JSIO ()
endOfStream a = primJS $ MediaSource.prim__endOfStream a undef


export
removeSourceBuffer :
     (obj : MediaSource)
  -> (sourceBuffer : SourceBuffer)
  -> JSIO ()
removeSourceBuffer a b = primJS $ MediaSource.prim__removeSourceBuffer a b


export
setLiveSeekableRange :
     (obj : MediaSource)
  -> (start : Double)
  -> (end : Double)
  -> JSIO ()
setLiveSeekableRange a b c = primJS $
  MediaSource.prim__setLiveSeekableRange a b c

