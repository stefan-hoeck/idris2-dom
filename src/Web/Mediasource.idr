module Web.Mediasource

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaSource
  
  %foreign "browser:lambda:x=>x.activeSourceBuffers"
  prim__activeSourceBuffers : AnyPtr -> PrimIO AnyPtr
  
  export
  activeSourceBuffers :  Cast mediaSource MediaSource
                      => ToJS MediaSource
                      => (obj : mediaSource)
                      -> IO SourceBufferList
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  export
  readyState :  Cast mediaSource MediaSource
             => ToJS MediaSource
             => (obj : mediaSource)
             -> IO ReadyState
  
  %foreign "browser:lambda:x=>x.sourceBuffers"
  prim__sourceBuffers : AnyPtr -> PrimIO AnyPtr
  
  export
  sourceBuffers :  Cast mediaSource MediaSource
                => ToJS MediaSource
                => (obj : mediaSource)
                -> IO SourceBufferList
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr
  
  export
  duration :  Cast mediaSource MediaSource
           => ToJS MediaSource
           => (obj : mediaSource)
           -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.duration = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDuration :  Cast mediaSource MediaSource
              => ToJS MediaSource
              => (obj : mediaSource)
              -> (v : Double)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onsourceclose"
  prim__onsourceclose : AnyPtr -> PrimIO AnyPtr
  
  export
  onsourceclose :  Cast mediaSource MediaSource
                => ToJS MediaSource
                => (obj : mediaSource)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onsourceclose = v}"
  prim__setOnsourceclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnsourceclose :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast mediaSource MediaSource
                   => ToJS MediaSource
                   => (obj : mediaSource)
                   -> (v : eventHandler)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.onsourceended"
  prim__onsourceended : AnyPtr -> PrimIO AnyPtr
  
  export
  onsourceended :  Cast mediaSource MediaSource
                => ToJS MediaSource
                => (obj : mediaSource)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onsourceended = v}"
  prim__setOnsourceended : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnsourceended :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast mediaSource MediaSource
                   => ToJS MediaSource
                   => (obj : mediaSource)
                   -> (v : eventHandler)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.onsourceopen"
  prim__onsourceopen : AnyPtr -> PrimIO AnyPtr
  
  export
  onsourceopen :  Cast mediaSource MediaSource
               => ToJS MediaSource
               => (obj : mediaSource)
               -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onsourceopen = v}"
  prim__setOnsourceopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnsourceopen :  Cast eventHandler EventHandler
                  => ToJS EventHandler
                  => Cast mediaSource MediaSource
                  => ToJS MediaSource
                  => (obj : mediaSource)
                  -> (v : eventHandler)
                  -> IO ()

