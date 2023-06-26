module Web.Raw.HTMLMediaElement

import JS
import Web.Types.Animatable
import Web.Types.AudioTrackList
import Web.Types.Blob
import Web.Types.CanPlayTypeResult
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLMediaElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.MediaError
import Web.Types.MediaSource
import Web.Types.MediaStream
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable
import Web.Types.TextTrack
import Web.Types.TextTrackKind
import Web.Types.TextTrackList
import Web.Types.TimeRanges
import Web.Types.VideoTrackList


%default total


export
HAVE_CURRENT_DATA : Bits16
HAVE_CURRENT_DATA = 2


export
HAVE_ENOUGH_DATA : Bits16
HAVE_ENOUGH_DATA = 4


export
HAVE_FUTURE_DATA : Bits16
HAVE_FUTURE_DATA = 3


export
HAVE_METADATA : Bits16
HAVE_METADATA = 1


export
HAVE_NOTHING : Bits16
HAVE_NOTHING = 0


export
NETWORK_EMPTY : Bits16
NETWORK_EMPTY = 0


export
NETWORK_IDLE : Bits16
NETWORK_IDLE = 1


export
NETWORK_LOADING : Bits16
NETWORK_LOADING = 2


export
NETWORK_NO_SOURCE : Bits16
NETWORK_NO_SOURCE = 3


export
%foreign "browser:lambda:x=>x.audioTracks"
prim__audioTracks : HTMLMediaElement -> PrimIO AudioTrackList


export
%foreign "browser:lambda:x=>x.autoplay"
prim__autoplay : HTMLMediaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.autoplay = v}"
prim__setAutoplay : HTMLMediaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.buffered"
prim__buffered : HTMLMediaElement -> PrimIO TimeRanges


export
%foreign "browser:lambda:x=>x.controls"
prim__controls : HTMLMediaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.controls = v}"
prim__setControls : HTMLMediaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.crossOrigin"
prim__crossOrigin : HTMLMediaElement -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
prim__setCrossOrigin : HTMLMediaElement -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.currentSrc"
prim__currentSrc : HTMLMediaElement -> PrimIO String


export
%foreign "browser:lambda:x=>x.currentTime"
prim__currentTime : HTMLMediaElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
prim__setCurrentTime : HTMLMediaElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.defaultMuted"
prim__defaultMuted : HTMLMediaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.defaultMuted = v}"
prim__setDefaultMuted : HTMLMediaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.defaultPlaybackRate"
prim__defaultPlaybackRate : HTMLMediaElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.defaultPlaybackRate = v}"
prim__setDefaultPlaybackRate : HTMLMediaElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.duration"
prim__duration : HTMLMediaElement -> PrimIO Double


export
%foreign "browser:lambda:x=>x.ended"
prim__ended : HTMLMediaElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.error"
prim__error : HTMLMediaElement -> PrimIO (Nullable MediaError)


export
%foreign "browser:lambda:x=>x.loop"
prim__loop : HTMLMediaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.loop = v}"
prim__setLoop : HTMLMediaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.muted"
prim__muted : HTMLMediaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.muted = v}"
prim__setMuted : HTMLMediaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.networkState"
prim__networkState : HTMLMediaElement -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.paused"
prim__paused : HTMLMediaElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.playbackRate"
prim__playbackRate : HTMLMediaElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.playbackRate = v}"
prim__setPlaybackRate : HTMLMediaElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.played"
prim__played : HTMLMediaElement -> PrimIO TimeRanges


export
%foreign "browser:lambda:x=>x.preload"
prim__preload : HTMLMediaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.preload = v}"
prim__setPreload : HTMLMediaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.preservesPitch"
prim__preservesPitch : HTMLMediaElement -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.preservesPitch = v}"
prim__setPreservesPitch : HTMLMediaElement -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : HTMLMediaElement -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.seekable"
prim__seekable : HTMLMediaElement -> PrimIO TimeRanges


export
%foreign "browser:lambda:x=>x.seeking"
prim__seeking : HTMLMediaElement -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.src"
prim__src : HTMLMediaElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.src = v}"
prim__setSrc : HTMLMediaElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.srcObject"
prim__srcObject :
     HTMLMediaElement
  -> PrimIO (Nullable (Union3 MediaStream MediaSource Blob))



