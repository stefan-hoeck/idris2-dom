module Web.Mediasource
 
import JS
import Web.Internal.MediasourcePrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaSource
  
  public export
  JSType MediaSource where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  new : JSIO MediaSource
  new = primJS $ MediaSource.prim__new 
  
  export
  isTypeSupported : (type : String) -> JSIO Boolean
  isTypeSupported a = primJS $ MediaSource.prim__isTypeSupported a
  
  export
  activeSourceBuffers : (obj : MediaSource) -> JSIO SourceBufferList
  activeSourceBuffers a = primJS $ MediaSource.prim__activeSourceBuffers a
  
  export
  duration : (obj : MediaSource) -> JSIO Double
  duration a = primJS $ MediaSource.prim__duration a
  
  export
  setDuration : (obj : MediaSource) -> (value : Double) -> JSIO ()
  setDuration a b = primJS $ MediaSource.prim__setDuration a b
  
  export
  onsourceclose : (obj : MediaSource) -> JSIO EventHandler
  onsourceclose a = primJS $ MediaSource.prim__onsourceclose a
  
  export
  setOnsourceclose : (obj : MediaSource) -> (value : EventHandler) -> JSIO ()
  setOnsourceclose a b = primJS $ MediaSource.prim__setOnsourceclose a b
  
  export
  onsourceended : (obj : MediaSource) -> JSIO EventHandler
  onsourceended a = primJS $ MediaSource.prim__onsourceended a
  
  export
  setOnsourceended : (obj : MediaSource) -> (value : EventHandler) -> JSIO ()
  setOnsourceended a b = primJS $ MediaSource.prim__setOnsourceended a b
  
  export
  onsourceopen : (obj : MediaSource) -> JSIO EventHandler
  onsourceopen a = primJS $ MediaSource.prim__onsourceopen a
  
  export
  setOnsourceopen : (obj : MediaSource) -> (value : EventHandler) -> JSIO ()
  setOnsourceopen a b = primJS $ MediaSource.prim__setOnsourceopen a b
  
  export
  readyState : (obj : MediaSource) -> JSIO ReadyState
  readyState a = primJS $ MediaSource.prim__readyState a
  
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
  endOfStream :  (obj : MediaSource)
              -> (error : UndefOr EndOfStreamError)
              -> JSIO ()
  endOfStream a b = primJS $ MediaSource.prim__endOfStream a b
  
  export
  removeSourceBuffer :  (obj : MediaSource)
                     -> (sourceBuffer : SourceBuffer)
                     -> JSIO ()
  removeSourceBuffer a b = primJS $ MediaSource.prim__removeSourceBuffer a b
  
  export
  setLiveSeekableRange :  (obj : MediaSource)
                       -> (start : Double)
                       -> (end : Double)
                       -> JSIO ()
  setLiveSeekableRange a b c = primJS $ MediaSource.prim__setLiveSeekableRange a
                                                                               b
                                                                               c

