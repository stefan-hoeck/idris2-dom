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
  isTypeSupported : (type : String) -> JSIO Bool
  isTypeSupported a = tryJS "MediaSource.isTypeSupported"
                    $ MediaSource.prim__isTypeSupported a
  
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
  onsourceclose : (obj : MediaSource) -> JSIO (Maybe EventHandlerNonNull)
  onsourceclose a = tryJS "MediaSource.onsourceclose"
                  $ MediaSource.prim__onsourceclose a
  
  export
  setOnsourceclose :  (obj : MediaSource)
                   -> (value : Maybe EventHandlerNonNull)
                   -> JSIO ()
  setOnsourceclose a b = primJS $ MediaSource.prim__setOnsourceclose a (toFFI b)
  
  export
  onsourceended : (obj : MediaSource) -> JSIO (Maybe EventHandlerNonNull)
  onsourceended a = tryJS "MediaSource.onsourceended"
                  $ MediaSource.prim__onsourceended a
  
  export
  setOnsourceended :  (obj : MediaSource)
                   -> (value : Maybe EventHandlerNonNull)
                   -> JSIO ()
  setOnsourceended a b = primJS $ MediaSource.prim__setOnsourceended a (toFFI b)
  
  export
  onsourceopen : (obj : MediaSource) -> JSIO (Maybe EventHandlerNonNull)
  onsourceopen a = tryJS "MediaSource.onsourceopen"
                 $ MediaSource.prim__onsourceopen a
  
  export
  setOnsourceopen :  (obj : MediaSource)
                  -> (value : Maybe EventHandlerNonNull)
                  -> JSIO ()
  setOnsourceopen a b = primJS $ MediaSource.prim__setOnsourceopen a (toFFI b)
  
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
  endOfStream :  (obj : MediaSource)
              -> (error : Optional EndOfStreamError)
              -> JSIO ()
  endOfStream a b = primJS $ MediaSource.prim__endOfStream a (toFFI b)

  export
  endOfStream' : (obj : MediaSource) -> JSIO ()
  endOfStream' a = primJS $ MediaSource.prim__endOfStream a undef
  
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
  setLiveSeekableRange a b c = primJS
                             $ MediaSource.prim__setLiveSeekableRange a b c

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
  setAppendWindowStart a b = primJS
                           $ SourceBuffer.prim__setAppendWindowStart a b
  
  export
  audioTracks : (obj : SourceBuffer) -> JSIO AudioTrackList
  audioTracks a = primJS $ SourceBuffer.prim__audioTracks a
  
  export
  buffered : (obj : SourceBuffer) -> JSIO TimeRanges
  buffered a = primJS $ SourceBuffer.prim__buffered a
  
  export
  mode : (obj : SourceBuffer) -> JSIO AppendMode
  mode a = tryJS "SourceBuffer.mode" $ SourceBuffer.prim__mode a
  
  export
  setMode : (obj : SourceBuffer) -> (value : AppendMode) -> JSIO ()
  setMode a b = primJS $ SourceBuffer.prim__setMode a (toFFI b)
  
  export
  onabort : (obj : SourceBuffer) -> JSIO (Maybe EventHandlerNonNull)
  onabort a = tryJS "SourceBuffer.onabort" $ SourceBuffer.prim__onabort a
  
  export
  setOnabort :  (obj : SourceBuffer)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnabort a b = primJS $ SourceBuffer.prim__setOnabort a (toFFI b)
  
  export
  onerror : (obj : SourceBuffer) -> JSIO (Maybe EventHandlerNonNull)
  onerror a = tryJS "SourceBuffer.onerror" $ SourceBuffer.prim__onerror a
  
  export
  setOnerror :  (obj : SourceBuffer)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnerror a b = primJS $ SourceBuffer.prim__setOnerror a (toFFI b)
  
  export
  onupdate : (obj : SourceBuffer) -> JSIO (Maybe EventHandlerNonNull)
  onupdate a = tryJS "SourceBuffer.onupdate" $ SourceBuffer.prim__onupdate a
  
  export
  setOnupdate :  (obj : SourceBuffer)
              -> (value : Maybe EventHandlerNonNull)
              -> JSIO ()
  setOnupdate a b = primJS $ SourceBuffer.prim__setOnupdate a (toFFI b)
  
  export
  onupdateend : (obj : SourceBuffer) -> JSIO (Maybe EventHandlerNonNull)
  onupdateend a = tryJS "SourceBuffer.onupdateend"
                $ SourceBuffer.prim__onupdateend a
  
  export
  setOnupdateend :  (obj : SourceBuffer)
                 -> (value : Maybe EventHandlerNonNull)
                 -> JSIO ()
  setOnupdateend a b = primJS $ SourceBuffer.prim__setOnupdateend a (toFFI b)
  
  export
  onupdatestart : (obj : SourceBuffer) -> JSIO (Maybe EventHandlerNonNull)
  onupdatestart a = tryJS "SourceBuffer.onupdatestart"
                  $ SourceBuffer.prim__onupdatestart a
  
  export
  setOnupdatestart :  (obj : SourceBuffer)
                   -> (value : Maybe EventHandlerNonNull)
                   -> JSIO ()
  setOnupdatestart a b = primJS
                       $ SourceBuffer.prim__setOnupdatestart a (toFFI b)
  
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
  updating : (obj : SourceBuffer) -> JSIO Bool
  updating a = tryJS "SourceBuffer.updating" $ SourceBuffer.prim__updating a
  
  export
  videoTracks : (obj : SourceBuffer) -> JSIO VideoTrackList
  videoTracks a = primJS $ SourceBuffer.prim__videoTracks a
  
  export
  abort : (obj : SourceBuffer) -> JSIO ()
  abort a = primJS $ SourceBuffer.prim__abort a
  
  export
  appendBuffer :  (obj : SourceBuffer)
               -> (data_ : NS I [ Int8Array
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
  appendBuffer a b = primJS $ SourceBuffer.prim__appendBuffer a (toFFI b)
  
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
  onaddsourcebuffer :  (obj : SourceBufferList)
                    -> JSIO (Maybe EventHandlerNonNull)
  onaddsourcebuffer a = tryJS "SourceBufferList.onaddsourcebuffer"
                      $ SourceBufferList.prim__onaddsourcebuffer a
  
  export
  setOnaddsourcebuffer :  (obj : SourceBufferList)
                       -> (value : Maybe EventHandlerNonNull)
                       -> JSIO ()
  setOnaddsourcebuffer a b = primJS
                           $ SourceBufferList.prim__setOnaddsourcebuffer a
                                                                         (toFFI b)
  
  export
  onremovesourcebuffer :  (obj : SourceBufferList)
                       -> JSIO (Maybe EventHandlerNonNull)
  onremovesourcebuffer a = tryJS "SourceBufferList.onremovesourcebuffer"
                         $ SourceBufferList.prim__onremovesourcebuffer a
  
  export
  setOnremovesourcebuffer :  (obj : SourceBufferList)
                          -> (value : Maybe EventHandlerNonNull)
                          -> JSIO ()
  setOnremovesourcebuffer a b = primJS
                              $ SourceBufferList.prim__setOnremovesourcebuffer a
                                                                               (toFFI b)