export
%foreign "browser:lambda:(x,v)=>{x.srcObject = v}"
prim__setSrcObject :
     HTMLMediaElement
  -> Nullable (Union3 MediaStream MediaSource Blob)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.textTracks"
prim__textTracks : HTMLMediaElement -> PrimIO TextTrackList


export
%foreign "browser:lambda:x=>x.videoTracks"
prim__videoTracks : HTMLMediaElement -> PrimIO VideoTrackList


export
%foreign "browser:lambda:x=>x.volume"
prim__volume : HTMLMediaElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.volume = v}"
prim__setVolume : HTMLMediaElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:(x,a,b,c)=>x.addTextTrack(a,b,c)"
prim__addTextTrack :
     HTMLMediaElement
  -> String
  -> UndefOr String
  -> UndefOr String
  -> PrimIO TextTrack


export
%foreign "browser:lambda:(x,a)=>x.canPlayType(a)"
prim__canPlayType : HTMLMediaElement -> String -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.fastSeek(a)"
prim__fastSeek : HTMLMediaElement -> Double -> PrimIO ()


export
%foreign "browser:lambda:x=>x.getStartDate()"
prim__getStartDate : HTMLMediaElement -> PrimIO Object


export
%foreign "browser:lambda:x=>x.load()"
prim__load : HTMLMediaElement -> PrimIO ()


export
%foreign "browser:lambda:x=>x.pause()"
prim__pause : HTMLMediaElement -> PrimIO ()


export
%foreign "browser:lambda:x=>x.play()"
prim__play : HTMLMediaElement -> PrimIO (Promise Undefined)


export
audioTracks :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> JSIO AudioTrackList
audioTracks a = primJS $ HTMLMediaElement.prim__audioTracks (cast a)


export
autoplay :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Bool
autoplay v = fromPrim
               "HTMLMediaElement.getautoplay"
               prim__autoplay
               prim__setAutoplay
               (cast {to = HTMLMediaElement} v)


export
buffered : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO TimeRanges
buffered a = primJS $ HTMLMediaElement.prim__buffered (cast a)


export
controls :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Bool
controls v = fromPrim
               "HTMLMediaElement.getcontrols"
               prim__controls
               prim__setControls
               (cast {to = HTMLMediaElement} v)


export
crossOrigin :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute False Maybe String
crossOrigin v = fromNullablePrim
                  "HTMLMediaElement.getcrossOrigin"
                  prim__crossOrigin
                  prim__setCrossOrigin
                  (cast {to = HTMLMediaElement} v)


export
currentSrc : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO String
currentSrc a = primJS $ HTMLMediaElement.prim__currentSrc (cast a)


export
currentTime :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Double
currentTime v = fromPrim
                  "HTMLMediaElement.getcurrentTime"
                  prim__currentTime
                  prim__setCurrentTime
                  (cast {to = HTMLMediaElement} v)


export
defaultMuted :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Bool
defaultMuted v = fromPrim
                   "HTMLMediaElement.getdefaultMuted"
                   prim__defaultMuted
                   prim__setDefaultMuted
                   (cast {to = HTMLMediaElement} v)


export
defaultPlaybackRate :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Double
defaultPlaybackRate v = fromPrim
                          "HTMLMediaElement.getdefaultPlaybackRate"
                          prim__defaultPlaybackRate
                          prim__setDefaultPlaybackRate
                          (cast {to = HTMLMediaElement} v)


export
duration : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Double
duration a = primJS $ HTMLMediaElement.prim__duration (cast a)


export
ended : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bool
ended a = tryJS "HTMLMediaElement.ended" $ HTMLMediaElement.prim__ended (cast a)


export
error :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> JSIO (Maybe MediaError)
error a = tryJS "HTMLMediaElement.error" $ HTMLMediaElement.prim__error (cast a)


export
loop : {auto _ : Cast t HTMLMediaElement} -> t -> Attribute True Prelude.id Bool
loop v = fromPrim
           "HTMLMediaElement.getloop"
           prim__loop
           prim__setLoop
           (cast {to = HTMLMediaElement} v)


