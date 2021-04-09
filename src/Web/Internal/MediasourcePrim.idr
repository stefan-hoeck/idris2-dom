module Web.Internal.MediasourcePrim
 
import JS
import Web.Internal.Types
 

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
  prim__onsourceclose : MediaSource -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onsourceclose = v}"
  prim__setOnsourceclose : MediaSource -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onsourceended"
  prim__onsourceended : MediaSource -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onsourceended = v}"
  prim__setOnsourceended : MediaSource -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onsourceopen"
  prim__onsourceopen : MediaSource -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onsourceopen = v}"
  prim__setOnsourceopen : MediaSource -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : MediaSource -> PrimIO ReadyState
  
  export
  %foreign "browser:lambda:x=>x.sourceBuffers"
  prim__sourceBuffers : MediaSource -> PrimIO SourceBufferList
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.addSourceBuffer(a b)"
  prim__addSourceBuffer : MediaSource -> String -> PrimIO SourceBuffer
  
  export
  %foreign "browser:lambda:(x,a)=>x.clearLiveSeekableRange(a)"
  prim__clearLiveSeekableRange : MediaSource -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.endOfStream(a b)"
  prim__endOfStream : MediaSource -> UndefOr EndOfStreamError -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.removeSourceBuffer(a b)"
  prim__removeSourceBuffer : MediaSource -> SourceBuffer -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setLiveSeekableRange(a b c)"
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
  prim__mode : SourceBuffer -> PrimIO AppendMode
  
  export
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : SourceBuffer -> AppendMode -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : SourceBuffer -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : SourceBuffer -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : SourceBuffer -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : SourceBuffer -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onupdate"
  prim__onupdate : SourceBuffer -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onupdate = v}"
  prim__setOnupdate : SourceBuffer -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onupdateend"
  prim__onupdateend : SourceBuffer -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onupdateend = v}"
  prim__setOnupdateend : SourceBuffer -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onupdatestart"
  prim__onupdatestart : SourceBuffer -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onupdatestart = v}"
  prim__setOnupdatestart : SourceBuffer -> EventHandler -> PrimIO ()
  
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
  %foreign "browser:lambda:(x,a)=>x.abort(a)"
  prim__abort : SourceBuffer -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.appendBuffer(a b)"
  prim__appendBuffer : SourceBuffer -> BufferSource -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.remove(a b c)"
  prim__remove : SourceBuffer -> Double -> Double -> PrimIO ()

namespace SourceBufferList
  
  export
  %foreign "browser:lambda:(o,x)=>o[x]"
  prim__get : SourceBufferList -> UInt32 -> PrimIO SourceBuffer
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : SourceBufferList -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:x=>x.onaddsourcebuffer"
  prim__onaddsourcebuffer : SourceBufferList -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onaddsourcebuffer = v}"
  prim__setOnaddsourcebuffer : SourceBufferList -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onremovesourcebuffer"
  prim__onremovesourcebuffer : SourceBufferList -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onremovesourcebuffer = v}"
  prim__setOnremovesourcebuffer : SourceBufferList -> EventHandler -> PrimIO ()

