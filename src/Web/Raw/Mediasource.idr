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
  duration :  JSType t
           => {auto 0 _ : Elem MediaSource (Types t)}
           -> t
           -> Attribute True I Double
  duration v = fromPrim "MediaSource.getduration"
                        prim__duration
                        prim__setDuration
                        (v :> MediaSource)
  
  export
  onsourceclose :  JSType t
                => {auto 0 _ : Elem MediaSource (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  onsourceclose v = fromNullablePrim "MediaSource.getonsourceclose"
                                     prim__onsourceclose
                                     prim__setOnsourceclose
                                     (v :> MediaSource)
  
  export
  onsourceended :  JSType t
                => {auto 0 _ : Elem MediaSource (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  onsourceended v = fromNullablePrim "MediaSource.getonsourceended"
                                     prim__onsourceended
                                     prim__setOnsourceended
                                     (v :> MediaSource)
  
  export
  onsourceopen :  JSType t
               => {auto 0 _ : Elem MediaSource (Types t)}
               -> t
               -> Attribute False Maybe EventHandlerNonNull
  onsourceopen v = fromNullablePrim "MediaSource.getonsourceopen"
                                    prim__onsourceopen
                                    prim__setOnsourceopen
                                    (v :> MediaSource)
  
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
  appendWindowEnd :  JSType t
                  => {auto 0 _ : Elem SourceBuffer (Types t)}
                  -> t
                  -> Attribute True I Double
  appendWindowEnd v = fromPrim "SourceBuffer.getappendWindowEnd"
                               prim__appendWindowEnd
                               prim__setAppendWindowEnd
                               (v :> SourceBuffer)
  
  export
  appendWindowStart :  JSType t
                    => {auto 0 _ : Elem SourceBuffer (Types t)}
                    -> t
                    -> Attribute True I Double
  appendWindowStart v = fromPrim "SourceBuffer.getappendWindowStart"
                                 prim__appendWindowStart
                                 prim__setAppendWindowStart
                                 (v :> SourceBuffer)
  
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
  mode :  JSType t
       => {auto 0 _ : Elem SourceBuffer (Types t)}
       -> t
       -> Attribute True I AppendMode
  mode v = fromPrim "SourceBuffer.getmode"
                    prim__mode
                    prim__setMode
                    (v :> SourceBuffer)
  
  export
  onabort :  JSType t
          => {auto 0 _ : Elem SourceBuffer (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim "SourceBuffer.getonabort"
                               prim__onabort
                               prim__setOnabort
                               (v :> SourceBuffer)
  
  export
  onerror :  JSType t
          => {auto 0 _ : Elem SourceBuffer (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "SourceBuffer.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> SourceBuffer)
  
  export
  onupdate :  JSType t
           => {auto 0 _ : Elem SourceBuffer (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onupdate v = fromNullablePrim "SourceBuffer.getonupdate"
                                prim__onupdate
                                prim__setOnupdate
                                (v :> SourceBuffer)
  
  export
  onupdateend :  JSType t
              => {auto 0 _ : Elem SourceBuffer (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  onupdateend v = fromNullablePrim "SourceBuffer.getonupdateend"
                                   prim__onupdateend
                                   prim__setOnupdateend
                                   (v :> SourceBuffer)
  
  export
  onupdatestart :  JSType t
                => {auto 0 _ : Elem SourceBuffer (Types t)}
                -> t
                -> Attribute False Maybe EventHandlerNonNull
  onupdatestart v = fromNullablePrim "SourceBuffer.getonupdatestart"
                                     prim__onupdatestart
                                     prim__setOnupdatestart
                                     (v :> SourceBuffer)
  
  export
  textTracks :  JSType t1
             => {auto 0 _ : Elem SourceBuffer (Types t1)}
             -> (obj : t1)
             -> JSIO TextTrackList
  textTracks a = primJS $ SourceBuffer.prim__textTracks (up a)
  
  export
  timestampOffset :  JSType t
                  => {auto 0 _ : Elem SourceBuffer (Types t)}
                  -> t
                  -> Attribute True I Double
  timestampOffset v = fromPrim "SourceBuffer.gettimestampOffset"
                               prim__timestampOffset
                               prim__setTimestampOffset
                               (v :> SourceBuffer)
  
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
  onaddsourcebuffer :  JSType t
                    => {auto 0 _ : Elem SourceBufferList (Types t)}
                    -> t
                    -> Attribute False Maybe EventHandlerNonNull
  onaddsourcebuffer v = fromNullablePrim "SourceBufferList.getonaddsourcebuffer"
                                         prim__onaddsourcebuffer
                                         prim__setOnaddsourcebuffer
                                         (v :> SourceBufferList)
  
  export
  onremovesourcebuffer :  JSType t
                       => {auto 0 _ : Elem SourceBufferList (Types t)}
                       -> t
                       -> Attribute False Maybe EventHandlerNonNull
  onremovesourcebuffer v = fromNullablePrim "SourceBufferList.getonremovesourcebuffer"
                                            prim__onremovesourcebuffer
                                            prim__setOnremovesourcebuffer
                                            (v :> SourceBufferList)


