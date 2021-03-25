module Web.Mediasource

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaSource
  
  %foreign "browser:lambda:x=>x.activeSourceBuffers"
  prim__activeSourceBuffers : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sourceBuffers"
  prim__sourceBuffers : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.duration = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onsourceclose"
  prim__onsourceclose : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onsourceclose = v}"
  prim__setOnsourceclose : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onsourceended"
  prim__onsourceended : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onsourceended = v}"
  prim__setOnsourceended : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onsourceopen"
  prim__onsourceopen : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onsourceopen = v}"
  prim__setOnsourceopen : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SourceBuffer
  
  %foreign "browser:lambda:x=>x.audioTracks"
  prim__audioTracks : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.buffered"
  prim__buffered : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.textTracks"
  prim__textTracks : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.updating"
  prim__updating : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.videoTracks"
  prim__videoTracks : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.appendWindowEnd"
  prim__appendWindowEnd : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.appendWindowEnd = v}"
  prim__setAppendWindowEnd : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.appendWindowStart"
  prim__appendWindowStart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.appendWindowStart = v}"
  prim__setAppendWindowStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onupdate"
  prim__onupdate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onupdate = v}"
  prim__setOnupdate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onupdateend"
  prim__onupdateend : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onupdateend = v}"
  prim__setOnupdateend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onupdatestart"
  prim__onupdatestart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onupdatestart = v}"
  prim__setOnupdatestart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.timestampOffset"
  prim__timestampOffset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.timestampOffset = v}"
  prim__setTimestampOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SourceBufferList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onaddsourcebuffer"
  prim__onaddsourcebuffer : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onaddsourcebuffer = v}"
  prim__setOnaddsourcebuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onremovesourcebuffer"
  prim__onremovesourcebuffer : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onremovesourcebuffer = v}"
  prim__setOnremovesourcebuffer : AnyPtr -> AnyPtr -> PrimIO AnyPtr





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