export
muted :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Bool
muted v = fromPrim
            "HTMLMediaElement.getmuted"
            prim__muted
            prim__setMuted
            (cast {to = HTMLMediaElement} v)


export
networkState : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bits16
networkState a = primJS $ HTMLMediaElement.prim__networkState (cast a)


export
paused : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bool
paused a = tryJS "HTMLMediaElement.paused" $
  HTMLMediaElement.prim__paused (cast a)


export
playbackRate :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Double
playbackRate v = fromPrim
                   "HTMLMediaElement.getplaybackRate"
                   prim__playbackRate
                   prim__setPlaybackRate
                   (cast {to = HTMLMediaElement} v)


export
played : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO TimeRanges
played a = primJS $ HTMLMediaElement.prim__played (cast a)


export
preload :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id String
preload v = fromPrim
              "HTMLMediaElement.getpreload"
              prim__preload
              prim__setPreload
              (cast {to = HTMLMediaElement} v)


export
preservesPitch :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Bool
preservesPitch v = fromPrim
                     "HTMLMediaElement.getpreservesPitch"
                     prim__preservesPitch
                     prim__setPreservesPitch
                     (cast {to = HTMLMediaElement} v)


export
readyState : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bits16
readyState a = primJS $ HTMLMediaElement.prim__readyState (cast a)


export
seekable : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO TimeRanges
seekable a = primJS $ HTMLMediaElement.prim__seekable (cast a)


export
seeking : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Bool
seeking a = tryJS "HTMLMediaElement.seeking" $
  HTMLMediaElement.prim__seeking (cast a)


export
src :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id String
src v = fromPrim
          "HTMLMediaElement.getsrc"
          prim__src
          prim__setSrc
          (cast {to = HTMLMediaElement} v)


export
srcObject :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute False Maybe (HSum [MediaStream, MediaSource, Blob])
srcObject v = fromNullablePrim
                "HTMLMediaElement.getsrcObject"
                prim__srcObject
                prim__setSrcObject
                (cast {to = HTMLMediaElement} v)


export
textTracks :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> JSIO TextTrackList
textTracks a = primJS $ HTMLMediaElement.prim__textTracks (cast a)


export
videoTracks :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> JSIO VideoTrackList
videoTracks a = primJS $ HTMLMediaElement.prim__videoTracks (cast a)


export
volume :
     {auto _ : Cast t HTMLMediaElement}
  -> t
  -> Attribute True Prelude.id Double
volume v = fromPrim
             "HTMLMediaElement.getvolume"
             prim__volume
             prim__setVolume
             (cast {to = HTMLMediaElement} v)


export
addTextTrack' :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> (kind : TextTrackKind)
  -> (label : Optional String)
  -> (language : Optional String)
  -> JSIO TextTrack
addTextTrack' a b c d = primJS $
  HTMLMediaElement.prim__addTextTrack (cast a) (toFFI b) (toFFI c) (toFFI d)

export
addTextTrack :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> (kind : TextTrackKind)
  -> JSIO TextTrack
addTextTrack a b = primJS $
  HTMLMediaElement.prim__addTextTrack (cast a) (toFFI b) undef undef


export
canPlayType :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> (type : String)
  -> JSIO CanPlayTypeResult
canPlayType a b = tryJS "HTMLMediaElement.canPlayType" $
  HTMLMediaElement.prim__canPlayType (cast a) b


export
fastSeek :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> (time : Double)
  -> JSIO ()
fastSeek a b = primJS $ HTMLMediaElement.prim__fastSeek (cast a) b


export
getStartDate : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO Object
getStartDate a = primJS $ HTMLMediaElement.prim__getStartDate (cast a)


export
load : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO ()
load a = primJS $ HTMLMediaElement.prim__load (cast a)


export
pause : {auto _ : Cast t1 HTMLMediaElement} -> (obj : t1) -> JSIO ()
pause a = primJS $ HTMLMediaElement.prim__pause (cast a)


export
play :
     {auto _ : Cast t1 HTMLMediaElement}
  -> (obj : t1)
  -> JSIO (Promise Undefined)
play a = primJS $ HTMLMediaElement.prim__play (cast a)