namespace SourceBuffer
  
  %foreign "browser:lambda:x=>x.audioTracks"
  prim__audioTracks : AnyPtr -> PrimIO AnyPtr
  
  export
  audioTracks :  Cast sourceBuffer SourceBuffer
              => ToJS SourceBuffer
              => (obj : sourceBuffer)
              -> IO AudioTrackList
  
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : AnyPtr -> PrimIO AnyPtr
  
  export
  buffered :  Cast sourceBuffer SourceBuffer
           => ToJS SourceBuffer
           => (obj : sourceBuffer)
           -> IO TimeRanges
  
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : AnyPtr -> PrimIO AnyPtr
  
  export
  textTracks :  Cast sourceBuffer SourceBuffer
             => ToJS SourceBuffer
             => (obj : sourceBuffer)
             -> IO TextTrackList
  
  %foreign "browser:lambda:x=>x.updating"
  prim__updating : AnyPtr -> PrimIO AnyPtr
  
  export
  updating :  Cast sourceBuffer SourceBuffer
           => ToJS SourceBuffer
           => (obj : sourceBuffer)
           -> IO Bool
  
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : AnyPtr -> PrimIO AnyPtr
  
  export
  videoTracks :  Cast sourceBuffer SourceBuffer
              => ToJS SourceBuffer
              => (obj : sourceBuffer)
              -> IO VideoTrackList
  
  %foreign "browser:lambda:x=>x.appendWindowEnd"
  prim__appendWindowEnd : AnyPtr -> PrimIO AnyPtr
  
  export
  appendWindowEnd :  Cast sourceBuffer SourceBuffer
                  => ToJS SourceBuffer
                  => (obj : sourceBuffer)
                  -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.appendWindowEnd = v}"
  prim__setAppendWindowEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAppendWindowEnd :  Cast sourceBuffer SourceBuffer
                     => ToJS SourceBuffer
                     => (obj : sourceBuffer)
                     -> (v : Double)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.appendWindowStart"
  prim__appendWindowStart : AnyPtr -> PrimIO AnyPtr
  
  export
  appendWindowStart :  Cast sourceBuffer SourceBuffer
                    => ToJS SourceBuffer
                    => (obj : sourceBuffer)
                    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.appendWindowStart = v}"
  prim__setAppendWindowStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAppendWindowStart :  Cast sourceBuffer SourceBuffer
                       => ToJS SourceBuffer
                       => (obj : sourceBuffer)
                       -> (v : Double)
                       -> IO ()
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  export
  mode :  Cast sourceBuffer SourceBuffer
       => ToJS SourceBuffer
       => (obj : sourceBuffer)
       -> IO AppendMode
  
  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMode :  Cast appendMode AppendMode
          => ToJS AppendMode
          => Cast sourceBuffer SourceBuffer
          => ToJS SourceBuffer
          => (obj : sourceBuffer)
          -> (v : appendMode)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr
  
  export
  onabort :  Cast sourceBuffer SourceBuffer
          => ToJS SourceBuffer
          => (obj : sourceBuffer)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnabort :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast sourceBuffer SourceBuffer
             => ToJS SourceBuffer
             => (obj : sourceBuffer)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onerror :  Cast sourceBuffer SourceBuffer
          => ToJS SourceBuffer
          => (obj : sourceBuffer)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnerror :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast sourceBuffer SourceBuffer
             => ToJS SourceBuffer
             => (obj : sourceBuffer)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onupdate"
  prim__onupdate : AnyPtr -> PrimIO AnyPtr
  
  export
  onupdate :  Cast sourceBuffer SourceBuffer
           => ToJS SourceBuffer
           => (obj : sourceBuffer)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onupdate = v}"
  prim__setOnupdate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnupdate :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast sourceBuffer SourceBuffer
              => ToJS SourceBuffer
              => (obj : sourceBuffer)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onupdateend"
  prim__onupdateend : AnyPtr -> PrimIO AnyPtr
  
  export
  onupdateend :  Cast sourceBuffer SourceBuffer
              => ToJS SourceBuffer
              => (obj : sourceBuffer)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onupdateend = v}"
  prim__setOnupdateend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnupdateend :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast sourceBuffer SourceBuffer
                 => ToJS SourceBuffer
                 => (obj : sourceBuffer)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.onupdatestart"
  prim__onupdatestart : AnyPtr -> PrimIO AnyPtr
  
  export
  onupdatestart :  Cast sourceBuffer SourceBuffer
                => ToJS SourceBuffer
                => (obj : sourceBuffer)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onupdatestart = v}"
  prim__setOnupdatestart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnupdatestart :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast sourceBuffer SourceBuffer
                   => ToJS SourceBuffer
                   => (obj : sourceBuffer)
                   -> (v : eventHandler)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.timestampOffset"
  prim__timestampOffset : AnyPtr -> PrimIO AnyPtr
  
  export
  timestampOffset :  Cast sourceBuffer SourceBuffer
                  => ToJS SourceBuffer
                  => (obj : sourceBuffer)
                  -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.timestampOffset = v}"
  prim__setTimestampOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTimestampOffset :  Cast sourceBuffer SourceBuffer
                     => ToJS SourceBuffer
                     => (obj : sourceBuffer)
                     -> (v : Double)
                     -> IO ()

namespace SourceBufferList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast sourceBufferList SourceBufferList
         => ToJS SourceBufferList
         => (obj : sourceBufferList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.onaddsourcebuffer"
  prim__onaddsourcebuffer : AnyPtr -> PrimIO AnyPtr
  
  export
  onaddsourcebuffer :  Cast sourceBufferList SourceBufferList
                    => ToJS SourceBufferList
                    => (obj : sourceBufferList)
                    -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onaddsourcebuffer = v}"
  prim__setOnaddsourcebuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnaddsourcebuffer :  Cast eventHandler EventHandler
                       => ToJS EventHandler
                       => Cast sourceBufferList SourceBufferList
                       => ToJS SourceBufferList
                       => (obj : sourceBufferList)
                       -> (v : eventHandler)
                       -> IO ()
  
  %foreign "browser:lambda:x=>x.onremovesourcebuffer"
  prim__onremovesourcebuffer : AnyPtr -> PrimIO AnyPtr
  
  export
  onremovesourcebuffer :  Cast sourceBufferList SourceBufferList
                       => ToJS SourceBufferList
                       => (obj : sourceBufferList)
                       -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onremovesourcebuffer = v}"
  prim__setOnremovesourcebuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnremovesourcebuffer :  Cast eventHandler EventHandler
                          => ToJS EventHandler
                          => Cast sourceBufferList SourceBufferList
                          => ToJS SourceBufferList
                          => (obj : sourceBufferList)
                          -> (v : eventHandler)
                          -> IO ()





--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast MediaSource EventTarget where
  cast = believe_me

export
Cast SourceBuffer EventTarget where
  cast = believe_me

export
Cast SourceBufferList EventTarget where
  cast = believe_me