module Web.Raw.Mediasource
 
import JS
import Web.Internal.MediasourcePrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaSource
  
  export
  new : JSIO MediaSource
  new = primJS $ MediaSource.prim__new 
  
  export
  isTypeSupported : (type : String) -> JSIO Bool
  isTypeSupported a = tryJS "MediaSource.isTypeSupported"
                    $ MediaSource.prim__isTypeSupported a
  
  export
  activeSourceBuffers :  JSType t1
                      => {auto 0 _ : Elem MediaSource (Types t1)}
                      -> (obj : t1)
                      -> JSIO SourceBufferList
  activeSourceBuffers a = primJS $ MediaSource.prim__activeSourceBuffers (up a)
  
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
  readyState :  JSType t1
             => {auto 0 _ : Elem MediaSource (Types t1)}
             -> (obj : t1)
             -> JSIO ReadyState
  readyState a = tryJS "MediaSource.readyState"
               $ MediaSource.prim__readyState (up a)
  
  export
  sourceBuffers :  JSType t1
                => {auto 0 _ : Elem MediaSource (Types t1)}
                -> (obj : t1)
                -> JSIO SourceBufferList
  sourceBuffers a = primJS $ MediaSource.prim__sourceBuffers (up a)
  
  export
  addSourceBuffer :  JSType t1
                  => {auto 0 _ : Elem MediaSource (Types t1)}
                  -> (obj : t1)
                  -> (type : String)
                  -> JSIO SourceBuffer
  addSourceBuffer a b = primJS $ MediaSource.prim__addSourceBuffer (up a) b
  
  export
  clearLiveSeekableRange :  JSType t1
                         => {auto 0 _ : Elem MediaSource (Types t1)}
                         -> (obj : t1)
                         -> JSIO ()
  clearLiveSeekableRange a = primJS
                           $ MediaSource.prim__clearLiveSeekableRange (up a)
  
  export
  endOfStream :  JSType t1
              => {auto 0 _ : Elem MediaSource (Types t1)}
              -> (obj : t1)
              -> (error : Optional EndOfStreamError)
              -> JSIO ()
  endOfStream a b = primJS $ MediaSource.prim__endOfStream (up a) (toFFI b)

  export
  endOfStream' :  JSType t1
               => {auto 0 _ : Elem MediaSource (Types t1)}
               -> (obj : t1)
               -> JSIO ()
  endOfStream' a = primJS $ MediaSource.prim__endOfStream (up a) undef
  
  export
  removeSourceBuffer :  JSType t1
                     => JSType t2
                     => {auto 0 _ : Elem MediaSource (Types t1)}
                     -> {auto 0 _ : Elem SourceBuffer (Types t2)}
                     -> (obj : t1)
                     -> (sourceBuffer : t2)
                     -> JSIO ()
  removeSourceBuffer a b = primJS
                         $ MediaSource.prim__removeSourceBuffer (up a) (up b)
  
  export
  setLiveSeekableRange :  JSType t1
                       => {auto 0 _ : Elem MediaSource (Types t1)}
                       -> (obj : t1)
                       -> (start : Double)
                       -> (end : Double)
                       -> JSIO ()
  setLiveSeekableRange a b c = primJS
                             $ MediaSource.prim__setLiveSeekableRange (up a) b c

namespace SourceBuffer
  
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
  audioTracks :  JSType t1
              => {auto 0 _ : Elem SourceBuffer (Types t1)}
              -> (obj : t1)
              -> JSIO AudioTrackList
  audioTracks a = primJS $ SourceBuffer.prim__audioTracks (up a)
  
  export
  buffered :  JSType t1
           => {auto 0 _ : Elem SourceBuffer (Types t1)}
           -> (obj : t1)
           -> JSIO TimeRanges
  buffered a = primJS $ SourceBuffer.prim__buffered (up a)
  
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
  textTracks :  JSType t1
             => {auto 0 _ : Elem SourceBuffer (Types t1)}
             -> (obj : t1)
             -> JSIO TextTrackList
  textTracks a = primJS $ SourceBuffer.prim__textTracks (up a)
  
  export
  timestampOffset : SourceBuffer -> Attribute True I Double
  timestampOffset = fromPrim "SourceBuffer.gettimestampOffset"
                             prim__timestampOffset
                             prim__setTimestampOffset
  
  export
  updating :  JSType t1
           => {auto 0 _ : Elem SourceBuffer (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  updating a = tryJS "SourceBuffer.updating"
             $ SourceBuffer.prim__updating (up a)
  
  export
  videoTracks :  JSType t1
              => {auto 0 _ : Elem SourceBuffer (Types t1)}
              -> (obj : t1)
              -> JSIO VideoTrackList
  videoTracks a = primJS $ SourceBuffer.prim__videoTracks (up a)
  
  export
  abort :  JSType t1
        => {auto 0 _ : Elem SourceBuffer (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  abort a = primJS $ SourceBuffer.prim__abort (up a)
  
  export
  appendBuffer :  JSType t1
               => {auto 0 _ : Elem SourceBuffer (Types t1)}
               -> (obj : t1)
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
  appendBuffer a b = primJS $ SourceBuffer.prim__appendBuffer (up a) (toFFI b)
  
  export
  remove :  JSType t1
         => {auto 0 _ : Elem SourceBuffer (Types t1)}
         -> (obj : t1)
         -> (start : Double)
         -> (end : Double)
         -> JSIO ()
  remove a b c = primJS $ SourceBuffer.prim__remove (up a) b c

namespace SourceBufferList
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem SourceBufferList (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> JSIO SourceBuffer
  get a b = primJS $ SourceBufferList.prim__get (up a) b
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem SourceBufferList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ SourceBufferList.prim__length (up a)
  
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


