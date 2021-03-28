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
  activeSourceBuffers : (obj : MediaSource) -> JSIO SourceBufferList
  activeSourceBuffers a =
    primToJSIO "activeSourceBuffers" $ prim__activeSourceBuffers (toJS a)
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : MediaSource) -> JSIO ReadyState
  readyState a =   primToJSIO "readyState" $ prim__readyState (toJS a)
  
  %foreign "browser:lambda:x=>x.sourceBuffers"
  prim__sourceBuffers : AnyPtr -> PrimIO AnyPtr

  export
  sourceBuffers : (obj : MediaSource) -> JSIO SourceBufferList
  sourceBuffers a =   primToJSIO "sourceBuffers" $ prim__sourceBuffers (toJS a)
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  export
  duration : (obj : MediaSource) -> JSIO Double
  duration a =   primToJSIO "duration" $ prim__duration (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.duration  = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDuration : (obj : MediaSource) -> (v : Double) -> JSIO ()
  setDuration a b =
    primToJSIO "setDuration" $ prim__setDuration (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onsourceclose"
  prim__onsourceclose : AnyPtr -> PrimIO AnyPtr

  export
  onsourceclose : (obj : MediaSource) -> JSIO EventHandler
  onsourceclose a =   primToJSIO "onsourceclose" $ prim__onsourceclose (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onsourceclose  = v}"
  prim__setOnsourceclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsourceclose : (obj : MediaSource) -> (v : EventHandler) -> JSIO ()
  setOnsourceclose a b =
    primToJSIO "setOnsourceclose" $ prim__setOnsourceclose (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onsourceended"
  prim__onsourceended : AnyPtr -> PrimIO AnyPtr

  export
  onsourceended : (obj : MediaSource) -> JSIO EventHandler
  onsourceended a =   primToJSIO "onsourceended" $ prim__onsourceended (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onsourceended  = v}"
  prim__setOnsourceended : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsourceended : (obj : MediaSource) -> (v : EventHandler) -> JSIO ()
  setOnsourceended a b =
    primToJSIO "setOnsourceended" $ prim__setOnsourceended (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onsourceopen"
  prim__onsourceopen : AnyPtr -> PrimIO AnyPtr

  export
  onsourceopen : (obj : MediaSource) -> JSIO EventHandler
  onsourceopen a =   primToJSIO "onsourceopen" $ prim__onsourceopen (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onsourceopen  = v}"
  prim__setOnsourceopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnsourceopen : (obj : MediaSource) -> (v : EventHandler) -> JSIO ()
  setOnsourceopen a b =
    primToJSIO "setOnsourceopen" $ prim__setOnsourceopen (toJS a) (toJS b)

namespace SourceBuffer
  
  public export
  JSType SourceBuffer where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.audioTracks"
  prim__audioTracks : AnyPtr -> PrimIO AnyPtr

  export
  audioTracks : (obj : SourceBuffer) -> JSIO AudioTrackList
  audioTracks a =   primToJSIO "audioTracks" $ prim__audioTracks (toJS a)
  
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : AnyPtr -> PrimIO AnyPtr

  export
  buffered : (obj : SourceBuffer) -> JSIO TimeRanges
  buffered a =   primToJSIO "buffered" $ prim__buffered (toJS a)
  
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : AnyPtr -> PrimIO AnyPtr

  export
  textTracks : (obj : SourceBuffer) -> JSIO TextTrackList
  textTracks a =   primToJSIO "textTracks" $ prim__textTracks (toJS a)
  
  %foreign "browser:lambda:x=>x.updating"
  prim__updating : AnyPtr -> PrimIO AnyPtr

  export
  updating : (obj : SourceBuffer) -> JSIO Bool
  updating a =   primToJSIO "updating" $ prim__updating (toJS a)
  
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : AnyPtr -> PrimIO AnyPtr

  export
  videoTracks : (obj : SourceBuffer) -> JSIO VideoTrackList
  videoTracks a =   primToJSIO "videoTracks" $ prim__videoTracks (toJS a)
  
  %foreign "browser:lambda:x=>x.appendWindowEnd"
  prim__appendWindowEnd : AnyPtr -> PrimIO AnyPtr

  export
  appendWindowEnd : (obj : SourceBuffer) -> JSIO Double
  appendWindowEnd a =
    primToJSIO "appendWindowEnd" $ prim__appendWindowEnd (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.appendWindowEnd  = v}"
  prim__setAppendWindowEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAppendWindowEnd : (obj : SourceBuffer) -> (v : Double) -> JSIO ()
  setAppendWindowEnd a b =
    primToJSIO "setAppendWindowEnd" $ prim__setAppendWindowEnd (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.appendWindowStart"
  prim__appendWindowStart : AnyPtr -> PrimIO AnyPtr

  export
  appendWindowStart : (obj : SourceBuffer) -> JSIO Double
  appendWindowStart a =
    primToJSIO "appendWindowStart" $ prim__appendWindowStart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.appendWindowStart  = v}"
  prim__setAppendWindowStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAppendWindowStart : (obj : SourceBuffer) -> (v : Double) -> JSIO ()
  setAppendWindowStart a b =
    primToJSIO "setAppendWindowStart" $ prim__setAppendWindowStart (toJS a)
                                                                   (toJS b)
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : SourceBuffer) -> JSIO AppendMode
  mode a =   primToJSIO "mode" $ prim__mode (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode : (obj : SourceBuffer) -> (v : AppendMode) -> JSIO ()
  setMode a b =   primToJSIO "setMode" $ prim__setMode (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : SourceBuffer) -> JSIO EventHandler
  onabort a =   primToJSIO "onabort" $ prim__onabort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : SourceBuffer) -> (v : EventHandler) -> JSIO ()
  setOnabort a b =
    primToJSIO "setOnabort" $ prim__setOnabort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : SourceBuffer) -> JSIO EventHandler
  onerror a =   primToJSIO "onerror" $ prim__onerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : SourceBuffer) -> (v : EventHandler) -> JSIO ()
  setOnerror a b =
    primToJSIO "setOnerror" $ prim__setOnerror (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onupdate"
  prim__onupdate : AnyPtr -> PrimIO AnyPtr

  export
  onupdate : (obj : SourceBuffer) -> JSIO EventHandler
  onupdate a =   primToJSIO "onupdate" $ prim__onupdate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onupdate  = v}"
  prim__setOnupdate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnupdate : (obj : SourceBuffer) -> (v : EventHandler) -> JSIO ()
  setOnupdate a b =
    primToJSIO "setOnupdate" $ prim__setOnupdate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onupdateend"
  prim__onupdateend : AnyPtr -> PrimIO AnyPtr

  export
  onupdateend : (obj : SourceBuffer) -> JSIO EventHandler
  onupdateend a =   primToJSIO "onupdateend" $ prim__onupdateend (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onupdateend  = v}"
  prim__setOnupdateend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnupdateend : (obj : SourceBuffer) -> (v : EventHandler) -> JSIO ()
  setOnupdateend a b =
    primToJSIO "setOnupdateend" $ prim__setOnupdateend (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onupdatestart"
  prim__onupdatestart : AnyPtr -> PrimIO AnyPtr

  export
  onupdatestart : (obj : SourceBuffer) -> JSIO EventHandler
  onupdatestart a =   primToJSIO "onupdatestart" $ prim__onupdatestart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onupdatestart  = v}"
  prim__setOnupdatestart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnupdatestart : (obj : SourceBuffer) -> (v : EventHandler) -> JSIO ()
  setOnupdatestart a b =
    primToJSIO "setOnupdatestart" $ prim__setOnupdatestart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.timestampOffset"
  prim__timestampOffset : AnyPtr -> PrimIO AnyPtr

  export
  timestampOffset : (obj : SourceBuffer) -> JSIO Double
  timestampOffset a =
    primToJSIO "timestampOffset" $ prim__timestampOffset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.timestampOffset  = v}"
  prim__setTimestampOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTimestampOffset : (obj : SourceBuffer) -> (v : Double) -> JSIO ()
  setTimestampOffset a b =
    primToJSIO "setTimestampOffset" $ prim__setTimestampOffset (toJS a) (toJS b)