namespace SourceBuffer
  
  public export
  JSType SourceBuffer where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  appendWindowEnd : (obj : SourceBuffer) -> JSIO Double
  appendWindowEnd a = primJS $ SourceBuffer.prim__appendWindowEnd a
  
  export
  setAppendWindowEnd : (obj : SourceBuffer) -> (value : Double) -> JSIO ()
  setAppendWindowEnd a b = primJS $ SourceBuffer.prim__setAppendWindowEnd a b
  
  export
  appendWindowStart : (obj : SourceBuffer) -> JSIO Double
  appendWindowStart a = primJS $ SourceBuffer.prim__appendWindowStart a
  
  export
  setAppendWindowStart : (obj : SourceBuffer) -> (value : Double) -> JSIO ()
  setAppendWindowStart a b = primJS $ SourceBuffer.prim__setAppendWindowStart a
                                                                              b
  
  export
  audioTracks : (obj : SourceBuffer) -> JSIO AudioTrackList
  audioTracks a = primJS $ SourceBuffer.prim__audioTracks a
  
  export
  buffered : (obj : SourceBuffer) -> JSIO TimeRanges
  buffered a = primJS $ SourceBuffer.prim__buffered a
  
  export
  mode : (obj : SourceBuffer) -> JSIO AppendMode
  mode a = primJS $ SourceBuffer.prim__mode a
  
  export
  setMode : (obj : SourceBuffer) -> (value : AppendMode) -> JSIO ()
  setMode a b = primJS $ SourceBuffer.prim__setMode a b
  
  export
  onabort : (obj : SourceBuffer) -> JSIO EventHandler
  onabort a = primJS $ SourceBuffer.prim__onabort a
  
  export
  setOnabort : (obj : SourceBuffer) -> (value : EventHandler) -> JSIO ()
  setOnabort a b = primJS $ SourceBuffer.prim__setOnabort a b
  
  export
  onerror : (obj : SourceBuffer) -> JSIO EventHandler
  onerror a = primJS $ SourceBuffer.prim__onerror a
  
  export
  setOnerror : (obj : SourceBuffer) -> (value : EventHandler) -> JSIO ()
  setOnerror a b = primJS $ SourceBuffer.prim__setOnerror a b
  
  export
  onupdate : (obj : SourceBuffer) -> JSIO EventHandler
  onupdate a = primJS $ SourceBuffer.prim__onupdate a
  
  export
  setOnupdate : (obj : SourceBuffer) -> (value : EventHandler) -> JSIO ()
  setOnupdate a b = primJS $ SourceBuffer.prim__setOnupdate a b
  
  export
  onupdateend : (obj : SourceBuffer) -> JSIO EventHandler
  onupdateend a = primJS $ SourceBuffer.prim__onupdateend a
  
  export
  setOnupdateend : (obj : SourceBuffer) -> (value : EventHandler) -> JSIO ()
  setOnupdateend a b = primJS $ SourceBuffer.prim__setOnupdateend a b
  
  export
  onupdatestart : (obj : SourceBuffer) -> JSIO EventHandler
  onupdatestart a = primJS $ SourceBuffer.prim__onupdatestart a
  
  export
  setOnupdatestart : (obj : SourceBuffer) -> (value : EventHandler) -> JSIO ()
  setOnupdatestart a b = primJS $ SourceBuffer.prim__setOnupdatestart a b
  
  export
  textTracks : (obj : SourceBuffer) -> JSIO TextTrackList
  textTracks a = primJS $ SourceBuffer.prim__textTracks a
  
  export
  timestampOffset : (obj : SourceBuffer) -> JSIO Double
  timestampOffset a = primJS $ SourceBuffer.prim__timestampOffset a
  
  export
  setTimestampOffset : (obj : SourceBuffer) -> (value : Double) -> JSIO ()
  setTimestampOffset a b = primJS $ SourceBuffer.prim__setTimestampOffset a b
  
  export
  updating : (obj : SourceBuffer) -> JSIO Boolean
  updating a = primJS $ SourceBuffer.prim__updating a
  
  export
  videoTracks : (obj : SourceBuffer) -> JSIO VideoTrackList
  videoTracks a = primJS $ SourceBuffer.prim__videoTracks a
  
  export
  abort : (obj : SourceBuffer) -> JSIO ()
  abort a = primJS $ SourceBuffer.prim__abort a
  
  export
  appendBuffer : (obj : SourceBuffer) -> (data_ : BufferSource) -> JSIO ()
  appendBuffer a b = primJS $ SourceBuffer.prim__appendBuffer a b
  
  export
  remove : (obj : SourceBuffer) -> (start : Double) -> (end : Double) -> JSIO ()
  remove a b c = primJS $ SourceBuffer.prim__remove a b c

namespace SourceBufferList
  
  public export
  JSType SourceBufferList where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  get : (obj : SourceBufferList) -> (index : UInt32) -> JSIO SourceBuffer
  get a b = primJS $ SourceBufferList.prim__get a b
  
  export
  length : (obj : SourceBufferList) -> JSIO UInt32
  length a = primJS $ SourceBufferList.prim__length a
  
  export
  onaddsourcebuffer : (obj : SourceBufferList) -> JSIO EventHandler
  onaddsourcebuffer a = primJS $ SourceBufferList.prim__onaddsourcebuffer a
  
  export
  setOnaddsourcebuffer :  (obj : SourceBufferList)
                       -> (value : EventHandler)
                       -> JSIO ()
  setOnaddsourcebuffer a b = primJS $ SourceBufferList.prim__setOnaddsourcebuffer a
                                                                                  b
  
  export
  onremovesourcebuffer : (obj : SourceBufferList) -> JSIO EventHandler
  onremovesourcebuffer a = primJS $ SourceBufferList.prim__onremovesourcebuffer a
  
  export
  setOnremovesourcebuffer :  (obj : SourceBufferList)
                          -> (value : EventHandler)
                          -> JSIO ()
  setOnremovesourcebuffer a b = primJS $ SourceBufferList.prim__setOnremovesourcebuffer a
                                                                                        b


