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
  duration : MediaSource -> Attribute True I Double
  duration = fromPrim "MediaSource.getduration" prim__duration prim__setDuration
  
  export
  onsourceclose : MediaSource -> Attribute False Maybe EventHandlerNonNull
  onsourceclose = fromNullablePrim "MediaSource.getonsourceclose"
                                   prim__onsourceclose
                                   prim__setOnsourceclose
  
  export
  onsourceended : MediaSource -> Attribute False Maybe EventHandlerNonNull
  onsourceended = fromNullablePrim "MediaSource.getonsourceended"
                                   prim__onsourceended
                                   prim__setOnsourceended
  
  export
  onsourceopen : MediaSource -> Attribute False Maybe EventHandlerNonNull
  onsourceopen = fromNullablePrim "MediaSource.getonsourceopen"
                                  prim__onsourceopen
                                  prim__setOnsourceopen
  
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
  appendWindowEnd : SourceBuffer -> Attribute True I Double
  appendWindowEnd = fromPrim "SourceBuffer.getappendWindowEnd"
                             prim__appendWindowEnd
                             prim__setAppendWindowEnd
  
  export
  appendWindowStart : SourceBuffer -> Attribute True I Double
  appendWindowStart = fromPrim "SourceBuffer.getappendWindowStart"
                               prim__appendWindowStart
                               prim__setAppendWindowStart
  
  export
  audioTracks : (obj : SourceBuffer) -> JSIO AudioTrackList
  audioTracks a = primJS $ SourceBuffer.prim__audioTracks a
  
  export
  buffered : (obj : SourceBuffer) -> JSIO TimeRanges
  buffered a = primJS $ SourceBuffer.prim__buffered a
  
  export
  mode : SourceBuffer -> Attribute True I AppendMode
  mode = fromPrim "SourceBuffer.getmode" prim__mode prim__setMode
  
  export
  onabort : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
  onabort = fromNullablePrim "SourceBuffer.getonabort"
                             prim__onabort
                             prim__setOnabort
  
  export
  onerror : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
  onerror = fromNullablePrim "SourceBuffer.getonerror"
                             prim__onerror
                             prim__setOnerror
  
  export
  onupdate : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
  onupdate = fromNullablePrim "SourceBuffer.getonupdate"
                              prim__onupdate
                              prim__setOnupdate
  
  export
  onupdateend : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
  onupdateend = fromNullablePrim "SourceBuffer.getonupdateend"
                                 prim__onupdateend
                                 prim__setOnupdateend
  
  export
  onupdatestart : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
  onupdatestart = fromNullablePrim "SourceBuffer.getonupdatestart"
                                   prim__onupdatestart
                                   prim__setOnupdatestart
  
  export
  textTracks : (obj : SourceBuffer) -> JSIO TextTrackList
  textTracks a = primJS $ SourceBuffer.prim__textTracks a
  
  export
  timestampOffset : SourceBuffer -> Attribute True I Double
  timestampOffset = fromPrim "SourceBuffer.gettimestampOffset"
                             prim__timestampOffset
                             prim__setTimestampOffset
  
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
  onaddsourcebuffer : SourceBufferList -> Attribute False Maybe EventHandlerNonNull
  onaddsourcebuffer = fromNullablePrim "SourceBufferList.getonaddsourcebuffer"
                                       prim__onaddsourcebuffer
                                       prim__setOnaddsourcebuffer
  
  export
  onremovesourcebuffer : SourceBufferList -> Attribute False Maybe EventHandlerNonNull
  onremovesourcebuffer = fromNullablePrim "SourceBufferList.getonremovesourcebuffer"
                                          prim__onremovesourcebuffer
                                          prim__setOnremovesourcebuffer


