module Web.Raw.SourceBuffer

import JS
import Web.Types.AppendMode
import Web.Types.AudioTrackList
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.SourceBuffer
import Web.Types.TextTrackList
import Web.Types.TimeRanges
import Web.Types.VideoTrackList


%default total


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
prim__mode : SourceBuffer -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.mode = v}"
prim__setMode : SourceBuffer -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onabort"
prim__onabort : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onabort = v}"
prim__setOnabort : SourceBuffer -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror : SourceBuffer -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onupdate"
prim__onupdate : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onupdate = v}"
prim__setOnupdate : SourceBuffer -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onupdateend"
prim__onupdateend : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onupdateend = v}"
prim__setOnupdateend : SourceBuffer -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onupdatestart"
prim__onupdatestart : SourceBuffer -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onupdatestart = v}"
prim__setOnupdatestart :
     SourceBuffer
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



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
%foreign "browser:lambda:x=>x.abort()"
prim__abort : SourceBuffer -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.appendBuffer(a)"
prim__appendBuffer :
     SourceBuffer
  -> Union11
       Int8Array
       Int16Array
       Int32Array
       UInt8Array
       UInt8Array
       UInt8Array
       UInt8ClampedArray
       Float32Array
       Float64Array
       DataView
       ArrayBuffer
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.remove(a,b)"
prim__remove : SourceBuffer -> Double -> Double -> PrimIO ()


export
appendWindowEnd : SourceBuffer -> Attribute True Prelude.id Double
appendWindowEnd v = fromPrim
                      "SourceBuffer.getappendWindowEnd"
                      prim__appendWindowEnd
                      prim__setAppendWindowEnd
                      v


export
appendWindowStart : SourceBuffer -> Attribute True Prelude.id Double
appendWindowStart v = fromPrim
                        "SourceBuffer.getappendWindowStart"
                        prim__appendWindowStart
                        prim__setAppendWindowStart
                        v


export
audioTracks : (obj : SourceBuffer) -> JSIO AudioTrackList
audioTracks a = primJS $ SourceBuffer.prim__audioTracks a


export
buffered : (obj : SourceBuffer) -> JSIO TimeRanges
buffered a = primJS $ SourceBuffer.prim__buffered a


export
mode : SourceBuffer -> Attribute True Prelude.id AppendMode
mode v = fromPrim "SourceBuffer.getmode" prim__mode prim__setMode v


export
onabort : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
onabort v = fromNullablePrim
              "SourceBuffer.getonabort"
              prim__onabort
              prim__setOnabort
              v


export
onerror : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
onerror v = fromNullablePrim
              "SourceBuffer.getonerror"
              prim__onerror
              prim__setOnerror
              v


export
onupdate : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
onupdate v = fromNullablePrim
               "SourceBuffer.getonupdate"
               prim__onupdate
               prim__setOnupdate
               v


export
onupdateend : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
onupdateend v = fromNullablePrim
                  "SourceBuffer.getonupdateend"
                  prim__onupdateend
                  prim__setOnupdateend
                  v


export
onupdatestart : SourceBuffer -> Attribute False Maybe EventHandlerNonNull
onupdatestart v = fromNullablePrim
                    "SourceBuffer.getonupdatestart"
                    prim__onupdatestart
                    prim__setOnupdatestart
                    v


export
textTracks : (obj : SourceBuffer) -> JSIO TextTrackList
textTracks a = primJS $ SourceBuffer.prim__textTracks a


export
timestampOffset : SourceBuffer -> Attribute True Prelude.id Double
timestampOffset v = fromPrim
                      "SourceBuffer.gettimestampOffset"
                      prim__timestampOffset
                      prim__setTimestampOffset
                      v


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
appendBuffer :
     (obj : SourceBuffer)
  -> (data_ : HSum
                [ Int8Array
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

