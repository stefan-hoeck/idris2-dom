module Web.Internal.MediasourcePrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaSource

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
  prim__setOnsourceopen :
       MediaSource
    -> Nullable EventHandlerNonNull
    -> PrimIO ()



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



namespace SourceBuffer

  export
  %foreign "browser:lambda:x=>x.appendWindowEnd"
  prim__appendWindowEnd : SourceBuffer -> PrimIO Double



  export
  %foreign "browser:lambda:(x,v)=>{x.appendWindowEnd = v}"
  prim__setAppendWindowEnd : SourceBuffer -> Double -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.appendWindowStart"
  prim__appendWindowStart : SourceBuffer -> PrimIO Double



  export
  %foreign "browser:lambda:(x,v)=>{x.appendWindowStart = v}"
  prim__setAppendWindowStart : SourceBuffer -> Double -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.audioTracks"
  prim__audioTracks : SourceBuffer -> PrimIO AudioTrackList


  export
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : SourceBuffer -> PrimIO TimeRanges


  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : SourceBuffer -> PrimIO String



  export
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : SourceBuffer -> String -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : SourceBuffer -> Nullable EventHandlerNonNull -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : SourceBuffer -> Nullable EventHandlerNonNull -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.onupdate"
  prim__onupdate : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



  export
  %foreign "browser:lambda:(x,v)=>{x.onupdate = v}"
  prim__setOnupdate : SourceBuffer -> Nullable EventHandlerNonNull -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.onupdateend"
  prim__onupdateend : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



  export
  %foreign "browser:lambda:(x,v)=>{x.onupdateend = v}"
  prim__setOnupdateend :
       SourceBuffer
    -> Nullable EventHandlerNonNull
    -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.onupdatestart"
  prim__onupdatestart : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



  export
  %foreign "browser:lambda:(x,v)=>{x.onupdatestart = v}"
  prim__setOnupdatestart :
       SourceBuffer
    -> Nullable EventHandlerNonNull
    -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : SourceBuffer -> PrimIO TextTrackList


  export
  %foreign "browser:lambda:x=>x.timestampOffset"
  prim__timestampOffset : SourceBuffer -> PrimIO Double



  export
  %foreign "browser:lambda:(x,v)=>{x.timestampOffset = v}"
  prim__setTimestampOffset : SourceBuffer -> Double -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.updating"
  prim__updating : SourceBuffer -> PrimIO Boolean


  export
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : SourceBuffer -> PrimIO VideoTrackList


  export
  %foreign "browser:lambda:x=>x.abort()"
  prim__abort : SourceBuffer -> PrimIO ()


  export
  %foreign "browser:lambda:(x,a)=>x.appendBuffer(a)"
  prim__appendBuffer :
       SourceBuffer
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
  %foreign "browser:lambda:(x,a,b)=>x.remove(a,b)"
  prim__remove : SourceBuffer -> Double -> Double -> PrimIO ()



namespace SourceBufferList

  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : SourceBufferList -> Bits32 -> PrimIO SourceBuffer


  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : SourceBufferList -> PrimIO Bits32


  export
  %foreign "browser:lambda:x=>x.onaddsourcebuffer"
  prim__onaddsourcebuffer :
       SourceBufferList
    -> PrimIO (Nullable EventHandlerNonNull)



  export
  %foreign "browser:lambda:(x,v)=>{x.onaddsourcebuffer = v}"
  prim__setOnaddsourcebuffer :
       SourceBufferList
    -> Nullable EventHandlerNonNull
    -> PrimIO ()



  export
  %foreign "browser:lambda:x=>x.onremovesourcebuffer"
  prim__onremovesourcebuffer :
       SourceBufferList
    -> PrimIO (Nullable EventHandlerNonNull)



  export
  %foreign "browser:lambda:(x,v)=>{x.onremovesourcebuffer = v}"
  prim__setOnremovesourcebuffer :
       SourceBufferList
    -> Nullable EventHandlerNonNull
    -> PrimIO ()