namespace SourceBufferList
  
  public export
  JSType SourceBufferList where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SourceBufferList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.onaddsourcebuffer"
  prim__onaddsourcebuffer : AnyPtr -> PrimIO AnyPtr

  export
  onaddsourcebuffer : (obj : SourceBufferList) -> JSIO EventHandler
  onaddsourcebuffer a =
    primToJSIO "onaddsourcebuffer" $ prim__onaddsourcebuffer (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onaddsourcebuffer  = v}"
  prim__setOnaddsourcebuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddsourcebuffer :  (obj : SourceBufferList)
                       -> (v : EventHandler)
                       -> JSIO ()
  setOnaddsourcebuffer a b =
    primToJSIO "setOnaddsourcebuffer" $ prim__setOnaddsourcebuffer (toJS a)
                                                                   (toJS b)
  
  %foreign "browser:lambda:x=>x.onremovesourcebuffer"
  prim__onremovesourcebuffer : AnyPtr -> PrimIO AnyPtr

  export
  onremovesourcebuffer : (obj : SourceBufferList) -> JSIO EventHandler
  onremovesourcebuffer a =
    primToJSIO "onremovesourcebuffer" $ prim__onremovesourcebuffer (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onremovesourcebuffer  = v}"
  prim__setOnremovesourcebuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovesourcebuffer :  (obj : SourceBufferList)
                          -> (v : EventHandler)
                          -> JSIO ()
  setOnremovesourcebuffer a b =
    primToJSIO "setOnremovesourcebuffer" $ prim__setOnremovesourcebuffer (toJS a)
                                                                         (toJS b)



