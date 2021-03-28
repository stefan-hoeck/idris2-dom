module Web.Mediasource
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaSource
  
  public export
  JSType MediaSource where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.activeSourceBuffers"
  prim__activeSourceBuffers : AnyPtr -> PrimIO AnyPtr

  export
  activeSourceBuffers : (obj : MediaSource) -> IO SourceBufferList
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : MediaSource) -> IO ReadyState
  
  %foreign "browser:lambda:x=>x.sourceBuffers"
  prim__sourceBuffers : AnyPtr -> PrimIO AnyPtr

  export
  sourceBuffers : (obj : MediaSource) -> IO SourceBufferList
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  export
  duration : (obj : MediaSource) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.duration  = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDuration : (obj : MediaSource) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.onsourceclose"
  prim__onsourceclose : AnyPtr -> PrimIO AnyPtr

  export
  onsourceclose : (obj : MediaSource) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onsourceclose  = v}"
  prim__setOnsourceclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsourceclose : (obj : MediaSource) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onsourceended"
  prim__onsourceended : AnyPtr -> PrimIO AnyPtr

  export
  onsourceended : (obj : MediaSource) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onsourceended  = v}"
  prim__setOnsourceended : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsourceended : (obj : MediaSource) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onsourceopen"
  prim__onsourceopen : AnyPtr -> PrimIO AnyPtr

  export
  onsourceopen : (obj : MediaSource) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onsourceopen  = v}"
  prim__setOnsourceopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsourceopen : (obj : MediaSource) -> (v : EventHandler) -> IO ()

namespace SourceBuffer
  
  public export
  JSType SourceBuffer where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.audioTracks"
  prim__audioTracks : AnyPtr -> PrimIO AnyPtr

  export
  audioTracks : (obj : SourceBuffer) -> IO AudioTrackList
  
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : AnyPtr -> PrimIO AnyPtr

  export
  buffered : (obj : SourceBuffer) -> IO TimeRanges
  
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : AnyPtr -> PrimIO AnyPtr

  export
  textTracks : (obj : SourceBuffer) -> IO TextTrackList
  
  %foreign "browser:lambda:x=>x.updating"
  prim__updating : AnyPtr -> PrimIO AnyPtr

  export
  updating : (obj : SourceBuffer) -> IO Bool
  
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : AnyPtr -> PrimIO AnyPtr

  export
  videoTracks : (obj : SourceBuffer) -> IO VideoTrackList
  
  %foreign "browser:lambda:x=>x.appendWindowEnd"
  prim__appendWindowEnd : AnyPtr -> PrimIO AnyPtr

  export
  appendWindowEnd : (obj : SourceBuffer) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.appendWindowEnd  = v}"
  prim__setAppendWindowEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAppendWindowEnd : (obj : SourceBuffer) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.appendWindowStart"
  prim__appendWindowStart : AnyPtr -> PrimIO AnyPtr

  export
  appendWindowStart : (obj : SourceBuffer) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.appendWindowStart  = v}"
  prim__setAppendWindowStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAppendWindowStart : (obj : SourceBuffer) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : SourceBuffer) -> IO AppendMode

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode : (obj : SourceBuffer) -> (v : AppendMode) -> IO ()
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : SourceBuffer) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : SourceBuffer) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : SourceBuffer) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : SourceBuffer) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onupdate"
  prim__onupdate : AnyPtr -> PrimIO AnyPtr

  export
  onupdate : (obj : SourceBuffer) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onupdate  = v}"
  prim__setOnupdate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnupdate : (obj : SourceBuffer) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onupdateend"
  prim__onupdateend : AnyPtr -> PrimIO AnyPtr

  export
  onupdateend : (obj : SourceBuffer) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onupdateend  = v}"
  prim__setOnupdateend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnupdateend : (obj : SourceBuffer) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onupdatestart"
  prim__onupdatestart : AnyPtr -> PrimIO AnyPtr

  export
  onupdatestart : (obj : SourceBuffer) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onupdatestart  = v}"
  prim__setOnupdatestart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnupdatestart : (obj : SourceBuffer) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.timestampOffset"
  prim__timestampOffset : AnyPtr -> PrimIO AnyPtr

  export
  timestampOffset : (obj : SourceBuffer) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.timestampOffset  = v}"
  prim__setTimestampOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTimestampOffset : (obj : SourceBuffer) -> (v : Double) -> IO ()

namespace SourceBufferList
  
  public export
  JSType SourceBufferList where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SourceBufferList) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.onaddsourcebuffer"
  prim__onaddsourcebuffer : AnyPtr -> PrimIO AnyPtr

  export
  onaddsourcebuffer : (obj : SourceBufferList) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onaddsourcebuffer  = v}"
  prim__setOnaddsourcebuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddsourcebuffer : (obj : SourceBufferList) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onremovesourcebuffer"
  prim__onremovesourcebuffer : AnyPtr -> PrimIO AnyPtr

  export
  onremovesourcebuffer : (obj : SourceBufferList) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onremovesourcebuffer  = v}"
  prim__setOnremovesourcebuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovesourcebuffer :  (obj : SourceBufferList)
                          -> (v : EventHandler)
                          -> IO ()



